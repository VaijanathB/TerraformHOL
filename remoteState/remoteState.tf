terraform {
  backend "azurerm" {
    storage_account_name = "storestateswvji5xcihgf2m"
    container_name       = "terraform-state"
    key                  = "prod.terraform.tfstate"
    access_key           = "KvP5j4C3FgeThtis1ml37GVqK9I5X0pBbFTIHPUMA3cKtJ3xHvl8RPZptya/1d0oMpDCrd2bynXGrCsVlOWtfA=="
  }
}
