@echo off
call mvn clean package
call docker build -t ma.alaouiIsmaili/tp2PRGavecJSFAlaouiIsmaili .
call docker rm -f tp2PRGavecJSFAlaouiIsmaili
call docker run -d -p 9080:9080 -p 9443:9443 --name tp2PRGavecJSFAlaouiIsmaili ma.alaouiIsmaili/tp2PRGavecJSFAlaouiIsmaili