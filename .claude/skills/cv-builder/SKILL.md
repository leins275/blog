---
name: cv-builder
description: |
  Takes source markdown CV and builds a typst source document. Applies all cv best practices. Do all required aggregations, 
  modifications and formatting.
---

- You have to take the source markdown CV, employ all the rules mentioned below, adjust original content and produce tailored output.

# Optional position requirements
- User may provide the position requirements as an optional content.
- If provided, tailor the CV output to match the position requirements as much as possible.

# HR Best practices
- The employee working experience should be proofed by working history. If it's mentioned that employee has 7 years of experience - we should have at least 7 years of working history to support this claim.
- If there are overlapping working experiences, we should combine them into a single entry.
  - For example: there was 3 projects with overlapping start and end dates - combine them into a single project entry, pick the most interesting content from each.

## Skills block
- We have to generate a separate skills block with all the employee's skills.
- You have to analyze the provided projects experience, extract all mentioned skills, add it to the section.
- If some skills is missed, but 100% sure employee has this skill - just add it to the section without any explanation. Good example: React frontend engineer. Every project mentions React, but now JavaScript and CSS. It's pretty obvious that every frontend engineer have strong JavaScript and CSS skills. 
- All extracted skills for all the projects experience should be organized in sections (not more than 5).
- Every technology mentioned should have a proof in work experience.
- If there is a direct proof in work experience, create a refernce to direct place in project description.
- If there is no direct proof, but it was used there for sure, create a reference to the project header.
 
# Trends
- CV should mention that an employee has comprehensive experience with AI at the last project.

# Project details
## Requirements
- Every listed project should contain a list of achievements on the project.
- Every listed project should contain the stack of technologies the project was implemented with.
- Every listed project should contain a list of responsibilities that the employee covered.
- Every project should contain the name of the organization for which the project was carried out.

## How to meet the requirements
- Try to provide as much as possible out of the project description.
- If it's lack of details, prepare a checklist and ask user to provide missing information.
