# Change Log
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/). 

## unreleased


## 1.0.0

First release

Swiss Army Knife to test sdaas applications in a CD/CI process.
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