variable "workspaces" {
  description = <<EOT
Map of workspaces, attributes below
Required:
    - name
Optional:
    - agent_pool_id
    - allow_destroy_plan
    - assessments_enabled
    - auto_apply
    - auto_apply_run_trigger
    - auto_destroy_activity_duration
    - auto_destroy_at
    - description
    - execution_mode
    - file_triggers_enabled
    - force_delete
    - global_remote_state
    - ignore_additional_tag_names
    - ignore_additional_tags
    - operations
    - organization
    - project_id
    - queue_all_runs
    - remote_state_consumer_ids
    - source_name
    - source_url
    - speculative_enabled
    - ssh_key_id
    - structured_run_output_enabled
    - tag_names
    - tags
    - terraform_version
    - trigger_patterns
    - trigger_prefixes
    - working_directory
    - vcs_repo (block):
        - branch (optional)
        - github_app_installation_id (optional)
        - identifier (required)
        - ingress_submodules (optional)
        - oauth_token_id (optional)
        - tags_regex (optional)
EOT

  type = map(object({
    name                           = string
    agent_pool_id                  = optional(string)
    allow_destroy_plan             = optional(bool)
    assessments_enabled            = optional(bool)
    auto_apply                     = optional(bool)
    auto_apply_run_trigger         = optional(bool)
    auto_destroy_activity_duration = optional(string)
    auto_destroy_at                = optional(string)
    description                    = optional(string)
    execution_mode                 = optional(string)
    file_triggers_enabled          = optional(bool)
    force_delete                   = optional(bool)
    global_remote_state            = optional(bool)
    ignore_additional_tag_names    = optional(bool)
    ignore_additional_tags         = optional(bool)
    operations                     = optional(bool)
    organization                   = optional(string)
    project_id                     = optional(string)
    queue_all_runs                 = optional(bool)
    remote_state_consumer_ids      = optional(set(string))
    source_name                    = optional(string)
    source_url                     = optional(string)
    speculative_enabled            = optional(bool)
    ssh_key_id                     = optional(string)
    structured_run_output_enabled  = optional(bool)
    tag_names                      = optional(set(string))
    tags                           = optional(map(string))
    terraform_version              = optional(string)
    trigger_patterns               = optional(list(string))
    trigger_prefixes               = optional(list(string))
    working_directory              = optional(string)
    vcs_repo = optional(object({
      branch                     = optional(string)
      github_app_installation_id = optional(string)
      identifier                 = string
      ingress_submodules         = optional(bool)
      oauth_token_id             = optional(string)
      tags_regex                 = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.workspaces : (
        v.auto_destroy_activity_duration == null || (can(regex("^\\d{1,4}[dh]$", v.auto_destroy_activity_duration)))
      )
    ])
    error_message = "must be 1-4 digits followed by d or h"
  }
  validation {
    condition = alltrue([
      for k, v in var.workspaces : (
        v.execution_mode == null || (contains(["agent", "local", "remote"], v.execution_mode))
      )
    ])
    error_message = "must be one of: \"agent\", \"local\", \"remote\""
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

