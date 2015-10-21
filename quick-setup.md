= Quick Setup Instructions

AWS PCF: https://console.pcf-demo.com

Demo needs two services, so run:

cf create-service p-mysql 100mb-dev traderdb

cf cups eureka-service -p '{"uri":"eureka-server.pcf-demo.com"}'

To deploy:

cf push -f manifest-ci.yml

This starts 5 applications, so be patient.


Once running check the eureka-dashboard: https://eureka-server.pcf-demo.com/

Test the quotes server is running: https://quotes.pcf-demo.com/quote/EMC
