ARG KEYCLOAK_VERSION
FROM jboss/keycloak:$KEYCLOAK_VERSION
ADD https://github.com/aerogear/keycloak-metrics-spi/releases/download/2.0.1/keycloak-metrics-spi-2.0.1.jar /opt/jboss/keycloak/standalone/deployments/keycloak-metrics-spi-2.0.1.jar
USER root
RUN chown -R jboss:root /opt/jboss/keycloak/standalone/deployments/ && chmod +x /opt/jboss/keycloak/standalone/deployments/keycloak-metrics-spi-2.0.1.jar && touch /opt/jboss/keycloak/standalone/deployments/keycloak-metrics-spi-2.0.2.jar.dodeploy
USER jboss
