FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set work directory
WORKDIR /newmp

# Install PostgreSQL development package
RUN apt-get update && \
    apt-get install -y libpq-dev gcc


# Install dependencies
COPY requirements.txt /newmp
RUN pip install -r requirements.txt

# Copy project
COPY . /newmp

# Run the application
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "edureka.wsgi:application"]