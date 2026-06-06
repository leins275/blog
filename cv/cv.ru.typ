#import "template.typ": *

#show: cv-doc.with(lang: "ru")

= Никита Лансков

_Старший инженер-программист · Измир, Турция · готов к переезду (ЕС)_

#text(size: 9.5pt)[#link("mailto:nikitalanskov@gmail.com")[nikitalanskov\@gmail.com] · #link("https://wa.me/905316014154")[+90 531 601 4154] · #link("https://linkedin.com/in/leins275")[linkedin.com/in/leins275] · #link("https://leins275.xyz")[leins275.xyz]]

#line(length: 100%, stroke: 0.4pt + luma(70%))

== О себе

Senior Software Engineer с 8 годами опыта поставки production backend-сервисов и облачной инфраструктуры (Python, AWS, Kubernetes, Terraform) для регулируемых клиентов (Novartis, Merck) в EPAM. Веду DevOps и CI/CD end-to-end --- мигрировал Multi-AZ RDS, CI/CD-платформы и HPC workflow-движки без downtime. Параллельно CTO инженерной консалтинговой компании на 30 человек, выросшей из 5.

== Ключевые компетенции

Инженерное лидерство · Облако (AWS) · DevOps и CI/CD · Архитектура решений · Identity и OAuth · IaC at scale

== Навыки

*Языки программирования* --- Python, TypeScript, JavaScript, Bash, Groovy, Lua, SQL, Dart

*Backend и веб* --- Django, DRF, FastAPI, Flask, React, Next.js, Vue, aiogram, python-telegram-bot

*Облако, IaC и оркестрация* --- AWS (EC2, S3, RDS, Lambda, API Gateway, CloudFront, VPC, EKS, IAM, Cognito, Backup), Terraform, Terragrunt, Ansible, Chef, Kubernetes, Helm, Argo CD, Sealed Secrets, Docker, Docker Compose, EasyBuild

*CI/CD и наблюдаемость* --- GitHub Actions, GitLab CI, Jenkins, Drone CI, pre-commit, uv, Make, Hugo, Nginx, OpenResty, Prometheus, Grafana

*Данные* --- PostgreSQL, MySQL, Elasticsearch, Firebase, Pandas

*Identity и безопасность* --- OAuth 2.0, PKCE, OpenID Connect, Keycloak, Azure AD, PAM/Conjur

*ML и Mobile* --- PyTorch, OpenCV, U-Net, QuPath, React Native, Flutter (Dart)

== Опыт работы

=== EPAM Systems --- Senior Software Engineer · ноя 2021 -- наст. вр.

_Backend и DevOps-инженерия для регулируемых life-sciences заказчиков (Novartis, Merck) --- IaC, CI/CD-платформы, OAuth и инструменты HPC workflow-движков._

- Мигрировал production RDS Merck iPaaS с single-instance на Multi-AZ с переносом данных под нагрузкой (zero downtime для федеративных команд) и реализовал кросс-аккаунтную репликацию снимков в S3 по политике Merck.
- Переплатформировал научный workflow-движок Cromwell для Novartis с Docker/Singularity на единый EasyBuild-модуль с Python, Perl и бинарём Cromwell --- убрав сопровождение container-runtime и пошаговую установку для HPC-пользователей.
- Полностью мигрировал CI/CD Document Search Chatbot Merck с Jenkins на GitHub Actions, подключил Artifactory как хранилище артефактов Lambda и открыл команде self-service деплой.
- Выпустил переиспользуемые Terraform-модули для OAuth 2.0-авторизации на AWS API Gateway и ALB в Novartis, принятые несколькими командами; добавил reference-сервис на Python с потоками Authorization Code + PKCE и On-Behalf-Of, и зеркальную реализацию на OpenResty (Nginx + Lua), которая позволила подключить legacy-приложения без изменения их кода.
- Построил систему алертинга iPaaS Merck с нуля --- Flask-webhook к Merck Mail API через SSL, cert-manager, правила алертов по EKS-нодам, квотам MuleSoft, Nginx и log-пайплайнам --- превратив on-call из слепого в инструментированный.
- Ранее: реверс-инжинирингом приватного API Anypoint автоматизировал провижининг MuleSoft RTF в обход пробела Terraform-провайдера; построил AWS Lambda + Jenkins пайплайн, импортирующий SharePoint-отчёты в MySQL и снявший ~4 часа ручной обработки в неделю; написал Chef-рецепты и Jenkins-Conjur пайплайны, инжектирующие PAM-кредениалы в CI/CD научных команд.

