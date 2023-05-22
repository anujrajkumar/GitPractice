 provider "azurerm" {
     alias = "prod"
     subscription_id = "55cf0ba9-e3c1-4ced-b5e9-5abb7b4d39b1"
     features {}
 }

 provider "azurerm" {
     alias = "dev"
     subscription_id = "748eb2de-6ec3-4af2-b4d0-ec909d1934e9"
     client_secret = "Eub7-.3XT2EO70ohg1~4lX1~GHBUq9mkoV"
     client_id = "b1d0b346-80df-4860-a9d3-804a13068596"
     tenant_id = "a18f4c17-a5fd-4705-9fd5-888f2e4bedd3"
     features {}
 }