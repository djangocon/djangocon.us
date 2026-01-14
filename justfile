@_default:
    just --list

# installs/updates all dependencies
@bootstrap:
    docker-compose pull
    docker-compose build

# invoked by continuous integration servers to run tests
@cibuild:
    just bootstrap

# removes generated files
@clean:
    rm -rf .vendor _site Gemfile.lock

# opens a console
@console:
    echo "TODO: console"

# restarts all docker services
@restart:
    docker-compose restart

# starts app
@server *ARGS:
    docker-compose up {{ ARGS }}

# sets up a project to be used for the first time
@setup:
    just bootstrap

# starts server in detached mode
@start +ARGS="--detach":
    just server {{ ARGS }}

# stops all docker services
@stop:
    docker-compose down

# follows docker container logs
@tail:
    docker-compose logs --follow --tail 100

# runs tests
@test:
    echo "TODO: test"

# updates a project to run at its current version
@update:
    just bootstrap

# ----

# formats the justfile
@fmt:
    just --fmt --unstable

# formats html and sorts tailwind classes
@lint:
    djhtml \
        --in-place \
        --tabwidth 2 \
        *.html _includes/*.html _layouts/*.html
    rustywind \
        --write \
        .

# generates screenshots using shot-scraper
@screenshots ARGS="--no-clobber":
    shot-scraper multi {{ ARGS }} ./shots.yml
