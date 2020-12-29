FROM jboss/keycloak:10.0.2
ADD https://github.com/aerogear/keycloak-metrics-spi/releases/download/2.1.0/keycloak-metrics-spi-2.1.0.jar /opt/jboss/keycloak/standalone/deployments/keycloak-metrics-spi-2.1.0.jar
USER root
RUN chown -R jboss:root /opt/jboss/keycloak/standalone/deployments/ && chmod +x /opt/jboss/keycloak/standalone/deployments/keycloak-metrics-spi-2.1.0.jar && touch /opt/jboss/keycloak/standalone/deployments/keycloak-metrics-spi-2.1.0.jar.dodeploy
USER jboss
