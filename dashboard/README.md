# Dashboard Docker Setup

This directory contains a Dockerized version of the offers dashboard application that includes both the React frontend and Node.js backend server.

## Architecture

The Docker image uses a multi-stage build process:
1. **Frontend Build Stage**: Builds the React application into optimized static files
2. **Production Stage**: Runs the Node.js server which serves both the API endpoints and the static frontend files

## Building the Image

From the `dashboard` directory, run:

```bash
docker build -t offers-dashboard .
```

## Running the Container

### Basic Run

```bash
docker run -p 3001:3001 \
  -e DB_HOST=your_db_host \
  -e DB_PORT=5432 \
  -e DB_NAME=bitblik \
  -e DB_USER=postgres \
  -e DB_PASSWORD=your_password \
  offers-dashboard
```

### Using Environment File

Create a `.env` file with your database configuration:

```env
DB_HOST=localhost
DB_PORT=5432
DB_NAME=bitblik
DB_USER=postgres
DB_PASSWORD=your_password
```

Then run:

```bash
docker run -p 3001:3001 --env-file .env offers-dashboard
```

### With Docker Compose

Add this service to your `docker-compose.yml`:

```yaml
services:
  dashboard:
    build: ./dashboard
    ports:
      - "3001:3001"
    environment:
      - DB_HOST=postgres
      - DB_PORT=5432
      - DB_NAME=bitblik
      - DB_USER=postgres
      - DB_PASSWORD=${DB_PASSWORD}
    depends_on:
      - postgres
```

## Accessing the Application

Once running, access the dashboard at:
- **Frontend**: http://localhost:3001
- **API Endpoints**: http://localhost:3001/api/*

## Port Configuration

The default port is 3001, but you can override it:

```bash
docker run -p 8080:8080 \
  -e PORT=8080 \
  -e DB_HOST=your_db_host \
  # ... other env vars
  offers-dashboard
```

## Development vs Production

This Dockerfile is optimized for production use. For development:
- Run the frontend with `npm start` in the `frontend` directory (hot reload on port 3000)
- Run the backend with `node server.js` in the `dashboard` directory (API on port 3001)

## Troubleshooting

### Cannot connect to database
- Ensure the `DB_HOST` is accessible from within the container
- If using `localhost`, it refers to the container, not your host machine
- Use `host.docker.internal` (Mac/Windows) or the actual host IP for local development

### Frontend not loading
- Check that the build completed successfully in the Docker logs
- Verify the `frontend/build` directory exists in the container
- Check server logs for any errors serving static files
