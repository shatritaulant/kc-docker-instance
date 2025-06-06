FROM quay.io/keycloak/keycloak:24.0.3

ENV KC_HEALTH_ENABLED=true \
    KC_METRICS_ENABLED=true \
    KC_HTTP_ENABLED=true \
    KC_HOSTNAME=kc-docker-instance.onrender.com \
    KC_HOSTNAME_STRICT=false \
    KC_HOSTNAME_STRICT_HTTPS=false \
    KC_PROXY=edge \
    KC_BOOTSTRAP_ADMIN_USERNAME=admin \
    KC_BOOTSTRAP_ADMIN_PASSWORD=adminpass

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start"]
