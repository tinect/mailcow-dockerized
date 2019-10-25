workflow "EditorConfig Audit" {
  resolves = ["EditorConfig-Action"]
  on = "push"
}

action "EditorConfig-Action" {
  uses = "zbeekman/EditorConfig-Action@v1.1.0"
  env = {
    EC_FIX_ERRORS = "false" # not yet implemented
    ALWAYS_LINT_ALL_FILES = "true"
  }
}
