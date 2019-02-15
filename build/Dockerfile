FROM node:6-jessie-slim

RUN apt-get update && \
    apt-get -y install git curl && \
    apt-get clean all && \
    wget -O /tmp/tini.deb https://github.com/krallin/tini/releases/download/v0.18.0/tini_0.18.0-amd64.deb && \
    dpkg -i /tmp/tini.deb && \
    useradd -m sharelock && \
    npm install dotenv \
                bunyan \
                express \
                serve-favicon \
                cookie-parser \
                express-session \
                passport \
                swig \
                passport-auth0 \
                base64url \
                cryptiles

EXPOSE 3000

# Start-up scripts
ADD entrypoint.sh /entrypoint.sh
RUN chown root:root /entrypoint.sh && \
    chmod 755 /entrypoint.sh

USER sharelock
RUN cd $HOME && git clone https://github.com/auth0/sharelock.git

ENTRYPOINT ["/usr/bin/tini", "--", "/entrypoint.sh"]

HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1

LABEL MAINTAINER="Sam Siu <23556929+ssiuhk@users.noreply.github.com>"

