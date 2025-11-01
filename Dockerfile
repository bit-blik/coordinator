# Use the official Dart image.
FROM dart:3.9.2-sdk AS build

WORKDIR /app

# Copy pubspec and get dependencies first for caching
#COPY pubspec.* ./

# Copy the rest of the application code.
COPY . .
RUN apt-get update && apt-get install -y wget
RUN wget https://github.com/simplex-chat/simplex-chat/releases/download/v6.4.0/simplex-chat-ubuntu-22_04-x86-64
RUN mv simplex-chat-ubuntu-22_04-x86-64 /app/simplex-chat
RUN chmod +x /app/simplex-chat

RUN dart pub get

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
RUN apk add signal-cli=0.13.20-r0

RUN apk add --no-cache sqlite-libs libstdc++
RUN ln -s /usr/lib/libsqlite3.so.0 /usr/lib/libsqlite3.so

COPY --from=build /runtime/ /
COPY --from=build /app/bin/server /app/bin/
COPY --from=build /app/simplex-chat /app/


# Copy any necessary assets like .env files or certificates if needed
# COPY .env .env
# COPY tls.cert /app/tls.cert
# COPY admin.macaroon /app/admin.macaroon

WORKDIR /app

# Expose the port the server listens on.
EXPOSE 8080

# Run the executable.
CMD ["/app/bin/server"]
