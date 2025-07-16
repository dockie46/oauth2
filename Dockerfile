FROM quay.io/keycloak/keycloak:24.0.3

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

RUN /opt/keycloak/bin/kc.sh build

CMD ["/opt/keycloak/bin/kc.sh", "start-dev", "--http-port=8080", "--hostname-strict=false"]
