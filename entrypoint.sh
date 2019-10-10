#!/bin/sh -l

if [ $INPUT_CONFIGFILE -eq "" ]; then
  configFile="--config $INPUT_CONFIGFILE"
fi

textlint --plugin review --preset preset-ja-technical-writing \
  ${configFile} $INPUT_WORKDIR > res.log || EXIT_CODE=$?
cat res.log
echo ::set-output name=textlint_result::$(cat res.log)
return ${EXIT_CODE}
