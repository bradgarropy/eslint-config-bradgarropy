workflow "🚀 release" {
  on = "release"
  resolves = ["📦 npm publish"]
}

action "📦 npm publish" {
  uses = "actions/npm@master"
  secrets = ["NPM_AUTH_TOKEN"]
  args = "publish"
}
