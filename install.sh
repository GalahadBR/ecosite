#/bin/bash
#
# Installation Script
#

# START MINIKUBE WITH ADDONS
echo "Starting minikube and enabling addons ..."
echo "#####################"
minikube start --embed-certs
minikube addons enable heapster
minikube addons enable ingress
echo "Minikube started!"
echo ""

# FORCE BUILD USING DOCKER-ENV ON MINIKUBE
echo "Starting docker-env variable"
eval $(minikube docker-env)

# ADD local.ecosia.org TO LOCAL HOSTS FILE
echo "Adding local.ecosia.org to local hosts file ..."
echo "#####################"
sudo -- sh -c -e "echo '`minikube ip` local.ecosia.org' >> /etc/hosts"
echo "Done!"
echo ""

# BUILD DOCKER IMAGE
echo "Building docker image ..."
echo "#####################"
docker build . -t ecosite
echo "DOCKER image built!"
echo ""

# DEPLOY APPLICATION IN MINIKUBE CLUSTER
echo "Building docker image ..."
echo "#####################"
kubectl apply -f deployment.yaml
echo "Done!"
echo ""
echo "Please access the URL http://local.ecosia.org"