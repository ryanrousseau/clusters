data "octopusdeploy_environments" "development" {
  name         = "Development"
}

data "octopusdeploy_environments" "test" {
  name         = "Test"
}

data "octopusdeploy_environments" "production" {
  name         = "Production"
}

data "octopusdeploy_projects" "all_octopub" {
  name         = "All Octopub"
}

data "octopusdeploy_projects" "mysql" {
  name         = "MySQL"
}

data "octopusdeploy_projects" "octopub_audits" {
  name         = "Octopub Audits"
}

data "octopusdeploy_projects" "octopub_frontend" {
  name         = "Octopub Frontend"
}

data "octopusdeploy_projects" "octopub_products" {
  name         = "Octopub Products"
}

data "octopusdeploy_tenants" "awn-dev-12345" {
  name         = "awn-dev-12345"
}

data "octopusdeploy_tenants" "awn-deploy-11111" {
  name         = "awn-deploy-11111"
}