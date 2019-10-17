FROM c6h4clch3/textlint-ghaction-builder:latest

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
