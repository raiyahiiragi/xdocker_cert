FROM almalinux:latest
RUN dnf -y install epel-release
RUN dnf -y install openssl certbot
