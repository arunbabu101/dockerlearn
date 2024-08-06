FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set work directory
WORKDIR /usr/src/app

# Install PostgreSQL development package
RUN apt-get update && \
    apt-get install -y libpq-dev gcc
    
# Install dependencies
COPY requirements.txt /usr/src/app/
RUN pip install -r requirements.txt

# Copy project
COPY . /usr/src/app/

# Run the application
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "edureka.wsgi:application"]