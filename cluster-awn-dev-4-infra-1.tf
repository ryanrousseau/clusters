resource "octopusdeploy_kubernetes_cluster_deployment_target" "awn-dev-4-infra-1" {
  cluster_url                       = "https://rancher.octopussamples.com/k8s/clusters/c-48dhm"
  environments                      = [ data.octopusdeploy_environments.development.environments[0].id ]
  name                              = "awn-dev-4-infra-1"
  roles                             = ["app-a", "app-b"]
  tenanted_deployment_participation = "Tenanted"
  tenants                           = [ data.octopusdeploy_tenants.awn-dev-4-infra-1.tenants[0].id ]

  authentication {
    account_id = "Accounts-2005"
  }
}