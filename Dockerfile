FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache ffmpeg fontconfig ttf-dejavu

RUN mkdir -p /home/node/.n8n/temp && chmod 1777 /home/node/.n8n/temp && chown -R node:node /home/node/.n8n

USER node

EXPOSE 5678

CMD ["n8n"]
