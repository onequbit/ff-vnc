
FROM    ubuntu:latest
ARG     password
ENV     password $password

RUN     apt-get update

RUN     apt-get install -y x11vnc xvfb firefox
RUN     mkdir ~/.vnc
RUN     x11vnc -storepasswd $password ~/.vnc/passwd
RUN     bash -c 'echo "firefox" >> /.bashrc'

# sudo docker build -t ff-vnc --build-arg password=clever_password .

# sudo docker run -p 5900:5900 -e HOME=/ ff-vnc x11vnc -forever -create

# gvncviewer localhost:0

# 