default:
	@rm -rf .terraform
	@git pull
	@terraform init 
#	@terraform plan
	@terraform apply -auto-approve 
