resource "tfe_workspace" "workspaces" {
  for_each = var.workspaces

  name                           = each.value.name
  agent_pool_id                  = each.value.agent_pool_id
  allow_destroy_plan             = each.value.allow_destroy_plan
  assessments_enabled            = each.value.assessments_enabled
  auto_apply                     = each.value.auto_apply
  auto_apply_run_trigger         = each.value.auto_apply_run_trigger
  auto_destroy_activity_duration = each.value.auto_destroy_activity_duration
  auto_destroy_at                = each.value.auto_destroy_at
  description                    = each.value.description
  execution_mode                 = each.value.execution_mode
  file_triggers_enabled          = each.value.file_triggers_enabled
  force_delete                   = each.value.force_delete
  global_remote_state            = each.value.global_remote_state
  ignore_additional_tag_names    = each.value.ignore_additional_tag_names
  ignore_additional_tags         = each.value.ignore_additional_tags
  operations                     = each.value.operations
  organization                   = each.value.organization
  project_id                     = each.value.project_id
  queue_all_runs                 = each.value.queue_all_runs
  remote_state_consumer_ids      = each.value.remote_state_consumer_ids
  source_name                    = each.value.source_name
  source_url                     = each.value.source_url
  speculative_enabled            = each.value.speculative_enabled
  ssh_key_id                     = each.value.ssh_key_id
  structured_run_output_enabled  = each.value.structured_run_output_enabled
  tag_names                      = each.value.tag_names
  tags                           = each.value.tags
  terraform_version              = each.value.terraform_version
  trigger_patterns               = each.value.trigger_patterns
  trigger_prefixes               = each.value.trigger_prefixes
  working_directory              = each.value.working_directory

  dynamic "vcs_repo" {
    for_each = each.value.vcs_repo != null ? [each.value.vcs_repo] : []
    content {
      branch                     = vcs_repo.value.branch
      github_app_installation_id = vcs_repo.value.github_app_installation_id
      identifier                 = vcs_repo.value.identifier
      ingress_submodules         = vcs_repo.value.ingress_submodules
      oauth_token_id             = vcs_repo.value.oauth_token_id
      tags_regex                 = vcs_repo.value.tags_regex
    }
  }
}

