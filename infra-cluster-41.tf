resource "octopusdeploy_kubernetes_cluster_deployment_target" "infra-cluster-41" {
  cluster_url                       = "https://rancher.octopussamples.com/k8s/clusters/c-48dhm"
  environments                      = [ data.octopusdeploy_environments.production.environments[0].id, data.octopusdeploy_environments.test.environments[0].id, data.octopusdeploy_environments.development.environments[0].id ]
  name                              = "infra-cluster-41"
  roles                             = ["app-a", "app-b"]
  tenanted_deployment_participation = "Tenanted"
  tenants                           = [ data.octopusdeploy_tenants.awn-development-11115.tenants[0].id, data.octopusdeploy_tenants.awn-development-11119.tenants[0].id, data.octopusdeploy_tenants.awn-production-11115.tenants[0].id, data.octopusdeploy_tenants.awn-production-11117.tenants[0].id, data.octopusdeploy_tenants.awn-production-11119.tenants[0].id, data.octopusdeploy_tenants.awn-production-11121.tenants[0].id, data.octopusdeploy_tenants.awn-test-11113.tenants[0].id ]

  authentication {
    account_id = "Accounts-2005"
  }
}
