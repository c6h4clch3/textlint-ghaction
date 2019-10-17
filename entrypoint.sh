#!/bin/sh

lint() {
    if [ "$INPUT_CONFIG_FILE" != "" ]; then
        configFile="--config $INPUT_CONFIG_FILE"
    fi
    textlint --plugin review --preset preset-ja-technical-writing ${configFile} $1 $INPUT_TARGET
    return $?
}

if [ "$INPUT_USE_REVIEWDOG" != "" ] && [ "$INPUT_GITHUB_TOKEN" != "" ]; then
    lint "--format checkstyle" > res.log
    cat res.log | \
    REVIEWDOG_GITHUB_API_TOKEN=$INPUT_GITHUB_TOKEN \
    reviewdog -f checkstyle --reporter=github-pr-check \
    -diff='git --no-pager diff origin/master' \
    -name=textlint
fi

lint
