FROM alpine:3.10

RUN apk update && apk add nodejs && \
  npm install -g textlint@11.3.1 \
  textlint-rule-preset-ja-technical-writing@3.1.3 \
  textlint-filter-rule-comments@1.2.2 \
  textlint-plugin-review@0.3.3 && \
  npm cache clean --force

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
