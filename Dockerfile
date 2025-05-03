# Use a minimal Python base image
FROM python:3.10-slim

# Set working directory in the container
WORKDIR /app

# Install required system dependencies for OpenCV
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Copy only requirements first for caching benefits
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app files
COPY . .

# Expose the default Streamlit port (8501)
EXPOSE 8501

# Set environment variable to prevent Streamlit from opening a browser
ENV STREAMLIT_BROWSER_GATHER_USAGE_STATS=false

# Define the command to run Streamlit
CMD ["streamlit", "run", "raahul_seai.py", "--server.port=8501", "--server.address=0.0.0.0", "--browser.serverAddress=localhost"]
