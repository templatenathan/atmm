terraform {
  required_providers {
    sonarcloud = {
      source  = "rewe-digital/sonarcloud"
      version = "0.2.1"
    }
  }

  cloud {
    organization = "templatenathan"

    workspaces {
      name = "templatenathan"
    }
  }
}

resource "sonarcloud_project" "example_project" {
  key        = "my-unique-project-keyasdf"
  name       = "My not-unique project nameasdf"
  visibility = "public"
}
