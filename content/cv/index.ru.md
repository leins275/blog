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

Senior Software Engineer с 8 годами опыта поставки production backend-сервисов и облачной инфраструктуры — Python, Rust, AWS, Kubernetes, Terraform — для регулируемых корпоративных клиентов (Novartis, Merck) в EPAM. Проектирую CI/CD-пайплайны и веду DevOps-автоматизацию end-to-end; за плечами миграции критичных нагрузок без downtime — Multi-AZ RDS, CI/CD-платформы, HPC workflow-движки. Параллельно CTO инженерной консалтинговой компании на 30 человек, выросшей из 5: владею поставкой, технической методологией и пресейлом.

## Навыки

**Языки программирования** — Python, Rust, TypeScript, JavaScript, Bash, Groovy, Lua, SQL, Dart

**Backend и веб** — Django, DRF, FastAPI, Flask, React, Next.js, Vue, Centrifugo (WebSockets), aiogram, python-telegram-bot

**Облако и AWS** — EC2, S3, RDS, Lambda, API Gateway, CloudFront, VPC, EKS, IAM, Cognito, AWS Backup

**IaC и оркестрация** — Terraform, Terragrunt, Ansible, Chef, Kubernetes, Helm, Argo CD, Sealed Secrets, Docker, Docker Compose, EasyBuild

**CI/CD и инструменты** — GitHub Actions, GitLab CI, Jenkins, Drone CI, pre-commit, uv, Make, Hugo, Nginx, OpenResty

**Данные и стриминг** — PostgreSQL, MySQL, Elasticsearch, Firebase, Pandas, Debezium (CDC)

**Identity и наблюдаемость** — OAuth 2.0, PKCE, OpenID Connect, Keycloak, Azure AD, PAM/Conjur, Prometheus, Grafana

**Mobile и ML** — React Native, Flutter (Dart), PyTorch, OpenCV, U-Net, QuPath

**Прочее** — MuleSoft, Wiki.js

## Опыт работы

### EPAM Systems — Senior Software Engineer · ноя 2021 – наст. вр.

#### Cromwell — Scientific Pipeline Engine на HPC *(Novartis · апр 2025 – наст. вр.)*

**Стек:** Python, Pandas, EasyBuild, Cromwell, HPC

- Переплатформировал научный workflow-движок Cromwell с Docker/Singularity на единый EasyBuild-модуль с Python, Perl и бинарём Cromwell — убрав сопровождение container-runtime и пошаговую установку для HPC-пользователей.
- Переписал правила валидации входов для инструмента проверки задач на отправку, сохранив существующую архитектуру очереди и модернизировав бизнес-логику.
- Построил ETL на Pandas для кросс-системных reconciliation-данных, заменив ручную обработку для научных потребителей данных.

#### Document Search Chatbot (GCToC) *(Merck · ноя 2023 – фев 2025)*

**Стек:** Python, Terraform, AWS Lambda, AWS (API Gateway, S3, Cognito, CloudFront, VPC), JavaScript, Jenkins, GitHub Actions

- Полностью мигрировал CI/CD проекта с Jenkins на GitHub Actions — отрефакторил пайплайны и подключил Artifactory как хранилище артефактов Lambda, открыв команде self-service деплой.
- Построил автоматизацию на AWS Lambda + Jenkins, импортирующую SharePoint-отчёты в MySQL, что убрало ~4 часа ручной обработки в неделю.
- Развернул изолированное тестовое окружение под корпоративной security-моделью Merck — CloudFront-managed egress, S3 bucket policies, переопределения Cognito-пулов — сняв блокер для QA-команды.
- Закрыл пробелы в Terraform до полного покрытия IaC; настроил API Gateway через VPC endpoint за CloudFront для compliant-ingress.

#### iPaaS — платформа API-интеграции *(Merck · янв 2024 – дек 2024)*

**Стек:** Python, Terraform, Terragrunt, Kubernetes, AWS (EKS, RDS, S3), MuleSoft, Flask, Jenkins, GitHub Actions, Grafana

- Построил систему алертинга проекта с нуля — Flask-webhook к Merck Mail API через SSL, рефакторинг cert-manager в Kubernetes, правила алертов по EKS-нодам, квотам MuleSoft, Nginx и log-пайплайнам — превратив on-call из слепого в инструментированный.
- Мигрировал production RDS с single-instance на Multi-AZ с переносом данных под нагрузкой (zero downtime для федеративных команд); реализовал compliant backup-флоу с кросс-аккаунтной репликацией снимков в S3 по политике Merck.
- Автоматизировал провижининг MuleSoft RTF на Python, реверс-инжинирингом приватного API Anypoint UI — закрыл пробел Terraform-провайдера и разблокировал IaC-adoption.
- Перевёл федеративные команды на новую IAM-стратегию в их AWS-аккаунтах, заменив ad-hoc паттерны доступа.

