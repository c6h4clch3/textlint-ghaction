FROM c6h4clch3/reviewdog-builder:latest

RUN apk update && apk add npm
RUN set -x && \
  npm install -g textlint@11.3.1 \
  textlint-rule-preset-ja-technical-writing@3.1.3 \
  textlint-filter-rule-comments@1.2.2 \
  textlint-plugin-review@0.3.3 && \
  npm cache clean --force
