
# AWS Learning Journey Notes

## Introduction

This document contains the topics and concepts learned while working with AWS and understanding production-level cloud architecture. The learning journey started from networking basics and gradually moved into ECS, API Gateway, DNS, load balancing, microservices architecture, and production traffic flow.

The focus was not only on configuring AWS services but also understanding why each service exists and how different AWS components work together in real-world systems.

---

# VPC

The first concept learned was VPC.

VPC stands for Virtual Private Cloud.

A VPC is a private network inside AWS where all cloud resources are deployed. Instead of placing servers directly on the internet, AWS allows the creation of isolated virtual networks.

Inside a VPC we can:

- Create subnets
- Launch servers
- Configure networking
- Control security
- Separate public and private resources

This became the foundation for understanding AWS networking.

---

# Subnets

Subnets are smaller network sections inside a VPC.

Mainly there are two types:

- Public Subnet
- Private Subnet

## Public Subnet

Resources inside public subnet can communicate with the internet.

Usually used for:

- Load Balancers
- Public APIs
- Bastion hosts
- Frontend-facing services

## Private Subnet

Resources inside private subnet are hidden from the public internet.

Usually used for:

- Databases
- Backend services
- Internal ECS tasks

This helped in understanding secure infrastructure design.

---

# Route Tables

Route Tables control network traffic flow.

Routes decide where packets should go.

Examples:

- Internet traffic goes to Internet Gateway
- Internal traffic stays inside VPC
- Private subnet internet traffic goes to NAT Gateway

This improved understanding of AWS networking paths.

---

# Internet Gateway

Internet Gateway connects the VPC to the internet.

Without Internet Gateway:

- Public resources cannot access internet
- Internet users cannot access applications

It acts as the entry and exit point for internet communication.

---

# NAT Gateway

NAT Gateway allows private subnet resources to access the internet without exposing them publicly.

Used for:

- Downloading packages
- System updates
- External API communication

Private servers remain hidden while still getting outbound internet access.

---

# Security Groups

Security Groups work like virtual firewalls.

They control:

- Incoming traffic
- Outgoing traffic

Rules are configured using:

- Ports
- Protocols
- IP ranges

Examples:

- Port 80 for HTTP
- Port 443 for HTTPS
- Port 22 for SSH

Security Groups are stateful.

---

# NACLs

NACL stands for Network Access Control List.

NACLs work at subnet level.

Unlike Security Groups:

- NACLs are stateless
- Separate inbound and outbound rules are required

This added another layer to understanding AWS security.

---

# DNS Basics

DNS converts domain names into IP addresses.

Instead of remembering IPs, users access applications using domain names.

Examples:

- google.com
- housie.us

DNS became one of the important internet concepts learned.

---

# Route53

Route53 is AWS DNS service.

Using Route53 we can:

- Register domains
- Manage DNS
- Route traffic
- Connect domains to AWS services

Hosted Zones contain DNS records for a domain.

---

# DNS Records

Different DNS records were learned.

## A Record

Maps a domain directly to an IP address.

Example:

- app.example.com → 54.x.x.x

## CNAME Record

Maps one domain name to another domain name.

Example:

- api.example.com → abc.execute-api.amazonaws.com

## NS Record

Defines which nameservers handle the domain.

## SOA Record

Contains administrative information about the domain.

---

# CloudFront

CloudFront is AWS CDN service.

CDN stands for Content Delivery Network.

CloudFront helps:

- Deliver content faster
- Cache static files
- Reduce latency
- Improve global performance

Frontend applications are commonly served through CloudFront.

---

# Load Balancer

Load Balancer distributes incoming traffic across multiple servers or containers.

Benefits:

- Prevents overload
- Improves availability
- Improves scalability
- Handles large traffic

Mainly Application Load Balancer (ALB) was learned.

---

# Application Load Balancer (ALB)

ALB works at Layer 7.

It understands HTTP and HTTPS traffic.

ALB features:

- Path-based routing
- Host-based routing
- Health checks
- Traffic distribution

Examples:

- /users → User Service
- /payments → Payment Service

This improved understanding of traffic routing.

---

# Target Groups

Target Groups are attached to ALB.

ALB forwards requests to Target Groups.

Target Groups contain:

- ECS tasks
- EC2 instances
- IP-based targets

Important learning:

- ECS dynamically registers tasks
- Task IPs change automatically
- Manual IP management is not needed

This introduced dynamic infrastructure concepts.

