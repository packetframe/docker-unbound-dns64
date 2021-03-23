FROM debian:latest

RUN apt update && apt upgrade && apt install -y unbound

COPY unbound.conf .

CMD ["unbound", "-c", "unbound.conf"]
