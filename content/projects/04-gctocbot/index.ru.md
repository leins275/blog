+++ 
categories  = ["project"]
draft       = true
authors     = ["leins275"]
date        = 2025-05-07T10:16:49+03:00
title       = "Чат-бот для поиска документов"
description = "Чат бот с продвинутыми функциями поиска документов внутри компании"
slug        = "gctocbot"
tags        = []
client      = "Merck"
+++

In this project, I worked as a DevOps engineer on the bot development team. One of the key challenges
in enterprise projects is collaboration with other teams and knowledge transfer.

## Tasks

* Deployment of a new environment
* Automation of ETL processes
* Migration from Jenkins CI to GitHub Actions
* Extension and refactoring of Terraform modules

## Team:

* Tech Lead
* Frontend Engineer
* ML Engineer
* DevOps (me)
* Backend/Search Engineer
* Project Manager
* Business Analyst

# Responsibilities
## Maintain CI/CD pipelines
During the project I maintained Jenkins pipelines for CI/CD and other automation Jobs.

I handled migration from Jenkins pipelines to GitHub Actions, which involves CI/CD process refactoring. Also, during this migration I connected our pipeline with artifactory to store all the artifacts for lambda functions.

## Declare new infrastructure via terraform
I created a new test environment from scratch. According to MERCK policies, we have some security restrictions. First, public internet access was managed by a dedicated CloudFront team. To publish our new UI, I had to provide them with our S3 bucket credentials and then paste their policy into the ui bucket. Also, we have cognito authorization with custom Amazon Cognito pools, so this setting was overwritten with CloudFront team infra code. Also, I requested and set up a new VPC endpoint for the API gateway.

## Automate business and developers processes in MERCK 
The project has a complicated manual flow to import some data from SharePoint reports into our database regularly. I created a lambda function that can parse the data and import it into our database. Also, I created a dedicated Jenkins job as an interface for this lambda. So the flow simplified significantly. Previously there were some stored SQL procedures that developers should trigger manually from the mysql workbench. And now, when the new report is added to SharePoint, we receive an email notification and run the Jenkins job with the required report name. Then lambda function downloads it from SharePoint, processes and loads it into MySQL database.
----------

## MERCK — автоматизация процессов и CI/CD

**Роль:** DevOps-инженер
**Технологии:** Jenkins, GitHub Actions, Terraform, AWS Lambda, MySQL, SharePoint
**Период:** Sep 2023 - Feb 2025

### 🧩 Контекст

Работал DevOps-инженером в команде разработки Telegram-бота для крупного enterprise-проекта. Одной из ключевых задач было выстраивание взаимодействия с другими командами (внутренними и внешними) и оптимизация процессов разработки.

### 🎯 Основные задачи и достижения

#### 🚀 Развертывание новой среды с нуля

* Создал полностью новую тестовую среду, включая инфраструктуру под требования безопасности компании MERCK.
* Настроил VPC endpoint для API Gateway и интеграцию с CloudFront — публикация интерфейса происходила через внешнюю команду, в чьё окружение нужно было встраиваться.

#### 🔄 Миграция с Jenkins CI на GitHub Actions

* Выполнил полный переход CI/CD-процессов на GitHub Actions, включая рефакторинг пайплайнов и интеграцию с Artifactory для хранения артефактов Lambda-функций.

#### ⚙️ Автоматизация ETL-процессов

* Автоматизировал загрузку отчетов из SharePoint в базу данных MySQL через AWS Lambda.
* Реализовал Jenkins-задачу как интерфейс запуска — раньше разработчики вручную вызывали SQL-процедуры, теперь достаточно указать имя отчета, и процесс полностью автоматизирован.
* 📉 *Сократил ручной труд команды разработки на \~4 часа в неделю.*

#### 🧱 Работа с инфраструктурой через Terraform

* Расширил и отрефакторил Terraform-модули.
* Учитывал ограничения по безопасности и авторизации через Amazon Cognito и CloudFront-политику.

---

### 🧑‍🤝‍🧑 Команда

* Техлид
* ML-инженер
* Фронтенд-инженер
* Backend/Search-инженер
* Project Manager
* Business Analyst
* DevOps (я)

---

### 📈 Результаты

* Повышена стабильность и воспроизводимость инфраструктуры за счёт полной декларации через Terraform
* Ускорен цикл поставки за счёт перехода на GitHub Actions
* Упрощены и автоматизированы ручные процессы, что позволило снизить риски ошибок и сократить нагрузку на команду
* Обеспечено бесшовное взаимодействие с инфраструктурой смежных команд
