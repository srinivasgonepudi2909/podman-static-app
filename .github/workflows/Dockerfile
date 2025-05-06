FROM nginx:alpine

# Clean default Nginx web content
RUN rm -rf /usr/share/nginx/html/*

# Copy from your static folder to default Nginx path
COPY ./static /usr/share/nginx/html

EXPOSE 80
