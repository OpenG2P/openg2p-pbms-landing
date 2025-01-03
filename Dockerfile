FROM nginx:latest

# Copy the HTML file with the placeholder
COPY ./html/pbms-landing.html /usr/share/nginx/html

# Copy the entrypoint script
COPY ./entrypoint.sh /entrypoint.sh

# Make the script executable
RUN chmod +x /entrypoint.sh

# Set environment variable for testing (can be overridden in deployment)
ENV PBMS_ADMIN_URL="https://admin.explore.openg2p.org"
ENV PBMS_REPORTING_URL="https://reporting.explore.openg2p.org"
ENV PBMS_LOGGING_URL="https://reporting.explore.openg2p.org"
ENV PBMS_MINIO_URL="https://minio.explore.openg2p.org"
ENV PBMS_ODK_URL="https://odk.explore.openg2p.org"
ENV PBMS_KAFKA_URL="https://kafka.explore.openg2p.org"
ENV PBMS_SUPERSET_URL="https://superset.explore.openg2p.org"

# Use the custom entrypoint
CMD ["/entrypoint.sh"]

