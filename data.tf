data "octopusdeploy_environments" "development" {
  name         = "Development"
}

data "octopusdeploy_environments" "test" {
  name         = "Test"
}

data "octopusdeploy_environments" "production" {
  name         = "Production"
}
