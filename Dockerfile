FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

# Ensure the file is readable by nginx (which runs as non-root user)
RUN chmod 644 /usr/share/nginx/html/index.html

# Change NGINX to listen on port 8284
RUN sed -i 's/listen       80;/listen       8284;/g' /etc/nginx/conf.d/default.conf

EXPOSE 8284

