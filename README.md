# Azure Hub-Spoke Secure Baseline
Hub VNet with Azure Firewall Basic; Spoke VNet for workloads; Defender for Cloud policy assignment.
## Deploy
cd terraform && terraform init && terraform apply -auto-approve
## Teardown
terraform destroy -auto-approve
