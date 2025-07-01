FROM nginx:alpine

# Optional: clean default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy static site into Nginx's web directory
COPY . /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
