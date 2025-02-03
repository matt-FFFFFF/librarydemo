terraform {
  required_version = "~> 1.9"
  required_providers {
    alz = {
      source  = "azure/alz"
      version = "~> 0.17"
    }
    azapi = {
      source  = "azure/azapi"
      version = "~> 2.2"
    }
  }
}

provider "alz" {
  library_references = [
    {
      path = "platform/alz"
      ref  = "2025.01.0"
    },
    {
      path = "platform/amba"
      ref  = "2024.12.0"
    },
    {
      custom_url = "${path.root}/lib"
    }
  ]
}























# {
#   path = "platform/alz"
#   ref  = "2025.01.0"
# },
# {
#   custom_url = "${path.root}/lib"
# }
# {
#   path = "platform/alz"
#   ref  = "2025.01.0"
# },
# {
#   path = "platform/amba"
#   ref = "2024.12.0"
# },
# {
#   custom_url = "${path.root}/lib"
# }
