# phpIPAM Apache container

# STAGE 1

FROM phpipam/phpipam-www:latest

WORKDIR /

# Run Apache
EXPOSE 80

ENTRYPOINT ["/sbin/tini", "--"]
CMD /start_apache2
