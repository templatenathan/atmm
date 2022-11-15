variable token {}

terraform {
  required_providers {
    sonarcloud = {
      source  = "rewe-digital/sonarcloud"
      version = "0.2.1"
    }
  }
}

provider "sonarcloud" {
  organization = "template"
  token        = ${{ secrets.SONAR_TOKEN }}
}

resource "template" "abcde" {
  key        = "abcde"
  name       = "abcde"
  visibility = "public"
}
