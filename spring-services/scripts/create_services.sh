#!/bin/bash

cf ds config-server -f
cf ds discovery-service -f
cf ds circuit-breaker-dashboard -f

cf cups config-server -p '{"uri":"http://config-server-ush.cfapps.io"}'
cf cups discovery-service -p '{"uri":"http://discovery-service-ush.cfapps.io"}'
cf cups circuit-breaker-dashboard -p '{"uri":"http://circuit-breaker-ush.cfapps.io"}'
cf cs elephantsql turtle traderdb
