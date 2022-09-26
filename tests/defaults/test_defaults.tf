terraform {
  required_providers {
    # Terraform Test Provider (mangels offizieller Sprachmittel)
    test = {
      source = "terraform.io/builtin/test"
    }
    
  }
}




#for test configuration it is neccessary to create a file secret.tf, which sets the provider_token
#locals {
#    provider_token = "xxxxx"
#}

provider "fakewebservices" {
  token = local.provider_token
}
module "main" {
  # das zu testende Module wird geladen
  source = "../.."
  official_name = "VM-124234"
  vm_type = "webserver"
}

# ------------------------------------------------------------------------------
# Assertions / Test-Definitionen
# ------------------------------------------------------------------------------

/*
#lokale Variablen können zur Nachverarbeitung von Ergebnissen genutzt werden. 
#Wenn ausgeführte Funktionen fehlschlagen, schlägt auch der Testfall fehl.
locals {
  tmp = regex(
    "^test2.*$",
    module.main.zufallszahl.b64_url,
  )
}
*/

resource "test_assertions" "testfall1" {
  # eindeutiger Identifier für den Testfall
  component = "testfall1"

  # mit den equal und check Blöcken können die Assertions abgebildet werden

   

  check "vm_id" {
    description = "VM Id has been created"
    condition   = can(module.main.vm_id != "")
  }
}


