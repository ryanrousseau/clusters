resource "octopusdeploy_kubernetes_cluster_deployment_target" "awn-dev-5-infra-3" {
  cluster_url                       = "https://rancher.octopussamples.com/k8s/clusters/c-48dhm"
  environments                      = [ data.octopusdeploy_environments.development.environments[0].id ]
  name                              = "awn-dev-5-infra-3"
  roles                             = ["app-cluster"]
  tenanted_deployment_participation = "Tenanted"
  tenants                           = [ data.octopusdeploy_tenants.awn-dev-5-infra-3.tenants[0].id ]

  authentication {
    account_id = "Accounts-2005"
  }
}
