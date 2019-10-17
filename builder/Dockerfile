FROM c6h4clch3/reviewdog-builder:latest

RUN apk update && apk add npm
RUN set -x && \
  npm install -g textlint@11.3.1 \
  textlint-rule-preset-ja-technical-writing@3.1.3 \
  textlint-filter-rule-comments@1.2.2 \
  textlint-plugin-review@0.3.3 \
  textlint-rule-max-ten \
  textlint-rule-no-double-negative-ja \
  textlint-rule-ja-no-redundant-expression \
  textlint-rule-ja-no-abusage \
  textlint-rule-no-mixed-zenkaku-and-hankaku-alphabet \
  textlint-rule-no-dropping-the-ra \
  textlint-rule-no-doubled-conjunctive-particle-ga \
  textlint-rule-ja-no-mixed-period \
  textlint-rule-incremental-headers \
  textlint-rule-ja-hiragana-keishikimeishi \
  textlint-rule-ja-hiragana-fukushi \
  textlint-rule-ja-hiragana-hojodoushi \
  textlint-rule-ja-unnatural-alphabet \
  @textlint-ja/textlint-rule-no-insert-dropping-sa \
  textlint-rule-prefer-tari-tari \
  textlint-rule-general-novel-style-ja && \
  npm cache clean --force
