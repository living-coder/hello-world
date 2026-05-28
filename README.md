# Hello World Application

A simple Hello World web application built with FastAPI that returns a beautiful HTML response.

## Features

- ⚡ FastAPI web framework
- 🎨 Beautiful HTML response with modern styling
- 🚀 Easy to run and extend
- 📱 Responsive design
- 🐳 Docker support for containerized deployment

## Installation

1. Install the required dependencies:
```bash
pip install -r requirements.txt
```

## Running the Application

### Local Development

Run the application using:
```bash
python main.py
```

Or using uvicorn directly:
```bash
uvicorn main:app --reload
```

The application will be available at `http://localhost:8000`

### Using Docker

#### Build and Run with Docker

```bash
# Build the Docker image
docker build -t hello-world .

# Run the container
docker run -p 8000:8000 hello-world
```

#### Using Docker Compose (Recommended for Development)

```bash
# Start the application with hot-reload
docker-compose up

# Stop the application
docker-compose down
```

The application will be available at `http://localhost:8000`

## Project Structure

- `main.py` - Main FastAPI application file with the Hello World route
- `requirements.txt` - Python dependencies
- `Dockerfile` - Docker configuration for containerization
- `docker-compose.yml` - Docker Compose configuration for easy local development
- `.dockerignore` - Files to exclude from Docker build context
- `README.md` - This file

## Routes

- **GET `/`** - Returns a beautiful HTML page with a welcome message

## Docker Details

### Dockerfile

- **Base Image:** `python:3.11-slim` - Lightweight Python image
- **Port:** 8000 (exposed)
- **Command:** Runs the FastAPI app with Uvicorn

### Docker Compose

- Includes volume mounting for live code reloading during development
- Exposes port 8000
- Sets `PYTHONUNBUFFERED=1` for real-time log output
- Auto-rebuilds on file changes with `--reload` flag

## Extending the Application

To add more routes, simply add more decorated functions to `main.py`:

```python
@app.get("/about", response_class=HTMLResponse)
async def about():
    return "<h1>About Page</h1>"
```

After modifying files, if using Docker Compose, the app will automatically reload.

## Learn More

- [FastAPI Documentation](https://fastapi.tiangolo.com/)
- [Uvicorn Documentation](https://www.uvicorn.org/)
- [Docker Documentation](https://docs.docker.com/)
- [Docker Compose Documentation](https://docs.docker.com/compose/)