#### Novartis DevOps Support — OAuth и PAM *(Novartis · ноя 2021 – июн 2023)*

**Стек:** AWS (ALB, API Gateway), Azure AD, OAuth 2.0, PKCE, Terraform, Python, Groovy, Jenkins, Bash, Chef, OpenResty, Lua

- Выпустил переиспользуемые Terraform-модули для OAuth 2.0-авторизации на AWS API Gateway и ALB, принятые несколькими командами Novartis; добавил reference-сервис на Python с потоками Authorization Code + PKCE и On-Behalf-Of.
- Построил Python Lambda для парсинга OAuth-токенов и проброса claims в заголовках на уровне edge; зеркальную логику реализовал на OpenResty (Nginx + Lua), что позволило подключить legacy-приложения без изменения их кода.
- Написал Chef-рецепты и Jenkins-Conjur пайплайны, инжектирующие PAM-кредениалы в CI/CD научных команд, заменив ручное обращение с секретами в нескольких PAM-флоу.

### ITS — CTO · янв 2020 – наст. вр. *(в ITS с июн 2018)*

*Инженерное руководство несколькими продуктами и внутренней платформой компании. Вырастил команду с 5 до 30 инженеров. Владею общекомпанейской инженерной методологией, пресейлом и поставкой проектов.*

#### Helpdesk Bot — автоматизация поддержки *(ITS · ноя 2023 – фев 2025)*

**Стек:** Python, aiogram, FastAPI, Docker, PostgreSQL, sqladmin, Todoist API

- Спроектировал и запустил Telegram + Todoist бот, обеспечивающий техподдержку 10 хакатонов Digital Breakthrough, включая национальный и международный финалы.
- Реализовал двустороннюю асинхронную коммуникацию между Telegram-пользователями и Todoist-агентами; масштабировал команду поддержки с 1 до 3 агентов через pull-модель распределения тикетов.
- Владел поставкой end-to-end: архитектура, сборка команды, CI/CD, продакшен-запуск.

#### Microcirculation — детекция сосудов глаза *(Far East Innovations · сен 2021 – ноя 2023)*

**Стек:** Python, PyTorch, OpenCV, FastAPI, Vue, U-Net, QuPath

