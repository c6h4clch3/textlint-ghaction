#!/bin/sh -l

lint() {
    if [ $INPUT_CONFIGFILE -eq "" ]; then
        configFile="--config $INPUT_CONFIGFILE"
    fi
    textlint --plugin review --preset preset-ja-technical-writing ${configFile} $INPUT_WORKDIR
    return $?
}
if [ $INPUT_SILENT -ne "true" ]; then
    lint
    return $?
fi

lint > res.log || EXIT_CODE=$?
echo ::set-output name=result_logs:: $(cat res.log)
echo ::set-output name=exit_code:: ${EXIT_CODE}
