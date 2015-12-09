#!/bin/bash
#do this first and get the route names and us them in cf cups below
#cf push -f spring-services/manifest-services.yml

cf cups config-server -p '{"uri":"http://config-server-ush.cfapps.io"}'
cf cups discovery-service -p '{"uri":"http://discovery-service-riverine-sympodium.cfapps.io"}'
cf cups circuit-breaker-dashboard -p '{"uri":"http://circuit-breaker-dashboard-cochleate-sniveler.cfapps.io"}'
cf cs elephantsql turtle traderdb

cf push -f springboottrades-quotes/build/manifest.yml
cf push -f springboottrades-portfolio/build/manifest.yml
cf push -f springboottrades-accounts/build/manifest.yml
cf push -f springboottrades-web/build/manifest.yml
