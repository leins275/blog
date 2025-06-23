+++ 
priority    = 300
date        = 2024-01-23T19:02:35+03:00
categories  = ["project"]
draft       = false
title       = "iPaaS"
description = "API platform"
client      = "Merck"
roles       = ["DevOps engineer"]
skills      = ["Python", "Terraform", "Terragrunt", "Kubernetes", "AWS", "MuleSoft", "Flask", "Jenkins", "GitHub Actions"]
start       = "Jan 2024"
end         = "Dec 2024"
+++

## Responsibilities:
During the project, I participated as a DevOps engineer in iPaaS platform development. I worked with terraform infrastructure.

## What was done:
1. Implemented backup flow. I implement AWS RDS backup flow according to MERCK requirements. I set up regular backups creation and then replicate them to the S3 bucket. 
2. I reconfigured our RDS setup to provide hi-availability. Previously we used a single database instance, that has been migrated to the Multi A-Z RDS cluster. During this task, I also handled production data migration for the federated team. 
3. Implemented Alerts system from scratch
As a first step, I developed the alert flow. MERCK has an API to send emails. So, I created a simple web service to handle MERCK Mail API auth and then sent an email with alert info to the specified DL. This web service is deployed in Kubernetes as a part of the platform. Then, I secured this endpoint with SSL. To handle this, I have to refactor the existing cert-manager configuration in Kubernetes and mount the root cluster ca certificate to the right place in the Grafana container. As a final step, I configured alert rules for the existing infrastructure: EKS nodes, Mulesoft Kubernetes quotas, Nginx, and Logging.
4. I automated Mulesoft RTF creation. Terraform Mulesoft provider did not support proper features to work with RTF agents, so I automated the creation of these resources via Python and Mulesoft API methods. I used Mulesoft API documentation and reverse engineering from dev tools in Anypoint UI to find the right requests.
5. Helped federated teams switch to the new IAM roles strategy for their AWS accounts. 