- Дообучил U-Net до качества 0.678 Dice/F1 для сегментации кровеносных сосудов на снимках со щелевой лампы.
- Построил пост-процессинг на вычислительной геометрии — декомпозиция сосудов, скелетонизация, замер длины/ширины, классификация по метрикам офтальмологов — превращающий сырые маски в клинически валидные измерения.
- Калибровал оптические измерения 3D-печатными моделями глаз под каждый микроскоп для получения преобразований координат.
- Выложил web-сервис на FastAPI + Vue с публичным демо на [eye.its.xyz](https://eye.its.xyz); руководил тремя бакалаврскими/магистерскими работами, зарегистрировал свидетельство на БД и выступил с докладом про U-Net на митапе.

#### ML Showroom *(ITS · сен 2021 – фев 2022)*

**Стек:** Python

- Вёл поставку CV-демо-платформы как PM: проскоупил MVP, координировал команду из 3 инженеров, передал заказчику.

#### Career Assistant — мобильное приложение *(Kaspersky Lab · янв 2021 – апр 2021)*

**Стек:** Python, Flutter, Dart, Firebase, GraphQL

- Первая роль PM: Flutter + Firebase приложение, соединяющее карьерных экспертов с junior-специалистами. Проект закрылся до запуска — формирующий урок про KISS и риски выбора стека, который с тех пор задаёт мои решения по скоупингу.

#### Корпоративная база знаний *(ITS · окт 2020 – наст. вр.)*

**Стек:** Wiki.js, Docker Compose, PostgreSQL, Elasticsearch, Keycloak, SSO, Git

- Запустил и вырастил Wiki.js базу знаний компании до 31 активного контрибьютора (9 — с 50+ коммитами); SSO через корпоративный Keycloak.
- Развернул на Docker Compose + PostgreSQL с Git-синхронизацией контента для бэкапа, отслеживания авторства и истории версий.
- Стимулировал adoption через внутренние митапы по управлению знаниями, встроив вики в дефолтный рабочий процесс команды.

#### XTHON — платформа для хакатонов *(ITS · июн 2020 – наст. вр.)*

**Стек:** Python, Flask, SQLAlchemy, JavaScript, React, Next.js, OpenResty, Nginx, Material UI, Docker

- Построил и вырастил XTHON в геймифицированную платформу онлайн-хакатонов на 100+ событий (Digital Breakthrough, Lisbon Hackathon); прошёл роли frontend → backend → DevOps → инженерный лид.
- Мигрировал SPA-лендинги на Next.js SSR (на смену Pug + OpenResty meta-tag injection) и собрал отдельную JS API-библиотеку на S3 для встраивания в legacy-страницы партнёров.
- Эволюционировал DevOps-стек: per-repo Jenkins + S3 → multi-stage Docker на приватных реестрах (JCR → GitLab) → монорепа на GitHub Flow, на каждом шаге снижая трение релизов.
- Вёл рефакторинг бэкенда: вынес бизнес-логику из контроллеров в сервисы, добавил юнит-тесты в CI; вёл спринты команды 2–12 инженеров.

#### ITS Core Infrastructure *(ITS · июн 2020 – наст. вр.)*

**Стек:** Jenkins, GitLab, Linux, Bash, Docker

- Построил и эксплуатирую внутреннюю инженерную платформу ITS с нуля — self-hosted GitLab + GitLab CI, Jenkins, Linux-серверы, контейнеризированный service mesh на Docker — поддерживая 30 инженеров и 100+ проведённых хакатонов.

#### Museum Guide — мобильное приложение *(ITS · июн 2018 – июн 2019)*

**Стек:** Python, React Native

- Сделал Python-бэкенд и React Native-клиент для аудиогида по музею.

#### Распознавание тюленей по аэрофотосъёмке *(ITS · май 2018 – май 2020)*

**Стек:** Python, OpenCV, PyTorch

- Обучил deep-learning модель (PyTorch + OpenCV) для детекции тюленей на снимках с БПЛА; эксперименты с аугментациями и преобразованиями цветового пространства.
- Тема защищённого бакалаврского диплома в СПбПУ.

### RUVENTS LTD — Backend-инженер · янв 2021 – окт 2021

#### FADM — поддержка web-приложения *(RUVENTS · янв 2021 – окт 2021)*

**Стек:** Python, Django, AngularJS

- Вёл production-поддержку портала на Django + AngularJS; ввёл структурированное логирование и runbook по алертам, что сократило время триажа инцидентов.

## Личные проекты / Open Source

### sodg.rs — Rust-крейт (Surging Object DiGraph)

**Стек:** Rust, Cargo, GitHub Actions, codecov.

- Open-source структура данных направленного графа с автоматическим сборщиком мусора, используется виртуальной машиной EO; [опубликована на crates.io](https://crates.io/crates/sodg) с CI-гейтами по coverage и линту в GitHub Actions.

### Matrix homeserver — production-развёртывание на Ansible

**Стек:** Ansible, Docker Compose, Matrix Synapse, LiveKit, Coturn, Matrix Auth Service (OIDC), PostgreSQL, Let's Encrypt, UFW, fail2ban.

- Воспроизводимый IaC для self-hosted Synapse с voice/video, OIDC-аутентификацией и system hardening; двухступенчатый деплой через Makefile доводит до production за ~10 минут с чистой VM.

### grand-chat — платформа real-time чата

**Стек:** Django 5, DRF, React + TypeScript, Centrifugo, PostgreSQL, Debezium (CDC), Prometheus, Grafana, Docker Compose.

- End-to-end real-time чат: изменения PostgreSQL стримятся в WebSocket-клиенты через Debezium CDC → Centrifugo; полный стек наблюдаемости Prometheus + Grafana внутри compose.

### tg-smm — мост Telegram → Hugo-блог

**Стек:** Python (async), python-telegram-bot, GitHub Git Data API, Kubernetes, Argo CD, Sealed Secrets, GitHub Actions, GHCR.

- Async-бот, буферизующий медиа-группы из Telegram и коммитящий отрендеренный Markdown прямо в репозиторий блога через GitHub Git Data API; GitOps-деплой в Kubernetes с Sealed Secrets at rest.

## Образование

### M.Sc. (не завершено), Прикладная математика — СПбПУ · 2020 – 2022

- Ментор курса «Алгоритмы и структуры данных».

### B.Sc., Прикладная математика — СПбПУ · 2016 – 2020

- Диплом: распознавание тюленей по аэрофотосъёмке (OpenCV, PyTorch).

## Разговорные языки

Русский (родной) · Английский (B2+)

## Ссылки

- Портфолио: [leins275.xyz](https://leins275.xyz)
- LinkedIn: [linkedin.com/in/leins275](https://linkedin.com/in/leins275)
- XTHON: [xthon.xyz](https://xthon.xyz)
- Eye Vessel Demo: [eye.its.xyz](https://eye.its.xyz)
- Доклад про U-Net: [youtu.be/unuBcZAFOvY](https://youtu.be/unuBcZAFOvY)
- Доклад про управление знаниями: [youtu.be/sdgjbPIgvRQ](https://youtu.be/sdgjbPIgvRQ)
