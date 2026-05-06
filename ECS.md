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

## Task Definition
*insteead of manually setting the infrastructire , the task definiton file will tell the ecs cluster what to do*
1. which image to pull from ECR.
2. How memory need and cpu need.
3. which port should be opened and allowed.
4. ev and secrets 
5. IAM roles (its like which permissiion the ecs cluster should have to access the aws resources like db and instances)

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


### Actual Flow
You build a Docker image.
Push it to Amazon Web Services ECR.
Create a Task Definition
tells ECS:
which image to use
CPU/memory
ports
env vars
IAM roles
ECS Service or ECS RunTask uses that Task Definition.
ECS launches a Task.
Inside that Task, the containers get created and started.

So:

Cluster → just a logical group/resources where things run.
Task Definition → blueprint/instructions.
Task → actual running instance of that blueprint.
Container → runs inside the Task. 

(service launches the tasks and manages the task..)

### revising
Task Definiton

### Flow


1. Developer writes application code
        

2. Docker Image is built
        

3. Docker Image is pushed to ECR
        

4. ECS Service uses Task Definition
        

5. Task Definition contains ECR Image URL
        

6. ECS pulls the Docker Image from ECR
        

7. ECS creates and runs Containers
   inside the Cluster
