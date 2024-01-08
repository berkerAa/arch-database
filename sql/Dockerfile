FROM postgres:latest

# Copy the custom configuration file
COPY ./config/postgresql.conf /etc/postgresql/postgresql.conf

# Set the default config file environment variable
ENV POSTGRES_CONFIG_FILE /etc/postgresql/postgresql.conf

# The environment variables will be passed at runtime from the .env file

EXPOSE 5432
