docker image build --tag okkervill/devops:$1 .
docker image push okkervill/devops:$1

chmod 600 devops-cw1.pem
ssh -i "devops-cw1.pem" ubuntu@18.204.6.153 "kubectl set image deployments/devops devops=okkervill/devops:$1"