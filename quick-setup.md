= Quick Setup Instructions

AWS PCF: https://console.pcf-demo.com

Demo needs two services, so run:

cf create-service p-mysql 100mb-dev traderdb

cf cups eureka-service -p '{"uri":"eureka-server.pcfdemo.info"}'

To deploy:

cf push -f manifest-ci.yml

This starts 5 applications, so be patient.


Once running check the eureka-dashboard: https://eureka-server.pcfdemo.info

Test the quotes server is running: https://quotes.pcfdemo.info/quote/EMC
