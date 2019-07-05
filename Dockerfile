FROM node:10

RUN apt-get update \
	&& apt-get install -y chromium

CMD [ "bin/bash"]
