# Textlint GitHub Action

The GitHub Action to use textlint.

**Note:** This action uses Docker, runs on only Linux.

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

default: `"./*.txt"`

### config_file

Locates textlintrc.\* file.

default: `""`

## OUTPUT

### result_logs

The result logs of textlint

## FAQ

### Why did you choose that plugin/preset/filter?

For my purpose.
(To write knowledge articles in Japanese)

### I want to install some cool plugin/preset/filter?

Fork this repo and use it own.

### I don't want to install this plugin, please remove it.

Fork this repo and use it own.
I make this repo for my purpose, not your purpose.

### How do I use this action with other action? This action stops the workflow.

Use [jobs.<job_id>.steps.continue-on-error](https://help.github.com/ja/articles/workflow-syntax-for-github-actions#jobsjob_idstepscontinue-on-error).
