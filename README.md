# Textlint GitHub Action

The GitHub Action to use textlint.

## Plugins

### plugins

- textlint-plugin-review

### preset

- textlint-rule-preset-ja-technical-writing

### filter

- textlint-filter-rule-comments

## INPUT

### target

Target files of lint.

default: `./+.txt`

### config_file

Locates textlintrc.\* file.

default: ``

### silent

If `"true"`, set the exit code of step always 0 even though on error,
and the result logs and exit code of lint are passed to outputs.

default: "false"

#### Why is the exit code needed to set always 0?

To continue job to latter steps(ex. reviewdog).
When a step returns the exit code is not zero,
subsequential steps are forced to stop.

## OUTPUT

### result_logs

the result logs of textlint,
set when INPUTS_SILENT is true.

### exit_code

the exit code of textlint,
set when INPUTS_SILENT is true.

## FAQ

### Why did you choose that plugin/preset/filter?

For my purpose.
(To write knowledge articles in Japanese)

### I want to install some cool plugin/preset/filter?

Fork this repo and use it own.

### I don't want to install this plugin, please remove it.

Fork this repo and use it own.
I make this repo for my purpose, not your purpose.
