FROM ubuntu:22.04
# RUN sudo docker run -d
WORKDIR /src
COPY ./html_my/index.html /src/index.html
CMD ["sudo", "docker", "run", "-d", "-p", "5555:80", "-v", "$(pwd)/src:/usr/share/nginx/html", "nginx", "--host", "0.0.0.0", "--port", "5555"]
# CMD ["-p", "5555:80", "-v", "$(pwd)/src:/usr/share/nginx/html", "nginx", "--host", "0.0.0.0", "--port", "5555"]