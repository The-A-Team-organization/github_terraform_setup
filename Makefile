.PHONY: init plan apply destroy
init:
	terraform init

plan: init
	terraform plan -var-file=runner_data.tfvars

apply: init
	terraform apply -var-file=runner_data.tfvars

destroy: init
	terraform destroy -var-file=runner_data.tfvars