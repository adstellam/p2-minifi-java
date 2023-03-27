FROM apache/nifi-minifi:latest
USER root
ENV MINIFI_HOME /opt/minifi/minifi-current
ADD ./conf/config.yml $MINIFI_HOME/conf/config.yml
RUN chown -R minifi:minifi $MINIFI_HOME
WORKDIR $MINIFI_HOME
USER minifi