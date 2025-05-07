+++ 
draft = false
katex = false
authors = ["leins275"]
date = 2025-05-07T23:28:17+03:00
title = "iPaaS"
description = "API platform"
slug = "ipaas"
tags = []
+++

During the project, I participated as a DevOps engineer in iPaaS platform development. I worked with terraform infrastructure.

# Key results

- Implemented backup flow. I implement AWS RDS backup flow according to MERCK requirements. I set up regular backups creation and then replicate them to the S3 bucket.
- I reconfigured our RDS setup to provide hi-availability. Previously we used a single database instance, that has been migrated to the Multi A-Z RDS cluster. During this task, I also handled production data migration for the federated team.
- Implemented Alerts system from scratch As a first step, I developed the alert flow. MERCK has an API to send emails. So, I created a simple web service to handle MERCK Mail API auth and then sent an email with alert info to the specified DL. This web service is deployed in Kubernetes as a part of the platform. Then, I secured this endpoint with SSL. To handle this, I have to refactor the existing cert-manager configuration in Kubernetes and mount the root cluster ca certificate to the right place in the Grafana container. As a final step, I configured alert rules for the existing infrastructure: EKS nodes, Mulesoft Kubernetes quotas, Nginx, and Logging.
- I automated Mulesoft RTF creation. Terraform Mulesoft provider did not support proper features to work with RTF agents, so I automated the creation of these resources via Python and Mulesoft API methods. I used Mulesoft API documentation and reverse engineering from dev tools in Anypoint UI to find the right requests.
Helped federated teams switch to the new IAM roles strategy for their AWS accounts.