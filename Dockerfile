FROM n8nio/n8n
USER root

RUN apk add --update gcc python3 py3-pip build-base python3-dev curl jq
RUN python3 -m pip install --upgrade pip

# Install common packages
RUN python3 -m pip install requests pandas sqlalchemy psycopg2-binary

# Install Livekit and related dependencies
USER node
