
### Task Definition
**The Blueprint.** This is a text file (JSON) that tells ECS and EKS how to run our application.
* **Details:** Defines which image to use from ECR, how much **CPU/Memory** is required, and which **ports** to open.
* its like a blueprint for the container for what to run inside.
``` json
{
    "family": "my-web-app-task",
    "networkMode": "awsvpc",
    "requiresCompatibilities": [
        "FARGATE"
    ],
    "cpu": "256",
    "memory": "512",
    "executionRoleArn": "arn:aws:iam::123456789012:role/ecsTaskExecutionRole",
    "containerDefinitions": [
        {
            "name": "web-container",
            "image": "123456789012.dkr.ecr.us-east-1.amazonaws.com/my-app-repo:latest",
            "essential": true,
            "portMappings": [
                {
                    "containerPort": 80,
                    "hostPort": 80,
                    "protocol": "tcp"
                }
            ],
            "environment": [
                {
                    "name": "NODE_ENV",
                    "value": "production"
                }
            ],
            "logConfiguration": {
                "logDriver": "awslogs",
                "options": {
                    "awslogs-group": "/ecs/my-web-app",
                    "awslogs-region": "us-east-1",
                    "awslogs-stream-prefix": "ecs"
                }
            }
        }
    ]
}
```