---

# ECS

ECS stands for Elastic Container Service.

ECS is used to run containers.

Important ECS components learned:

- Cluster
- Service
- Task
- Task Definition

## Cluster

Logical grouping of services.

## Task

A running container.

## Service

Maintains desired number of tasks.

## Task Definition

Contains container configuration.

---

# Fargate

Fargate allows containers to run without managing servers.

AWS handles:

- Infrastructure
- Scaling
- Server management

This introduced serverless container execution.

---

# Dynamic IPs in ECS

One important concept learned was dynamic task IP behavior.

When ECS tasks restart:

- Old IP changes
- New IP gets assigned

This showed why production systems should not depend on fixed container IPs.

---

# Cloud Map

Cloud Map helps in service discovery.

Instead of services using direct IPs, they communicate using DNS names.

Examples:

- user-service.internal
- payment-service.internal

Cloud Map automatically updates DNS entries when tasks restart.

Useful for:

- Internal microservice communication
- Dynamic service discovery

---

# API Gateway

API Gateway acts as centralized entry point for APIs.

Instead of exposing multiple services separately, APIs are exposed through a single domain.

Examples:

- api.example.com/users
- api.example.com/payments
- api.example.com/orders

API Gateway helps:

- Centralized API management
- Security
- Request routing
- Throttling
- Authentication integration

---

# API Gateway Resources and Methods

API Gateway contains:

- Resources
- Methods
- Stages

## Resources

Resources are API paths.

Examples:

- /users
- /payments

## Methods

Methods define operations.

Examples:

- GET
- POST
- PUT
- DELETE

Important understanding:

- One GET method per resource
- One POST method per resource

---

# API Gateway Integration

API Gateway can integrate with:

- ALB
- Lambda
- HTTP endpoints

For ECS production systems:

API Gateway usually forwards traffic to ALB.

---

# Microservices Architecture

Microservices architecture divides applications into smaller independent services.

Examples:

- User Service
- Property Service
- Payment Service

Benefits:

- Independent deployment
- Better scalability
- Easier maintenance
- Improved flexibility

---

# Production Traffic Flow

Production request flow learned:

Route53 → CloudFront → API Gateway → ALB → ECS Services

## Route53

Handles DNS routing.

## CloudFront

Handles CDN and caching.

## API Gateway

Handles API routing and management.

## ALB

Distributes traffic.

## ECS

Runs backend services.

This improved end-to-end infrastructure understanding.

---

# Internal vs Public Services

Difference between public-facing and internal services was learned.

## Public Services

- Accessible from internet
- Usually behind public ALB

## Internal Services

- Private communication only
- Hidden inside VPC
- Used for internal microservices

---

# Why ALB is Important

ALB is important between API Gateway and ECS.

Without ALB:

- API Gateway would need direct task connections
- Dynamic IP handling becomes difficult
- Scaling becomes unstable
- Health checking becomes harder

With ALB:

- Stable endpoint exists
- Traffic distribution improves
- ECS integrates automatically
- Scaling becomes smoother

---

# Cloud Map vs ALB

Cloud Map and ALB solve different problems.

## Cloud Map

Used for:

- Service discovery
- Internal DNS
- Internal communication

## ALB

Used for:

- Traffic distribution
- HTTP routing
- Public traffic handling

This clarified an important production architecture concept.

---

# Production Architecture Thinking

One major learning was understanding why infrastructure layers exist.

Production systems are designed carefully.

Different layers solve different problems.

Examples:

- DNS layer
- CDN layer
- API layer
- Load balancing layer
- Container orchestration layer

This improved understanding of:

- Scalability
- Reliability
- High availability
- Distributed systems basics

---

# Overall Understanding

Till now, learning covered:

- AWS networking
- DNS
- Routing
- Containers
- ECS
- API management
- Load balancing
- Service discovery
- Microservices architecture
- Production traffic flow

The focus has been on understanding both AWS configuration and real production architecture thinking.

---

# Topics Planned for Further Learning

Future learning areas include:

- IAM
- CloudWatch
- CI/CD
- Auto Scaling
- Monitoring
- Logging
- Secrets Manager
- Cognito
- WAF
- Infrastructure as Code
- ECS deployment strategies
- Blue/Green deployments

---

# Conclusion

The learning journey has moved from networking basics to understanding production-grade AWS architecture.

The concepts learned created a strong foundation for building scalable cloud-native applications using AWS.
