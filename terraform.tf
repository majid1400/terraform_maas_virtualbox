terraform {
  required_providers {
    maas = {
      source = "suchpuppet/maas"
    }
    virtualbox = {
      source = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}