+++ 
priority = 200
draft    = true
authors  = ["leins275"]
date     = 2021-11-07T23:35:30+03:00
title    = "DevOps support engineer"
client   = "Novartis"
roles    = ["DevOps engineer"]
skills   = ["AWS", "Azure AD", "Oauth2.0", "PKCE", "Terraform", "Python", "Groovy", "Jenkins", "Bash", "Chef"]
start    = "Nov 2021"
end      = "Jun 2023"
+++

# Oauth engineer

Create terraform modules to support different AWS Authorization flows

## Responsibilities
- Developed and tested some authorization strategies based on AWS services such as AWS ALB and API Gateway. For each strategy, we created a terraform module to make our solutions scalable for many teams.
- I created an example Python web service with code examples of token issuing with different OAuth flows( Authorization Code, OBO).
- I developed Python lambda that can parse auth tokens and provide claims in headers (this case is for support legacy apps). And as an alternative for this lambda, I created an openresty (Nginx + Lua runtime) configuration with the same functionality

# PAM

Help different scientific application teams integrate PAM solutions with various CI/CD toolsets

## Responsibilities
- Support scientific application teams with PAM tools integration
- Write chef recipes to support credentials injections in a reliable way
- Create Jenkins pipelines with the Conjure plugin
- Write bash scripts to support various PAM credential injection flows
