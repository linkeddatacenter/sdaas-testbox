# Copyright (C) 2020-present LinkedData.Center - All Rights Reserved
FROM alpine/helm as helm
FROM mikefarah/yq as yq

FROM  linkeddatacenter/sdaas-ce:3.3.1

USER root

COPY --from=helm /usr/bin/helm /usr/bin/helm
COPY --from=yq /usr/bin/yq /usr/bin/yq


# Additional tools requirements:
# -git
# - unzip and zip 
# - csvtool,
# - shacl to test knowledge base integrity
RUN   apt-get update &&\
      apt-get install -y git zip raptor2-utils 


ENTRYPOINT ["/bin/bash"]