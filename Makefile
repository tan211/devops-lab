SHELL := /bin/bash

DC_RUN_ARGS := -f docker-compose.yml

export HOST_UID := $(shell id -u)
export HOST_GID := $(shell id -g)

.PHONY: up down build ps logs

up:
	docker compose $(DC_RUN_ARGS) up -d --remove-orphans

down:
	docker compose $(DC_RUN_ARGS) down

build:
	docker compose $(DC_RUN_ARGS) build

ps:
	docker compose $(DC_RUN_ARGS) ps

logs:
	docker compose $(DC_RUN_ARGS) logs -f