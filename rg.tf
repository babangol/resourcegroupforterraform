terraform { 
  cloud { 
    
    organization = "rekhaorg" 

    workspaces { 
      name = "localfile" 
    } 
  } 
}
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}

provider "azurerm" {
    features {}
 client_id="7af213db-77c9-4fdb-b240-f4d2efd35760"
 client_secret="BIw8Q~ZcGQFJMk1ZMMfj~5JvG_pxxFhGSm893bfk"
 tenant_id="db549104-174a-4b70-a431-932ab8ec616e"
 subscription_id="e6273c17-de66-4371-9b4d-70e10906daf0"

}
variable rgname{
                        default = "teraformrg"
                }
                variable location{
                        default = "West US 2"
                }
                resource "azurerm_resource_group" "example" {
                  name     = var.rgname
                  location = var.location
                } 
