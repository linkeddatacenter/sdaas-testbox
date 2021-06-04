![logo](http://linkeddata.center/resources/v4/logo/Logo-colori-trasp_oriz-640x220.png)

# sdaas-testbox

Swiss Army Knife to test sdaas application in a CD/CD process.
It build a docker image that contains:
- a fresh version of sdaas-ce engine
- git for repository test
- helm for chart testing
- shacl for rdf data compliance
- yq command line yaml access 
 

## Push to docker hub

To push a new docker image to docker hub:

	docker login
	docker build -t linkeddatacenter/sdaas-testbox .
	# input the docker hub credentials...
	docker tag linkeddatacenter/sdaas-testbox linkeddatacenter/sdaas-testbox:x.x.x
	docker push linkeddatacenter/sdaas-testbox

