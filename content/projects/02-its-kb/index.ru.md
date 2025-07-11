+++ 
priority    = 125
date        = 2020-10-11T11:10:51+03:00
draft       = false
title       = "Корпоративная база знаний"
description = "Структурирование передачи зананий в компании"
client      = "ITS"
roles       = ["Project manager", "Business analyst", "DevOps"]
skills      = ["Git", "Knowledge sharing", "Change management", "PostgreSQL", "SSO", "Keycloak", "Docker"]
start       = "Окт 2020"
end         = "now"
+++

На втором году работы в компании ITS я начал системно задумываться о сохранении и передаче знаний внутри команды. Мотивацией послужило [вдохновляющее видео](https://youtu.be/9hruCcHC4FY?feature=shared), после просмотра которого я решил запустить внутреннюю корпоративную базу знаний.

Основной целью проекта было создание общего пространства, в котором сотрудники могли бы удобно фиксировать, структурировать и передавать знания без барьеров по доступу. Важно было обеспечить как техническую устойчивость решения, так и культуру его использования.

## 📈 Ключевые результаты и дальнейшее развитие
С 2020 года численность команды выросла с 5 до 30 человек. При этом, согласно логам git-репозитория базы знаний, в проекте приняли участие 31 уникальный контрибутор, из которых 9 сотрудников сделали более 50 коммитов каждый. Это свидетельствует о том, что база знаний не просто существует, но и активно используется и развивается.

Со временем изменилась и роль самой вики: если в начале это был скорее мой личный публичный блокнот, то позже она стала полноценным рабочим инструментом для всей команды — от новичков до руководства.

Для мотивации сотрудников я проводил инициативы, направленные на повышение вовлеченности, включая [митап по управлению знаниями](https://youtu.be/sdgjbPIgvRQ), где рассказывал о подходах к формализации и передаче знаний внутри команд.

## 🏗 Архитектура решения и процесс разработки
В качестве платформы была выбрана [Wiki.js](https://js.wiki/)— удобная, современная система для ведения вики-документации. Первая версия была развернута в Docker Compose вместе с PostgreSQL и Elasticsearch. Однако позже Elasticsearch был отключён из-за высокого потребления ресурсов, а поиск был переведён на встроенный движок — его производительности оказалось достаточно.

Хранилище знаний синхронизируется с git-репозиторием, что позволяет:
- обеспечивать надежную резервную копию базы знаний
- отслеживать авторство и изменения через историю коммитов

Позже мной была внедрена SSO-авторизация через корпоративный Keycloak, что обеспечило бесшовный доступ для всех сотрудников компании.

## ⚙️ Детали реализации, особенности и сложности
- Система настроена как максимально открытая и горизонтальная — все сотрудники могут читать и редактировать любую информацию. Это снижает барьер входа и стимулирует живое обновление базы.
- Для информации, требующей ограниченного доступа, используются сторонние инструменты (например, Google Docs).
- Проект изначально стартовал как личная инициатива, но со временем стал неотъемлемой частью корпоративной культуры.
- Благодаря синхронизации с git и простоте CI/CD-подхода, платформа легко обслуживается и масштабируется под новые требования.

## Ссылки
- [Первое видео, которое меня вдохновило к развитию в направлении управления знаниями](https://youtu.be/9hruCcHC4FY?feature=shared)
- [Мой митап по управлению знаниями](https://youtu.be/sdgjbPIgvRQ)
- [WikiJS](https://js.wiki/)