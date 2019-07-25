FROM didstopia/base:nodejs-alpine-3.10

VOLUME ["/app"]

WORKDIR /app

USER root

RUN sudo npm install -g screeps@3.4.0
# RUN apk --no-cache add \
#     git && \
#     git clone --branch v3.4.0 --depth 1 https://github.com/screeps/screeps.git /app && \
#     npm install

ENV DB_PATH=/app/db.json
ENV ASSET_DIR=/app/assets 
ENV MODFILE=/app/mods.json
ENV GAME_PORT=21025
ENV GAME_HOST=0.0.0.0
ENV CLI_PORT=21026
ENV CLI_HOST=0.0.0.0
ENV STORAGE_PORT=21027
ENV STORAGE_HOST=localhost
ENV DRIVER_MODULE="@screeps/driver"

EXPOSE 21025

#ENTRYPOINT ["/usr/bin/node", "/app/bin/screeps.js"]
ENTRYPOINT ["/usr/bin/screeps"]
CMD ["start"]
