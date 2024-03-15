resource "octopusdeploy_kubernetes_cluster_deployment_target" "awn-test-26-infra-1" {
  cluster_url                       = "https://rancher.octopussamples.com/k8s/clusters/c-48dhm"
  environments                      = [ data.octopusdeploy_environments.test.environments[0].id ]
  name                              = "awn-test-26-infra-1"
  roles                             = ["app-a", "app-b"]
  tenanted_deployment_participation = "Tenanted"
  tenants                           = [ data.octopusdeploy_tenants.awn-test-26-infra-1.tenants[0].id ]

  authentication {
    account_id = "Accounts-2005"
  }
}