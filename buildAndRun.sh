#!/bin/sh
mvn clean package && docker build -t ma.alaouiIsmaili/tp2PRGavecJSFAlaouiIsmaili .
docker rm -f tp2PRGavecJSFAlaouiIsmaili || true && docker run -d -p 9080:9080 -p 9443:9443 --name tp2PRGavecJSFAlaouiIsmaili ma.alaouiIsmaili/tp2PRGavecJSFAlaouiIsmaili