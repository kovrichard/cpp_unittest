.PHONY: start stop restart build sh logs config

# \
!ifdef USE_LEGACY_DOCKER # \
compose_config=-f docker-compose.yml -f docker-compose-legacy.yml # \
!else
compose_config=-f docker-compose.yml
# \
!endif

# \
!ifndef 0 # \
test_db_settings="DATABASE_URL=$$TEST_DATABASE_URL" # \
!else
test_db_settings=DATABASE_URL=\$$TEST_DATABASE_URL
# \
!endif

container=ciffcaff

# start all the containers
start:
	docker-compose $(compose_config) up -d

# stop all the containers
stop:
	docker-compose $(compose_config) down

# restart containers
restart: stop start

# build the app container
build:
	docker-compose $(compose_config) build

# get a shell within the app container
sh:
	docker-compose $(compose_config) exec $(container) /bin/sh

# check console output
logs:
	docker-compose $(compose_config) logs -f

# show the combined compose file used
config:
	docker-compose $(compose_config) config
