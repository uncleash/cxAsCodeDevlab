resource "genesyscloud_architect_datatable" "customers" {
  name        = "Customers"
  description = "Table of Customers"
  properties {
    name  = "key"
    type  = "string"
    title = "Email"
  }
  properties {
    name  = "identifier"
    type  = "integer"
    title = "Customer Identifier"
  }
  properties {
    name    = "deleted"
    type    = "boolean"
    title   = "Is Deleted"
    default = "false"
  }
}
resource "genesyscloud_architect_datatable_row" "john-smith-2749" {
  datatable_id = genesyscloud_architect_datatable.customers.id
  key_value    = "johnsmith@example.com"
  properties_json = jsonencode({
    "identifier" = 2749
    "deleted"    = false
  })
}