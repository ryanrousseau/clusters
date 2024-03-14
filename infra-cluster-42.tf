resource "octopusdeploy_kubernetes_cluster_deployment_target" "infra-cluster-42" {
  cluster_url                       = "https://rancher.octopussamples.com/k8s/clusters/c-48dhm"
  environments                      = [ data.octopusdeploy_environments.development.environments[0].id ]
  name                              = "infra-cluster-42"
  roles                             = ["app-a", "app-b"]
  tenanted_deployment_participation = "Tenanted"
  tenants                           = [ data.octopusdeploy_tenants.awn-development-11116.tenants[0].id ]

  authentication {
    account_id = "Accounts-2005"
  }
}
