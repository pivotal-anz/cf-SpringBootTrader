#!/bin/bash

cf cs p-circuit-breaker-dashboard standard circuit-breaker-dashboard
cf cs p-service-registry standard discovery-service
cf cs p-config-server standard config-server
cf cs p-mysql 100mb-dev traderdb

echo "sleep for 2 minutes for Spring CLoud Services to deploy.."
sleep 2m

cf push -f springboottrades-quotes/build/manifest.yml
cf push -f springboottrades-portfolio/build/manifest.yml
cf push -f springboottrades-accounts/build/manifest.yml
cf push -f springboottrades-web/build/manifest.yml

cf set-env accounts CF_TARGET https://api.sys.butterflycluster.com
cf set-env portfolio CF_TARGET https://api.sys.butterflycluster.com
cf set-env quotes CF_TARGET https://api.sys.butterflycluster.com
cf set-env webtrader CF_TARGET https://api.sys.butterflycluster.com

cf restage accounts
cf restage portfolio
cf restage quotes
cf restage webtrader
