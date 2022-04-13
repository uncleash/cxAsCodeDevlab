resource "genesyscloud_routing_queue" "test_queue" {
  name                              = "Terraform queue"
  description                       = "This is a test queue"
  acw_wrapup_prompt                 = "MANDATORY_TIMEOUT"
  acw_timeout_ms                    = 300000
  skill_evaluation_method           = "BEST"
  auto_answer_only                  = true
  enable_transcription              = true
  enable_manual_assignment          = true
  calling_party_name                = "Example Inc."
  media_settings_call {
    alerting_timeout_sec      = 30
    service_level_percentage  = 0.7
    service_level_duration_ms = 10000
  }
  routing_rules {
    operator     = "MEETS_THRESHOLD"
    threshold    = 9
    wait_seconds = 300
  }
  members {
    user_id = genesyscloud_user.test_user.id
  }
  wrapup_codes = [
   genesyscloud_routing_wrapupcode.saleMade.id,
   genesyscloud_routing_wrapupcode.serviceInquiry.id
  ]
}