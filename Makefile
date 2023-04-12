all: help

help: ## Show this help text.
	@grep -E '^[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-32s\033[0m %s\n", $$1, $$2}'

up: ## Start all containers.
	docker-compose up -d

down: ## Stop all containers
	docker-compose down

bash-v80: ## Start bash for php 8.0.
	docker exec -it --user $$(id -u):$$(id -g) php-dev-v80 bash

bash-v81: ## Start bash for php 8.1.
	docker exec -it --user $$(id -u):$$(id -g) php-dev-v81 bash

bash-v82: ## Start bash for php 8.2.
	docker exec -it --user $$(id -u):$$(id -g) php-dev-v82 bash