=== ITS --- CTO · янв 2020 -- наст. вр. _(в ITS с июн 2018)_

_Инженерное руководство несколькими продуктами и внутренней платформой компании. Вырастил команду с 5 до 30 инженеров. Владею общекомпанейской инженерной методологией, пресейлом и поставкой проектов._

- Построил и вырастил XTHON в геймифицированную платформу онлайн-хакатонов на 100+ событий (Digital Breakthrough, Lisbon Hackathon); прошёл роли frontend → backend → DevOps → инженерный лид, вёл спринты команды 2--12 инженеров и эволюционировал DevOps-стек: per-repo Jenkins + S3 → multi-stage Docker на приватных реестрах → монорепа на GitHub Flow.
- Построил и эксплуатирую внутреннюю инженерную платформу ITS с нуля --- self-hosted GitLab + GitLab CI, Jenkins, Linux-серверы, контейнеризированный service mesh на Docker --- поддерживая 30 инженеров и 100+ проведённых хакатонов.
- Поставил Microcirculation для Far East Innovations: дообучил U-Net до 0.678 Dice/F1 для сегментации кровеносных сосудов на снимках со щелевой лампы, построил пост-процессинг на вычислительной геометрии (декомпозиция, скелетонизация, замер длины/ширины, классификация по клиническим метрикам) и выложил web-сервис на FastAPI + Vue с публичным демо на #link("https://eye.its.xyz")[eye.its.xyz]; руководил тремя бакалаврскими/магистерскими работами и зарегистрировал свидетельство на БД.
- Запустил и вырастил Wiki.js базу знаний компании до 31 активного контрибьютора (9 --- с 50+ коммитами), SSO через корпоративный Keycloak; стимулировал adoption через внутренние митапы по управлению знаниями, встроив вики в дефолтный рабочий процесс команды.
- Спроектировал и запустил Telegram + Todoist Helpdesk Bot, обеспечивающий техподдержку 10 хакатонов Digital Breakthrough, включая национальный и международный финалы; масштабировал команду поддержки с 1 до 3 агентов через pull-модель распределения тикетов.
- Ранее: вёл ML Showroom (CV-демо-платформа) как PM с командой из 3 инженеров; первая роль PM на Flutter + Firebase career-assistant приложении для Kaspersky Lab (формирующий урок про KISS и риски стека); сделал Python-бэкенд и React Native-клиент для аудиогида по музею; обучил PyTorch + OpenCV модель детекции тюленей по аэрофотосъёмке (тема защищённого бакалаврского диплома в СПбПУ).

== Личные проекты / Open Source

=== Matrix homeserver --- production-развёртывание на Ansible

- Воспроизводимый IaC для self-hosted Synapse с voice/video (LiveKit, Coturn), OIDC-аутентификацией через Matrix Auth Service и system hardening (UFW, fail2ban); двухступенчатый деплой через Makefile доводит до production за ~10 минут с чистой VM.

=== tg-smm --- мост Telegram → Hugo-блог

- Async-сервис на python-telegram-bot, буферизующий медиа-группы из Telegram и коммитящий отрендеренный Markdown прямо в репозиторий блога через GitHub Git Data API; GitOps-деплой в Kubernetes с Sealed Secrets at rest.

== Образование

=== M.Sc. (не завершено), Прикладная математика --- СПбПУ · 2020 -- 2022

- Ментор курса «Алгоритмы и структуры данных».

=== B.Sc., Прикладная математика --- СПбПУ · 2016 -- 2020

- Диплом: распознавание тюленей по аэрофотосъёмке (OpenCV, PyTorch).

== Разговорные языки

Русский (родной) · Английский (B2+)

== Ссылки

- Портфолио: #link("https://leins275.xyz")[leins275.xyz]
- LinkedIn: #link("https://linkedin.com/in/leins275")[linkedin.com/in/leins275]
- XTHON: #link("https://xthon.xyz")[xthon.xyz]
- Eye Vessel Demo: #link("https://eye.its.xyz")[eye.its.xyz]
- Доклад про U-Net: #link("https://youtu.be/unuBcZAFOvY")[youtu.be/unuBcZAFOvY]
- Доклад про управление знаниями: #link("https://youtu.be/sdgjbPIgvRQ")[youtu.be/sdgjbPIgvRQ]
