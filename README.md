# infra-setup
##  Docker droplet

Run docker image with terraform
```
docker run -it --rm -v ${PWD}:/work -w /work --entrypoint /bin/sh hashicorp/terraform:latest
```

Terraform plan and init 

```
terraform init && terraform apply -auto-approve
```
Add docker to context
```
docker context create remote --docker "host=ssh://user@<hostname>"
eval `ssh-agent -s`
ssh-add
```


