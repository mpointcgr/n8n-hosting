FROM docker.n8n.io/n8nio/n8n:latest

USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n
USER node

ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV N8N_RUNNERS_ENABLED=true

VOLUME /home/node/.n8n
