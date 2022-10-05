FROM alpine:latest
RUN apk add vlc
RUN adduser --disabled-password streamer
WORKDIR /home/streamer
COPY start.sh .
RUN chmod +x start.sh
USER streamer
RUN mkdir static
COPY ./html/* ./static/
ENTRYPOINT [ "/home/streamer/start.sh" ]