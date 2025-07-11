+++ 
priority    = 600
draft       = false
title       = "Cromwell"
description = "Поддержка движка для научных пайплайнов на новом HPC кластере"
client      = "Novartis"
roles       = ["Backend engineer"]
skills      = ["Python", "Pandas", "EasyBuild"]
start       = "Apr 2025"
end         = "now"
+++

Мой текущий проект. Мы занимаемся поддержкой [кромвеля](https://github.com/broadinstitute/cromwell) для нового HPC кластера. 

## 📈 Ключевые результаты

С начала работы произвел миграцию с Docker и Singularity на EasyBuild. Упаковал все необходимое для работы приложения в один модуль. Для упрощения процесса работы с зависимостями питона перла и некоторых других вещей, зависимости из requirements.txt были установлены при помощи postinstallcmds. Кромвель был отдельно собран и упакован в модуль по примеру из GitHub, с поправкой на нужную версию. После чего он и все остальные зависимости были объединены в бандл. 

Также занимаюсь разработкой программы для верификации структуры файлов, которые будут подаваться на обработку пайплайна. Это развитие уже существующего проекта, с изменением бизнес правил. Мной была сохранена базовая верхнеуровневая архитектура решения, такая как запуск процесса обработки, работа с очередью задач и сабмит новых джоб. Сама же логика проверок была переработана практически полностью. Я старался сохранить максимум имеющегося кода, но при этом иметь возможность постоянно расширять систему под уточнение требований. 
