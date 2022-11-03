FROM verdaccio/verdaccio

USER root

ENV NODE_ENV=production

RUN yarn install
RUN yarn add verdaccio-github-oauth-ui verdaccio-azure-ad-login
COPY config.yaml /verdaccio/conf
USER verdaccio
