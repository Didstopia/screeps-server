FROM didstopia/base:nodejs-12-ubuntu-18.04

RUN npm install -g screeps@4.2.5 --unsafe
WORKDIR /app

VOLUME [ "/app" ]

EXPOSE 21025
EXPOSE 21026

HEALTHCHECK CMD netstat -an | grep 21025 > /dev/null; if [ 0 != $? ]; then exit 1; fi;

ENTRYPOINT [ "/usr/bin/screeps" ]
CMD ["start"]
