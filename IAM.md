## IAM (Identity Access Management)

--> Centralized control of who can do what in our aws account.


## IAM Gives 3 Solutions
--> Who are you ?   -- User/Role
--> What can you do ? -- Policy
--> Can AWS trust? -- Trust Policy


## IAM User 

--> Permanent identities for humans



## IAM Groups

--> Group of users (or) Permission Collections.
like HR, Finance, IT , DEVOPS , Developers , Testers


## IAM Policies

--> Policies are JSON documents that define permissions.

--> We can attach policies to users, groups, and roles.

--> A policy has two main components:

1. Statements --> (permission rules)
2. Effect --> (Allow / Deny)
3. Actions --> (Services (What users Can Perform))
4. Resources --> (Resources (On What users Can Perform On))
5. Conditions --> (Restrictions )


## Statements

--> Statement is a single permission rule.

## Action

--> Actions are permissions that the user can perform.

## Resources

--> Resources are AWS services that the user can access.

## Conditions

--> Conditions are conditions that the user can perform.


## Role (or ) Temporary Credentials

--> Temporary Permission identity assumed by trusted entities(users, services, )

--> No Password , No permanent identity.
 

## Permission Policy

Defines:

WHAT the role can do

Example:

{
  "Effect": "Allow",
  "Action": "s3:GetObject",
  "Resource": "*"
}

## Trust Policy

Defines:

WHO can assume the role

Example:

{
  "Effect": "Allow",
  "Principal": {
    "Service": "ecs-tasks.amazonaws.com"
  },
  "Action": "sts:AssumeRole"
}



=======================================================================

IAM User/Role = employee 👨‍💻
Policy = rulebook 📜
Permissions = what the employee is allowed to do

Important production nuance:

Not every policy grants permissions.

There are:

Allow policies
Deny policies
Permission boundaries
Service Control Policies (SCPs) in AWS Organizations

=======================================================================




## IAM Identity Center (SSO  (Single sign on ))

--> Users can login to multiple accounts with single sign on 





## 


| Feature                        | Purpose                         |
| ------------------------------ | ------------------------------- |
| Single Sign-On (SSO)           | One login for many accounts     |
| Centralized user management    | Manage users in one place       |
| Multi-account access           | Access many AWS accounts        |
| Permission sets                | Standardized access templates   |
| Federation                     | Connect Okta/Azure AD/Google    |
| Temporary credentials          | No permanent access keys        |
| Centralized access assignments | Assign users/groups to accounts |
| Application access             | Login to third-party apps       |
| MFA integration                | Centralized MFA policies        |



