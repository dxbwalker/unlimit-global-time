# Use NGINX as the base image
FROM nginx:alpine

# Remove default config and copy custom HTML
COPY index.html /usr/share/nginx/html/index.html

# Expose port
EXPOSE 8284

# Override default NGINX config to listen on port 8284
RUN sed -i 's/listen       80;/listen       8284;/g' /etc/nginx/conf.d/default.conf

