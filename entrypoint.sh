#!/bin/sh

lint() {
    if [ $INPUT_CONFIG_FILE != "" ]; then
        configFile="--config $INPUT_CONFIG_FILE"
    fi
    textlint --plugin review --preset preset-ja-technical-writing ${configFile} $INPUT_TARGET
    return $?
}

lint > res.log || EXIT_CODE=$?
cat res.log
echo ::set-output name=result_logs::$(cat res.log)
return ${EXIT_CODE}
