FROM mysql:9.0

# Copy the SQL script to the Docker container
COPY init.sql /docker-entrypoint-initdb.d/