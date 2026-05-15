## Route53 
--> Provides DNS as Service 
--> Domain name system (DNS)
 
 1. DNS is the one which provides mapping between domain name and IP address
 2. we cant remember the ip adress so we use domain name
 3. IP adress of the server keeps changing so we use domain name
 4. the route53 maps the domain name with ip address and provides as like a DNS


## Actual Flow: 
1. the user searches our domain name
2. browser queries route53(DNS resolver) for the ip of the domain name
3. route53 gives ALB DNS name
4. ALB forwards that request to respected services

# It manages: 
 domains
 hosted zones
 DNS records
 health checks
 routing policies



 ## Cloud Map (Service Discovery Tool)
 --> Provides Service Discovery 
 --> It discovers and keeps track of all servcies in the AWS
 --> Avoids the hard coding of ips with NameSpaces
 -->When the service restarts the ips changes but we need the same DNS name , In this case we use cloud map

 http://10.0.2.45:8080  --> http://property-service


1. Whenever a container fails and restarts the IP address of the container changes
2. ECS tells cloud map about the new ip
3. Cloud map updates the DNS record with new ip


#ECS continuously informs Cloud Map about new tasks, stopped tasks, new IPs 
