+++ 
priority    = 300
categories  = ["project"]
date        = 2025-05-07T10:16:49+03:00
draft       = true
title       = "Document Search Chatbot"
description = "A chatbot with advanced document search capabilities inside the company"
client      = "Merck"
roles       = ["DevOps engineer"]
skills      = ["Python", "Terraform", "AWS lambda", "AWS", "WSL", "JavaScript"]
start       = "Nov 2023"
end         = "Feb 2025"
+++

## Project Overview, Goals, and Objectives
The project involved the development of a chatbot for a large international pharmaceutical company, MERCK. I worked as a DevOps engineer in a cross-functional team. The main goals were to ensure reliable CI/CD, automate development and business processes, and collaborate effectively with external infrastructure teams within the company.

Key objectives:

- Deploy a new environment
- Migrate CI/CD from Jenkins to GitHub Actions
- Automate manual business (ETL) processes
- Maintain and expand the project infrastructure via Terraform

Team:

- Tech Lead
- ML Engineer
- Frontend Engineer
- Backend/Search Engineer
- Project Manager
- Business Analyst
- DevOps (me)

## 📈 Key Results and Future Development
Configured a VPC endpoint for the API Gateway and integrated with CloudFront — the UI was published via an external team’s infrastructure, which we had to integrate into.

Fully migrated CI/CD processes to GitHub Actions, including pipeline refactoring and integration with Artifactory to store Lambda artifacts.

Automated the import of reports from SharePoint to a MySQL database via AWS Lambda.

Created a Jenkins job as an interface for launching the Lambda function — previously, developers manually triggered SQL procedures; now it's fully automated by specifying the report name.

## 📉 Reduced manual workload for the development team by ~4 hours per week.

Extended and refactored Terraform modules.

Handled security and authorization constraints, including Amazon Cognito and CloudFront policies.

Improved infrastructure stability and reproducibility through full Terraform declaration.

Accelerated delivery cycles via migration to GitHub Actions.

Simplified and automated manual processes, reducing risk of errors and lowering team workload.

Ensured seamless interaction with infrastructure maintained by external teams.

## 🏗 Architecture and Development Process
AWS stack: API Gateway, Lambda, S3, MySQL, Cognito, CloudFront

Pipelines: initially Jenkins, later migrated to GitHub Actions with updated requirements

Infrastructure: Terraform modules aligned with MERCK’s security constraints (e.g., internet access controlled via CloudFront)

ETL: Lambda function + Jenkins job, integrated with SharePoint and MySQL

## ⚙️ Implementation Details, Specifics, and Challenges
During the project, I maintained Jenkins pipelines for CI/CD and other automation tasks.
I also performed the migration of pipelines from Jenkins to GitHub Actions, which required refactoring the CI/CD processes. As part of this migration, I configured the pipeline integration with Artifactory to store artifacts for Lambda functions.

I created a new test environment from scratch. According to MERCK’s security policies, certain restrictions were in place. For example, internet access was managed by a separate CloudFront team. To publish our new UI, I had to provide this team with access to our S3 bucket and insert their policy into the UI bucket configuration.
Additionally, authorization was implemented via custom Amazon Cognito pools, which were overridden by the CloudFront team’s infrastructure code. I also requested and set up a new VPC endpoint for the API Gateway.

The project originally used a complex manual process for regularly importing data from SharePoint reports into the database. I developed a Lambda function that parses and loads this data into the database.
I also created a dedicated Jenkins job to serve as an interface for launching the Lambda. This significantly simplified the workflow. Previously, developers had to manually trigger stored SQL procedures using MySQL Workbench. Now, when a new report is added to SharePoint, we receive an email notification, run the Jenkins job with the report name, and the Lambda function automatically downloads, processes, and loads the data into MySQL.