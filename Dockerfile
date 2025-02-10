FROM n8nio/n8n
USER root

RUN apk add --update gcc python3 py3-pip build-base python3-dev curl jq
RUN python3 -m pip install --upgrade pip

# Install common packages
RUN python3 -m pip install requests pandas sqlalchemy psycopg2-binary

# Install Livekit and related dependencies
RUN python3 -m pip install "livekit>=0.19.1" "livekit-agents>=0.12.11" "livekit-plugins-openai>=0.10.17" "python-dotenv~=1.0"

USER node
