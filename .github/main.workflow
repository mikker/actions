workflow "Check changes" {
  on = "push"
  resolves = "lint"
}

workflow "On review" {
  on = "pull_request_review"
  resolves = "fixes"
}

action "lint" {
  needs = ["shellcheck", "hadolint", "shfmt", "mdlint"]
  uses = "actions/bin/sh@master"
  args = ["true"]
}

action "fixes" {
  needs = ["shfmt"]
  uses = "actions/bin/sh@master"
  args = ["true"]
}

action "shellcheck" {
  uses = "./shellcheck"
}

action "hadolint" {
  uses = "./hadolint"
}

action "shfmt" {
  uses = "./shfmt"
  secrets = ["GITHUB_TOKEN"]
}

action "mdlint" {
  uses = "./mdlint"
}