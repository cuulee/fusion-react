ARG BASE_IMAGE=uber/web-base-image:2.0.0
FROM $BASE_IMAGE

WORKDIR /fusion-react

COPY . .

RUN yarn

RUN yarn --ignore-scripts run build-test
