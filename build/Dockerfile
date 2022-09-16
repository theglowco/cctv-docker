FROM alpine:latest
RUN apk add vlc
RUN adduser --disabled-password streamer
WORKDIR /home/streamer
COPY start.sh .
RUN chmod +x start.sh
USER streamer
COPY index.html .
ENTRYPOINT [ "/home/streamer/start.sh" ]