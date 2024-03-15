resource "octopusdeploy_kubernetes_cluster_deployment_target" "awn-prod-19-infra-17" {
  cluster_url                       = "https://rancher.octopussamples.com/k8s/clusters/c-48dhm"
  environments                      = [ data.octopusdeploy_environments.production.environments[0].id ]
  name                              = "awn-prod-19-infra-17"
  roles                             = ["app-a", "app-b"]
  tenanted_deployment_participation = "Tenanted"
  tenants                           = [ data.octopusdeploy_tenants.awn-prod-19-infra-17.tenants[0].id ]

  authentication {
    account_id = "Accounts-2005"
  }
}
