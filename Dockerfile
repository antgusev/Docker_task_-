FROM nginx:latest
WORKDIR /src
COPY ./html_my/index.html /usr/share/nginx/html
# CMD ["docker", "run", "-d", "--name", "task1_nginx", "-p", "8888:80", "-v", "$(pwd)/src:/usr/share/nginx/html", "nginx", "--host", "0.0.0.0", "--port", "8888"]
EXPOSE 8888
CMD ["run", "--name", "task1_nginx", "-d", "nginx", "--host", "0.0.0.0", "--port", "8888"]