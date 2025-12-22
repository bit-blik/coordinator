# Use the official Dart image.
#FROM dart:3.9.2-sdk AS build
FROM instrumentisto/flutter:3.38.5 AS build

WORKDIR /app

# Install Rust toolchain for building ndk_rust_verifier native library
RUN apt-get update && apt-get install -y wget curl build-essential
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# Copy the rest of the application code.
COPY . .

# Download simplex-chat
RUN wget https://github.com/simplex-chat/simplex-chat/releases/download/v6.4.0/simplex-chat-ubuntu-22_04-x86-64
RUN mv simplex-chat-ubuntu-22_04-x86-64 /app/simplex-chat
RUN chmod +x /app/simplex-chat

# Use flutter pub get to satisfy Flutter SDK dependencies
RUN flutter pub get

# Build the ndk_rust_verifier native library from pub cache
RUN cd /root/.pub-cache/hosted/pub.dev/ndk_rust_verifier-*/rust_builder/rust && \
    cargo build --release && \
    cp target/release/librust_lib_ndk.so /usr/local/lib/ && \
    ldconfig

# Compile the server executable.
# Ensure your main entrypoint is bin/server.dart
RUN APP_VERSION=$(grep 'version:' pubspec.yaml | awk '{print $2}') && \
    dart compile exe bin/server.dart -o bin/server --define=APP_VERSION=$APP_VERSION
# Build minimal serving image from AOT-compiled `/server` and required system
# libraries and configuration files stored in `/runtime/` from the build stage.

#FROM scratch
FROM alpine:latest
RUN apk add --no-cache zlib
RUN apk add --no-cache gmp
RUN apk add signal-cli=0.13.22-r0

RUN apk add --no-cache sqlite-libs libstdc++ libgcc

# Create symlinks for compatibility
RUN ln -s /usr/lib/libsqlite3.so.0 /usr/lib/libsqlite3.so

COPY --from=build /app/bin/server /app/bin/
COPY --from=build /app/simplex-chat /app/

# Copy the ndk_rust_verifier native library
COPY --from=build /usr/local/lib/librust_lib_ndk.so /usr/local/lib/


# Copy any necessary assets like .env files or certificates if needed
# COPY .env .env
# COPY tls.cert /app/tls.cert
# COPY admin.macaroon /app/admin.macaroon

WORKDIR /app

# Set library path for the native library
ENV LD_LIBRARY_PATH="/usr/local/lib"

# Expose the port the server listens on.
EXPOSE 8080

# Run the executable.
CMD ["/app/bin/server"]
