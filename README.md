![logo](http://linkeddata.center/resources/v4/logo/Logo-colori-trasp_oriz-640x220.png)

# sdaas-testbox

Swiss Army Knife to test SDaaS applications in a CD/CI process.
It build a docker image that contains:
- a sdaas-ce engine v 3.1.1 already including
  - openjdk
  - git for repository test
  - unzip
  - csvtool
  - shacl for rdf data compliance
  - bats
  - jq
- zip
- helm for chart testing
- yq command line yaml access
- rapper for rdf parsing

Usage examples:

- `docker run -ti linkeddatacenter/sdaas-testbox` executes a bash shell as root to allow further tools installation.
- `docker run -ti --user jetty --entrypoint /sdaas-entrypoint.sh linkeddatacenter/sdaas-testbox` executes a sdaas shell as jetty user with a micro graph db embedded

## Push to docker hub

To push a new docker image to docker hub:

	docker login
	docker build -t linkeddatacenter/sdaas-testbox .
	# input the docker hub credentials...
	docker tag linkeddatacenter/sdaas-testbox linkeddatacenter/sdaas-testbox:1.0.0
	docker push linkeddatacenter/sdaas-testbox
	docker push linkeddatacenter/sdaas-testbox:1.0.0

