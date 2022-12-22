# infra-environment
##  Run terraform
```
docker run -it --rm -v ${PWD}:/work -w /work --entrypoint /bin/sh hashicorp/terraform:latest
```