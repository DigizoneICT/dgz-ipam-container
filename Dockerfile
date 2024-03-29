# phpIPAM Apache container

# STAGE 1

FROM phpipam/phpipam-www:v1.5.2

WORKDIR /

RUN apk update && apk upgrade

RUN   echo "\$db['ssl'] = true;  " >> /phpipam/config.docker.php
RUN   echo "\$db['ssl_verify'] = false;  " >> /phpipam/config.docker.php

# Run Apache
EXPOSE 80

ENTRYPOINT ["/sbin/tini", "--"]
CMD /start_apache2
