FROM node

ENV NPM_CONFIG_LOGLEVEL warn
ARG app_env
ENV APP_ENV $app_env

RUN mkdir -p /website
WORKDIR /website
COPY ./ ./

RUN yarn install

CMD if [ ${APP_ENV} = production]; \
        then \
        yarn add http-server && \
        yarn build:production && \
        cd build && \
        hs -p 3000; \
        else \
        yarn start; \
        fi

EXPOSE 3000