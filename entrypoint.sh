#!/bin/sh

lint() {
    if [ $INPUT_CONFIG_FILE != "" ]; then
        configFile="--config $INPUT_CONFIG_FILE"
    fi
    textlint --plugin review --preset preset-ja-technical-writing ${configFile} $INPUT_WORKDIR
    return $?
}
if [ $INPUT_SILENT != "true" ]; then
    lint
    exit $?
fi

lint > res.log || EXIT_CODE=$?
echo ::set-output name=result_logs::$(cat res.log)
echo ::set-output name=exit_code::${EXIT_CODE}
