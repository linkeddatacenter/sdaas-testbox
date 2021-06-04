# Copyright (C) 2020-present LinkedData.Center - All Rights Reserved
FROM alpine/helm as helm
FROM mikefarah/yq as yq

FROM  linkeddatacenter/sdaas-ce:3.2.2

USER root

COPY --from=helm /usr/bin/helm /usr/bin/helm
COPY --from=yq /usr/bin/yq /usr/bin/yq

ARG SHACLVER=1.3.2
ARG SHACLROOT=/opt/shacl-${SHACLVER}/bin

# Additional tools requirements:
# -git
# - unzip and zip 
# - csvtool,
# - shacl to test knowledge base integrity
RUN   apt-get update &&\
      apt-get install -y git zip unzip csvtool &&\
      curl --output /tmp/shacl.zip  https://repo1.maven.org/maven2/org/topbraid/shacl/${SHACLVER}/shacl-${SHACLVER}-bin.zip &&\
      unzip /tmp/shacl.zip -d /opt &&\
      chmod +x ${SHACLROOT}/*
      
USER jetty


ENV PATH=${SHACLROOT}:${PATH}
ENV SD_CACHE=/tmp/sdaas
