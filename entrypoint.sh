#!/bin/sh -l

textlint --plugin review --preset preset-ja-technical-writing \
  $INPUT_WORKDIR
