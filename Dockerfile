FROM smartentry/debian:10-0.4.4

ADD .docker $ASSETS_DIR

RUN smartentry.sh build

EXPOSE 22 80 443
