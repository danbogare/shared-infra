# Define phony targets to prevent conflicts with local files or folders of the same name
.PHONY: dev prod down

# Run the local development environment with override configurations
dev:
	docker compose -f docker-compose.yml -f docker-compose.dev.yml up -d

# Run the production stack
prod:
	docker compose up -d

# Spin down all containers, networks, and volumes created by compose
down:
	docker compose down
