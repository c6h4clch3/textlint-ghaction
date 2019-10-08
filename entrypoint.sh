#!/bin/sh -l

if [ $INPUT_CONFIGFILE -eq "" ]; then
  configFile="--config $INPUT_CONFIGFILE"
fi

textlint --plugin review --preset preset-ja-technical-writing \
  ${configFile} $INPUT_WORKDIR > res.log
echo ::set-output name=textlint_result::$(cat res.log)
