all: help

help: ## Show this help text.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-32s\033[0m %s\n", $$1, $$2}'

up:
	docker-compose up -d

bash-php-80:
	docker exec -it php-dev_v80_1 bash

bash-php-81:
	docker exec -it  php-devv_81_1 bash

bash-php-82:
	docker exec -it php-dev_v82_1 bash

