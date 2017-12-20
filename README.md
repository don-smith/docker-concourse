# A Dockerised Concourse environment

A Docker setup that let's you run Concourse pipelines locally.

The instructions used to create this repo are on the [Concourse website](https://concourse.ci). More links below.


## Requirements

* Docker
* Docker Compose
* Concourse `fly` CLI tool


## Setup

1. `git clone https://github.com/don-smith/docker-concourse ~/.concourse`
2. `cd ~/.concourse`
3. `sudo ./generate-keys.sh`
4. `export CONCOURSE_EXTERNAL_URL=http://[your_local_ip]:8080`
5. `docker-compose up`

More info [here](https://concourse.ci/docker-repository.html).


## Create a pipeline

1. `fly -t dkr login -c http://[your_local_ip]:8080` (`concourse`/`changeme`)
2. `fly -t dkr set-pipeline -p hello-world -c hello.yml`
3. `fly -t dkr unpause-pipeline -p hello-world`
4. Go to (http://[your_local_ip]:8080) and login with `concourse`/`changeme`
5. Check out the hello-world pipeline

More info [here](https://concourse.ci/fly-cli.html).

