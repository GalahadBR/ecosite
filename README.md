# ecosite
# Notes regarding the work done on this assigment

Development end

. Although it is a simple application, I don't have a background developer. So I ask a friend of mine for tips, and he advised me to use express framework to make things easier for me.
 

Automating Deployment

. I decided to create a simple shell script to start minikube, build the image, prepare the hosts file and deploy the cluster on minikube cause most of the work is done on the deployment.yaml file.

# Installation process

Clone the repository to your local machine and execute the script as follow:

./install.sh 

Wait a few minutes and wait for the deployment to be completed. After that, access the URL http://local.ecosia.org
 and validate.
