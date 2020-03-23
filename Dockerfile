FROM rupakg/serverless-docker
LABEL maintainer="Javier Chacana <javier.chacana@codurance.com>, Lau Llobet <lau.llobet@codurance.com>"

RUN apt-get update
RUN npm cache clean -f && \
	npm install -g n && \
	n stable
RUN npm install -g serverless

