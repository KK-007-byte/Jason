# Step 1: Use Python base image
FROM python:3.11-slim

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Step 4: Copy the rest of the project files
COPY . .

# Step 5: Expose the app's port (change if your script uses a different one)
EXPOSE 5000

# Step 6: Command to run the script
CMD ["python", "stocks_upgrade.py"]
