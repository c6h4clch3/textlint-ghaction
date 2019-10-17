# Textlint GitHub Action

The GitHub Action to use textlint.

**Note:** This action uses Docker, runs on only Linux.

## Plugins

### plugins

- textlint-plugin-review
- textlint-rule-max-ten
- textlint-rule-no-double-negative-ja
- textlint-rule-ja-no-redundant-expression
- textlint-rule-ja-no-abusage
- textlint-rule-no-mixed-zenkaku-and-hankaku-alphabet
- textlint-rule-no-dropping-the-ra
- textlint-rule-no-doubled-conjunctive-particle-ga
- textlint-rule-ja-no-mixed-period
- textlint-rule-incremental-headers
- textlint-rule-ja-hiragana-keishikimeishi
- textlint-rule-ja-hiragana-fukushi
- textlint-rule-ja-hiragana-hojodoushi
- textlint-rule-ja-unnatural-alphabet
- @textlint-ja/textlint-rule-no-insert-dropping-sa
- textlint-rule-prefer-tari-tari
- textlint-rule-general-novel-style-ja

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

### use_reviewdog

if `"true"`, the result will be notified with reviewdog.
It is Also needed input.github_token set to use.

default: `""`

### github_token

GitHub API tokens, used to notify the result with reviewdog.

default: `""`

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
