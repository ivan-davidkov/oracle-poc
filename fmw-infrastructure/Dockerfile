# add wrapper script to perform application-specific health check on oracle database
FROM store/oracle/fmw-infrastructure:12.2.1.2

# switch to root
USER root

# copy script
COPY waiting.sh /u01/oracle/waiting.sh

# change owner on new script
RUN chown oracle:oracle /u01/oracle/waiting.sh

# change back to oracle
USER oracle

# run wrapper which will run the official script when DB is up
CMD ["/u01/oracle/waiting.sh", "/u01/oracle/container-scripts/createOrStartInfraDomain.sh"]
