resource "octopusdeploy_kubernetes_cluster_deployment_target" "awn-prod-21-infra-25" {
  cluster_url                       = "https://rancher.octopussamples.com/k8s/clusters/c-48dhm"
  environments                      = [ data.octopusdeploy_environments.production.environments[0].id ]
  name                              = "awn-prod-21-infra-25"
  roles                             = ["app-cluster"]
  tenanted_deployment_participation = "Tenanted"
  tenants                           = [ data.octopusdeploy_tenants.awn-prod-21-infra-25.tenants[0].id ]

  authentication {
    account_id = "Accounts-2005"
  }
}
