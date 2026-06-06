+++
title = "Резюме"
slug = "cv"
date = 2026-06-06
type = "cv"
draft = false
[params]
  pdf = "/files/Nikita-Lanskov-Senior-Software-Engineer-RU.pdf"
+++

# Никита Лансков

Старший инженер-программист · Измир, Турция · готов к переезду (ЕС)
[nikitalanskov@gmail.com](mailto:nikitalanskov@gmail.com) · [+90 531 601 4154](https://wa.me/905316014154) · [linkedin.com/in/leins275](https://linkedin.com/in/leins275) · [leins275.xyz](https://leins275.xyz)

## О себе

Senior Software Engineer с опытом 6+ лет в проектировании production-инфраструктуры и backend-сервисов на AWS, Kubernetes и Terraform для фармацевтических и tech-клиентов. Проектирую CI/CD-пайплайны, пишу сервисы обработки и интеграции данных на Python и Rust, веду DevOps-автоматизацию end-to-end. Как CTO консалтинговой компании на 30 человек совмещаю практическую инженерию с лидерством команды, ответственностью за поставку и техническим менторством.

## Навыки

**Языки программирования** — Python, Rust, TypeScript, JavaScript, Bash, Groovy, Lua, SQL, Dart

**Backend и веб** — Django, DRF, FastAPI, Flask, React, Next.js, Vue, Centrifugo (WebSockets), aiogram, python-telegram-bot

**Облако и AWS** — EC2, S3, RDS, Lambda, API Gateway, CloudFront, VPC, EKS, IAM, Cognito, AWS Backup

**IaC и оркестрация** — Terraform, Terragrunt, Ansible, Chef, Kubernetes, Helm, Argo CD, Sealed Secrets, Docker, Docker Compose, EasyBuild

**CI/CD и инструменты** — GitHub Actions, GitLab CI, Jenkins, Drone CI, pre-commit, uv, Make

**Данные и стриминг** — PostgreSQL, MySQL, Elasticsearch, Firebase, Pandas, Debezium (CDC)

**Наблюдаемость и аутентификация** — Prometheus, Grafana, OAuth 2.0, PKCE, OpenID Connect, Keycloak, Azure AD, PAM/Conjur

**Прочее** — Hugo, Nginx, OpenResty, MuleSoft, Wiki.js, ML/CV (PyTorch, OpenCV, U-Net, QuPath), React Native, Flutter

## Опыт работы

### EPAM Systems — Senior Software Engineer · ноя 2021 – наст. вр.

#### Cromwell — Scientific Pipeline Engine на HPC *(Novartis · апр 2025 – наст. вр.)*

**Стек:** Python, Pandas, EasyBuild, Cromwell, HPC

- Перенёс workflow-движок Cromwell с Docker/Singularity на EasyBuild-бандл, упаковав Python, Perl и бинарь Cromwell в один разворачиваемый модуль.
- Спроектировал логику валидации для инструмента проверки входов пайплайна, сохранив существующую архитектуру очереди задач и переработав бизнес-правила.
- Реализовал ETL-пайплайн обработки данных reconciliation на Pandas.

#### Document Search Chatbot (GCToC) *(Merck · ноя 2023 – фев 2025)*

**Стек:** Python, Terraform, AWS Lambda, AWS (API Gateway, S3, Cognito, CloudFront, VPC), JavaScript, Jenkins, GitHub Actions

- Полностью мигрировал CI/CD с Jenkins на GitHub Actions, включая рефакторинг пайплайнов и интеграцию Artifactory для хранения артефактов Lambda.
- Построил автоматизацию на AWS Lambda + Jenkins для импорта SharePoint-отчётов в MySQL, что сократило ~4 часа ручной работы в неделю.
- Поднял с нуля новое тестовое окружение под security-моделью MERCK (CloudFront-managed internet, S3 bucket policies, переопределения Cognito-пулов).
- Расширил Terraform-модули до полного покрытия IaC; настроил интеграцию API Gateway через VPC endpoint с CloudFront.

#### iPaaS — платформа API-интеграции *(Merck · янв 2024 – дек 2024)*

**Стек:** Python, Terraform, Terragrunt, Kubernetes, AWS (EKS, RDS, S3), MuleSoft, Flask, Jenkins, GitHub Actions, Grafana

- Построил с нуля систему алертинга на Grafana: Flask-webhook для MERCK Mail API с SSL, рефакторинг cert-manager в Kubernetes, правила алертов по EKS-нодам, квотам MuleSoft, Nginx и логированию.
- Мигрировал single-instance RDS на Multi-AZ-кластер с переносом боевых данных под нагрузкой; реализовал бэкап-флоу по требованиям MERCK (репликация снимков в S3).
- Автоматизировал создание MuleSoft RTF на Python, реверс-инжинирингом API из Anypoint UI dev tools — обошёл отсутствие RTF-поддержки в Terraform-провайдере.
- Сопровождал федеративные команды при переходе на новую IAM-стратегию в их AWS-аккаунтах.

#### Novartis DevOps Support — OAuth и PAM *(Novartis · ноя 2021 – июн 2023)*

**Стек:** AWS (ALB, API Gateway), Azure AD, OAuth 2.0, PKCE, Terraform, Python, Groovy, Jenkins, Bash, Chef, OpenResty, Lua

- Спроектировал и выпустил переиспользуемые Terraform-модули для OAuth2-авторизации на AWS API Gateway и ALB, принятые несколькими командами; реализовал example-сервис на Python с потоками Authorization Code и On-Behalf-Of.
- Построил Python Lambda для парсинга OAuth-токенов и проброса claims в заголовках; зеркальную логику реализовал на OpenResty (Nginx + Lua) для legacy-приложений.
- Написал Chef-рецепты и Jenkins-пайплайны с Conjur-плагином для инжекции PAM-кредов в CI/CD научных команд; сопроводил Bash-скриптами для разных PAM-флоу.

### ITS — CTO · янв 2020 – наст. вр. *(в ITS с июн 2018)*

*Инженерное руководство несколькими продуктами и внутренней инфраструктурой. Вырастил команду с 5 до 30 человек. Владею общекомпанейской инженерной методологией, пресейлом и поставкой проектов.*

#### Helpdesk Bot — автоматизация поддержки *(ITS · ноя 2023 – фев 2025)*

**Стек:** Python, aiogram, FastAPI, Docker, PostgreSQL, sqladmin, Todoist API

- Спроектировал и запустил Telegram + Todoist бот для технической поддержки на хакатонах; использован на 10 событиях Digital Breakthrough, включая национальный и международный финалы.
- Реализовал двустороннюю асинхронную коммуникацию между Telegram-пользователями и Todoist-агентами; масштабировал команду поддержки с 1 до 3 агентов через pull-модель распределения тикетов.
- Вёл проект end-to-end: архитектура, сборка команды, продакшен-запуск, CI/CD.

#### Microcirculation — детекция сосудов глаза *(Far East Innovations · сен 2021 – ноя 2023)*

**Стек:** Python, PyTorch, OpenCV, FastAPI, Vue, U-Net, QuPath

- Дообучил U-Net до качества сегментации 0.678 Dice/F1 для детекции кровеносных сосудов на снимках со щелевой лампы.
- Построил пост-процессинг на вычислительной геометрии: декомпозиция сосудов, скелетонизация, замер длины/ширины, классификация по метрикам офтальмологов.
- Калибровал оптические измерения с помощью напечатанных на 3D моделей глаз под каждый микроскоп для получения преобразований координат.
- Выложил как web-сервис на FastAPI + Vue с публичным демо на [eye.its.xyz](https://eye.its.xyz); руководил тремя бакалаврскими/магистерскими работами по сегментации и синтетическим данным; зарегистрировал свидетельство на БД; выступил с докладом про U-Net на митапе.

#### ML Showroom *(ITS · сен 2021 – фев 2022)*

**Стек:** Python

- Вёл доставку CV-демо-платформы как PM: проскоупил MVP, координировал команду из 3 инженеров, передал заказчику.

#### Career Assistant — мобильное приложение *(Kaspersky Lab · янв 2021 – апр 2021)*

**Стек:** Python, Flutter, Dart, Firebase, GraphQL

- Первый проект в роли PM: Flutter + Firebase приложение, соединяющее карьерных экспертов с junior-специалистами; проект закрылся до запуска, дал устойчивый урок про KISS и риски выбора стека.

#### Корпоративная база знаний *(ITS · окт 2020 – наст. вр.)*

**Стек:** Wiki.js, Docker Compose, PostgreSQL, Elasticsearch, Keycloak, SSO, Git

- Запустил и вырастил внутреннюю вики компании до 31 уникального контрибьютора (9 — с 50+ коммитами); SSO через корпоративный Keycloak.
- Развернул через Docker Compose + PostgreSQL с Git-синхронизацией контента: бэкап, отслеживание авторства, история версий.
- Стимулировал adoption через митапы по управлению знаниями; вики стала частью культуры компании.

#### XTHON — платформа для хакатонов *(ITS · июн 2020 – наст. вр.)*

**Стек:** Python, Flask, SQLAlchemy, JavaScript, React, Next.js, OpenResty, Nginx, Material UI, Docker

- Построил и вырастил XTHON в геймифицированную платформу онлайн-хакатонов на 100+ событий, включая Digital Breakthrough и Lisbon Hackathon; прошёл роли frontend → backend → DevOps → инженерный лид.
- Мигрировал лендинги на Next.js c SSR (ранее Pug + OpenResty meta-tag injection); собрал отдельную JS API-библиотеку на S3 для встраивания в legacy-страницы.
- Эволюционировал DevOps: отдельные репы и Jenkins → multi-stage Docker → приватные реестры (JCR → GitLab) → монорепа на GitHub Flow.
- Вёл рефакторинг бэкенда: вынес бизнес-логику из контроллеров в сервисы, добавил юнит-тесты в CI; управлял спринтами команды 2–12 человек.

#### ITS Core Infrastructure *(ITS · июн 2020 – наст. вр.)*

**Стек:** Jenkins, GitLab, Linux, Bash, Docker

- Построил и эксплуатирую внутреннюю платформу ITS с нуля — self-hosted GitLab + GitLab CI, Jenkins, Linux-серверы, контейнеризированный service mesh на Docker — поддерживая 30 инженеров и 100+ проведённых хакатонов.

#### Museum Guide — мобильное приложение *(ITS · июн 2018 – июн 2019)*

**Стек:** Python, React Native

- Сделал бэкенд (Python) и мобильное приложение (React Native) для аудиогида по музею.

#### Распознавание тюленей по аэрофотосъёмке *(ITS · май 2018 – май 2020)*

**Стек:** Python, OpenCV, PyTorch

- Обучил deep-learning модель (OpenCV + PyTorch) для детекции тюленей на снимках с БПЛА; эксперименты с аугментациями и преобразованиями цветового пространства.
- Защитил бакалаврский диплом в СПбПУ по этой работе.

### RUVENTS LTD — Backend-инженер · янв 2021 – окт 2021

#### FADM — поддержка web-приложения *(RUVENTS · янв 2021 – окт 2021)*

**Стек:** Python, Django, AngularJS

- Вёл production-поддержку портала на Django + AngularJS: добавил структурированное логирование и runbook по алертам, что сократило время триажа инцидентов.

## Личные проекты / Open Source

### sodg.rs — Rust-крейт (Surging Object DiGraph)

**Стек:** Rust, Cargo, GitHub Actions, codecov.

- Open-source библиотека для направленного графа с автоматическим сборщиком мусора, используется виртуальной машиной EO; [опубликована на crates.io](https://crates.io/crates/sodg) с CI-гейтами по coverage и линту в GitHub Actions.

### Matrix homeserver — production-развёртывание на Ansible

**Стек:** Ansible, Docker Compose, Matrix Synapse, LiveKit, Coturn, Matrix Auth Service (OIDC), PostgreSQL, Let's Encrypt, UFW, fail2ban.

- Воспроизводимый IaC для self-hosted Synapse с voice/video, OIDC-аутентификацией и system hardening; двухступенчатый деплой через Makefile (~10 минут с чистой VM).

### grand-chat — платформа real-time чата

**Стек:** Django 5, DRF, React + TypeScript, Centrifugo, PostgreSQL, Debezium (CDC), Prometheus, Grafana, Docker Compose.

- End-to-end real-time чат с CDC-стримингом обновлений из PostgreSQL в WebSocket-клиенты через Centrifugo; полный стек наблюдаемости (Prometheus + Grafana) внутри compose.

### tg-smm — мост Telegram → Hugo-блог

**Стек:** Python (async), python-telegram-bot, GitHub Git Data API, Kubernetes, Argo CD, Sealed Secrets, GitHub Actions, GHCR.

- Async-бот, буферизующий медиа-группы из Telegram и коммитящий отрендеренный Markdown прямо в репозиторий блога через GitHub API; GitOps-деплой в Kubernetes с Sealed Secrets at rest.

## Образование

### M.Sc. (не завершено), Прикладная математика — СПбПУ · 2020 – 2022

- Ментор курса «Алгоритмы и структуры данных».

### B.Sc., Прикладная математика — СПбПУ · 2016 – 2020

- Диплом: распознавание тюленей по аэрофотосъёмке (OpenCV, PyTorch).

## Языки

Русский (родной) · Английский (B2+)

## Ссылки

- Портфолио: [leins275.xyz](https://leins275.xyz)
- LinkedIn: [linkedin.com/in/leins275](https://linkedin.com/in/leins275)
- XTHON: [xthon.xyz](https://xthon.xyz)
- Eye Vessel Demo: [eye.its.xyz](https://eye.its.xyz)
- Доклад про U-Net: [youtu.be/unuBcZAFOvY](https://youtu.be/unuBcZAFOvY)
- Доклад про управление знаниями: [youtu.be/sdgjbPIgvRQ](https://youtu.be/sdgjbPIgvRQ)
