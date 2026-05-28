FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY main.py .
COPY start.sh .

# Make startup script executable
RUN chmod +x start.sh

# Expose the port (for documentation purposes)
EXPOSE 8080

# Set environment variable
ENV PORT=8080

# Run the application using the startup script
CMD ["./start.sh"]
