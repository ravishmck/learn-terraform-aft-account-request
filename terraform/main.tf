# AFT Account Requests
# Use GitHub Actions workflow to create new account requests automatically:
# https://github.com/ravishmck/learn-terraform-aft-account-request/actions/workflows/create-account-request.yml
#
# Or manually add module blocks below following this template:
# module "account_name" {
#   source = "./modules/aft-account-request"
#   control_tower_parameters = { ... }
#   account_tags = { ... }
#   change_management_parameters = { ... }
#   custom_fields = { ... }
#   account_customizations_name = "sandbox"
# }

# Example Account Request - LearnAFT
module "learn_aft_test" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ravish.snkhyn@gmail.com"
    AccountName               = "LearnAFT"
    ManagedOrganizationalUnit = "LearnMck"
    SSOUserEmail              = "ravish.snkhyn@gmail.com"
    SSOUserFirstName          = "Ravish"
    SSOUserLastName           = "Sankhyan"
  }

  account_tags = {
    "Environment" = "Test"
    "ManagedBy"   = "AFT"
    "Purpose"     = "AFT Testing"
  }

  change_management_parameters = {
    change_requested_by = "Ravish Sankhyan"
    change_reason       = "Testing AFT Account Provisioning"
  }

  custom_fields = {
    group = "test"
  }

  account_customizations_name = "sandbox"
}

# ============================================
# GitHub Actions Auto-Generated Requests Below
# ============================================

# Account Request: Test
# Created: 2025-12-05 09:20:28 UTC
# Requested by: ravishmck
module "test" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ravish1408@gmail.com"
    AccountName               = "Test"
    ManagedOrganizationalUnit = "AFTLearn"
    SSOUserEmail              = "ravish1408@gmail.com"
    SSOUserFirstName          = "Ravish"
    SSOUserLastName           = "Sankhyan"
  }

  account_tags = {
    "Environment" = "Dev"
    "ManagedBy"   = "AFT"
    "RequestedBy" = "ravishmck"
    "CreatedDate" = "2025-12-05"
  }

  change_management_parameters = {
    change_requested_by = "ravishmck"
    change_reason       = "Test"
  }

  custom_fields = {
    created_by_workflow = "true"
    github_run_id       = "19958397764"
  }

  account_customizations_name = "sandbox"
}

# Test Account Request - AFTTest01
# Created: 2025-12-05 for testing account provisioning
module "aft_test_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ravish.snkhyn+afttest@gmail.com"
    AccountName               = "AFTTest01"
    ManagedOrganizationalUnit = "AFTLearn"
    SSOUserEmail              = "ravish.snkhyn@gmail.com"
    SSOUserFirstName          = "Ravish"
    SSOUserLastName           = "Sankhyan"
  }

  account_tags = {
    "Environment" = "Test"
    "ManagedBy"   = "AFT"
    "Purpose"     = "Testing AFT Provisioning"
    "TestDate"    = "2025-12-08"
  }

  change_management_parameters = {
    change_requested_by = "Ravish Sankhyan"
    change_reason       = "Testing AFT account creation process"
  }

  custom_fields = {
    group = "test"
    test_account = "true"
  }

  account_customizations_name = "sandbox"
}

# Automation test - EventBridge integration
# This push should automatically trigger the pipeline!

# Fresh Account Request - Testing DynamoDB Stream
# Created: 2025-12-08 for testing stream processing
module "aft_dev_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ravish.snkhyn+dev@gmail.com"
    AccountName               = "DevTestAccount"
    ManagedOrganizationalUnit = "AFTLearn"
    SSOUserEmail              = "ravish.snkhyn@gmail.com"
    SSOUserFirstName          = "Ravish"
    SSOUserLastName           = "Sankhyan"
  }

  account_tags = {
    "Environment" = "Dev"
    "ManagedBy"   = "AFT"
    "Purpose"     = "Testing DynamoDB Stream"
    "Created"     = "2025-12-08"
  }

  change_management_parameters = {
    change_requested_by = "Ravish Sankhyan"
    change_reason       = "Testing DynamoDB Stream processing after IAM fix"
  }

  custom_fields = {
    test_stream = "true"
  }

  account_customizations_name = "sandbox"
}

# FINAL TEST - All IAM Permissions Fixed
# Created: 2025-12-08 10:05 after fixing KMS + SSM permissions
module "aft_prod_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ravish.snkhyn+prod@gmail.com"
    AccountName               = "ProdTestAccount"
    ManagedOrganizationalUnit = "AFTLearn"
    SSOUserEmail              = "ravish.snkhyn@gmail.com"
    SSOUserFirstName          = "Ravish"
    SSOUserLastName           = "Sankhyan"
  }

  account_tags = {
    "Environment" = "Production"
    "ManagedBy"   = "AFT"
    "Purpose"     = "Final test after all IAM fixes"
    "TestRun"     = "5"
  }

  change_management_parameters = {
    change_requested_by = "Ravish Sankhyan"
    change_reason       = "Testing AFT with complete IAM permissions (KMS+SSM+DynamoDB+STS)"
  }

  custom_fields = {
    final_test = "true"
    permissions_fixed = "kms-ssm-dynamodb-sts"
  }

  account_customizations_name = "sandbox"
}

# WORKING TEST - Event Source Mapping Re-enabled
# Created: 2025-12-08 10:12 - Fresh event for re-enabled mapping
module "aft_final_test" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ravish.snkhyn+final@gmail.com"
    AccountName               = "FinalTestAccount"
    ManagedOrganizationalUnit = "AFTLearn"
    SSOUserEmail              = "ravish.snkhyn@gmail.com"
    SSOUserFirstName          = "Ravish"
    SSOUserLastName           = "Sankhyan"
  }

  account_tags = {
    "Environment" = "Test"
    "ManagedBy"   = "AFT"
    "Status"      = "AllPermissionsFixed"
    "MappingState" = "ReEnabled"
  }

  change_management_parameters = {
    change_requested_by = "Ravish Sankhyan"
    change_reason       = "Final test with re-enabled Event Source Mapping"
  }

  custom_fields = {
    test_number = "6"
    mapping_reset = "true"
  }

  account_customizations_name = "sandbox"
}

# ABSOLUTE FINAL TEST - 09:55 - All 6 IAM Permissions Fixed
module "working_account" {
  source = "./modules/aft-account-request"
  control_tower_parameters = {
    AccountEmail              = "ravish.snkhyn+working@gmail.com"
    AccountName               = "WorkingAccount"
    ManagedOrganizationalUnit = "AFTLearn"
    SSOUserEmail              = "ravish.snkhyn@gmail.com"
    SSOUserFirstName          = "Ravish"
    SSOUserLastName           = "Sankhyan"
  }
  account_tags = {
    "Test" = "Final"
  }
  change_management_parameters = {
    change_requested_by = "System"
    change_reason       = "Final working test"
  }
  custom_fields = {}
  account_customizations_name = "sandbox"
}
