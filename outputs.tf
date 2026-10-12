output "workspaces_id" {
  description = "Map of id values across all workspaces, keyed the same as var.workspaces except keys with no id are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workspaces_agent_pool_id" {
  description = "Map of agent_pool_id values across all workspaces, keyed the same as var.workspaces except keys with no agent_pool_id are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.agent_pool_id if v.agent_pool_id != null && length(v.agent_pool_id) > 0 }
}
output "workspaces_allow_destroy_plan" {
  description = "Map of allow_destroy_plan values across all workspaces, keyed the same as var.workspaces except keys with no allow_destroy_plan are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.allow_destroy_plan if v.allow_destroy_plan != null }
}
output "workspaces_assessments_enabled" {
  description = "Map of assessments_enabled values across all workspaces, keyed the same as var.workspaces except keys with no assessments_enabled are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.assessments_enabled if v.assessments_enabled != null }
}
output "workspaces_auto_apply" {
  description = "Map of auto_apply values across all workspaces, keyed the same as var.workspaces except keys with no auto_apply are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.auto_apply if v.auto_apply != null }
}
output "workspaces_auto_apply_run_trigger" {
  description = "Map of auto_apply_run_trigger values across all workspaces, keyed the same as var.workspaces except keys with no auto_apply_run_trigger are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.auto_apply_run_trigger if v.auto_apply_run_trigger != null }
}
output "workspaces_auto_destroy_activity_duration" {
  description = "Map of auto_destroy_activity_duration values across all workspaces, keyed the same as var.workspaces except keys with no auto_destroy_activity_duration are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.auto_destroy_activity_duration if v.auto_destroy_activity_duration != null && length(v.auto_destroy_activity_duration) > 0 }
}
output "workspaces_auto_destroy_at" {
  description = "Map of auto_destroy_at values across all workspaces, keyed the same as var.workspaces except keys with no auto_destroy_at are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.auto_destroy_at if v.auto_destroy_at != null && length(v.auto_destroy_at) > 0 }
}
output "workspaces_description" {
  description = "Map of description values across all workspaces, keyed the same as var.workspaces except keys with no description are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.description if v.description != null && length(v.description) > 0 }
}
output "workspaces_effective_tags" {
  description = "Map of effective_tags values across all workspaces, keyed the same as var.workspaces except keys with no effective_tags are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.effective_tags if v.effective_tags != null && length(v.effective_tags) > 0 }
}
output "workspaces_execution_mode" {
  description = "Map of execution_mode values across all workspaces, keyed the same as var.workspaces except keys with no execution_mode are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.execution_mode if v.execution_mode != null && length(v.execution_mode) > 0 }
}
output "workspaces_file_triggers_enabled" {
  description = "Map of file_triggers_enabled values across all workspaces, keyed the same as var.workspaces except keys with no file_triggers_enabled are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.file_triggers_enabled if v.file_triggers_enabled != null }
}
output "workspaces_force_delete" {
  description = "Map of force_delete values across all workspaces, keyed the same as var.workspaces except keys with no force_delete are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.force_delete if v.force_delete != null }
}
output "workspaces_global_remote_state" {
  description = "Map of global_remote_state values across all workspaces, keyed the same as var.workspaces except keys with no global_remote_state are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.global_remote_state if v.global_remote_state != null }
}
output "workspaces_html_url" {
  description = "Map of html_url values across all workspaces, keyed the same as var.workspaces except keys with no html_url are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.html_url if v.html_url != null && length(v.html_url) > 0 }
}
output "workspaces_hyok_enabled" {
  description = "Map of hyok_enabled values across all workspaces, keyed the same as var.workspaces except keys with no hyok_enabled are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.hyok_enabled if v.hyok_enabled != null }
}
output "workspaces_ignore_additional_tag_names" {
  description = "Map of ignore_additional_tag_names values across all workspaces, keyed the same as var.workspaces except keys with no ignore_additional_tag_names are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.ignore_additional_tag_names if v.ignore_additional_tag_names != null }
}
output "workspaces_ignore_additional_tags" {
  description = "Map of ignore_additional_tags values across all workspaces, keyed the same as var.workspaces except keys with no ignore_additional_tags are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.ignore_additional_tags if v.ignore_additional_tags != null }
}
output "workspaces_inherits_project_auto_destroy" {
  description = "Map of inherits_project_auto_destroy values across all workspaces, keyed the same as var.workspaces except keys with no inherits_project_auto_destroy are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.inherits_project_auto_destroy if v.inherits_project_auto_destroy != null }
}
output "workspaces_name" {
  description = "Map of name values across all workspaces, keyed the same as var.workspaces except keys with no name are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.name if v.name != null && length(v.name) > 0 }
}
output "workspaces_operations" {
  description = "Map of operations values across all workspaces, keyed the same as var.workspaces except keys with no operations are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.operations if v.operations != null }
}
output "workspaces_organization" {
  description = "Map of organization values across all workspaces, keyed the same as var.workspaces except keys with no organization are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.organization if v.organization != null && length(v.organization) > 0 }
}
output "workspaces_project_id" {
  description = "Map of project_id values across all workspaces, keyed the same as var.workspaces except keys with no project_id are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "workspaces_queue_all_runs" {
  description = "Map of queue_all_runs values across all workspaces, keyed the same as var.workspaces except keys with no queue_all_runs are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.queue_all_runs if v.queue_all_runs != null }
}
output "workspaces_remote_state_consumer_ids" {
  description = "Map of remote_state_consumer_ids values across all workspaces, keyed the same as var.workspaces except keys with no remote_state_consumer_ids are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.remote_state_consumer_ids if v.remote_state_consumer_ids != null && length(v.remote_state_consumer_ids) > 0 }
}
output "workspaces_resource_count" {
  description = "Map of resource_count values across all workspaces, keyed the same as var.workspaces except keys with no resource_count are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.resource_count if v.resource_count != null }
}
output "workspaces_source_name" {
  description = "Map of source_name values across all workspaces, keyed the same as var.workspaces except keys with no source_name are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.source_name if v.source_name != null && length(v.source_name) > 0 }
}
output "workspaces_source_url" {
  description = "Map of source_url values across all workspaces, keyed the same as var.workspaces except keys with no source_url are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.source_url if v.source_url != null && length(v.source_url) > 0 }
}
output "workspaces_speculative_enabled" {
  description = "Map of speculative_enabled values across all workspaces, keyed the same as var.workspaces except keys with no speculative_enabled are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.speculative_enabled if v.speculative_enabled != null }
}
output "workspaces_ssh_key_id" {
  description = "Map of ssh_key_id values across all workspaces, keyed the same as var.workspaces except keys with no ssh_key_id are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.ssh_key_id if v.ssh_key_id != null && length(v.ssh_key_id) > 0 }
}
output "workspaces_structured_run_output_enabled" {
  description = "Map of structured_run_output_enabled values across all workspaces, keyed the same as var.workspaces except keys with no structured_run_output_enabled are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.structured_run_output_enabled if v.structured_run_output_enabled != null }
}
output "workspaces_tag_names" {
  description = "Map of tag_names values across all workspaces, keyed the same as var.workspaces except keys with no tag_names are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.tag_names if v.tag_names != null && length(v.tag_names) > 0 }
}
output "workspaces_tags" {
  description = "Map of tags values across all workspaces, keyed the same as var.workspaces except keys with no tags are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "workspaces_terraform_version" {
  description = "Map of terraform_version values across all workspaces, keyed the same as var.workspaces except keys with no terraform_version are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.terraform_version if v.terraform_version != null && length(v.terraform_version) > 0 }
}
output "workspaces_trigger_patterns" {
  description = "Map of trigger_patterns values across all workspaces, keyed the same as var.workspaces except keys with no trigger_patterns are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.trigger_patterns if v.trigger_patterns != null && length(v.trigger_patterns) > 0 }
}
output "workspaces_trigger_prefixes" {
  description = "Map of trigger_prefixes values across all workspaces, keyed the same as var.workspaces except keys with no trigger_prefixes are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.trigger_prefixes if v.trigger_prefixes != null && length(v.trigger_prefixes) > 0 }
}
output "workspaces_vcs_repo" {
  description = "Map of vcs_repo values across all workspaces, keyed the same as var.workspaces except keys with no vcs_repo are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => one(v.vcs_repo) if v.vcs_repo != null && length(v.vcs_repo) > 0 }
}
output "workspaces_working_directory" {
  description = "Map of working_directory values across all workspaces, keyed the same as var.workspaces except keys with no working_directory are omitted"
  value       = { for k, v in tfe_workspace.workspaces : k => v.working_directory if v.working_directory != null && length(v.working_directory) > 0 }
}

