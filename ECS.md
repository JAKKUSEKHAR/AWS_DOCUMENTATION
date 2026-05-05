##  Amazon ECS (Elastic Container Service)
**The Orchestrator.** 
1. This is Aws Service which Manages all the docker containers(Isolated Environment where our code runs as a package ).
2. It Automates the Deployment 
3. Scales the Containers Based On the Load
4. Maintaines the Health of the Containers, like If Any Server Goes Down it Automatically Redirects the Traffic to the Working Containers, IF need it creates the containers.
5. It Supports 2 Launch Types 


## Amazon ECR (Elastic Container Registry)
1. Stores the Docker Images.
2. We can Images from here to ECS/EKS Whenever we need.
3. 

## Amazon EKS 
1. Kubernetes Service by AWS.
2. used to deploy, scale the containers. More Complex but More Flexiable.



## -----   ------
1. EKS is more Flexiable then ECS
2. ECS is very easy to use and more secure than EKS
3. Task Definition is a json file where we keep the information about the containers and images, CPU and Memory need for the containers to run.
``` cmd
aws ecs register-task-definition \
  --cli-input-json file://task-definition.json

```
4. Task Definition Defines how the Containers run.
5. Cluster is a place where the containers runs. 
6. The Service attach the Task Definition to the cluster and manages the containers.