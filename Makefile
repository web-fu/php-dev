all: help

help: ## Show this help text.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-32s\033[0m %s\n", $$1, $$2}'

bash-php-80: ## Executes command into fa-suite container
	docker exec -it php-dev_v80_1 bash

bash-php-81: ## Executes command into fa-suite container
	docker exec -it  php-devv_81_1 bash

bash-php-82: ## Executes command into fa-suite container
	docker exec -it php-dev_v82_1 bash

