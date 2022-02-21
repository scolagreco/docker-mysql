FROM mysql:5.7.17

ENV  MYSQL_ROOT_PASSWORD my-secret-pw

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 3306
CMD ["mysqld"]

# Metadata params
ARG BUILD_DATE
ARG VERSION
ARG VCS_URL
ARG VCS_REF

# Metadata
LABEL maintainer="Stefano Colagreco <stefano@colagreco.it>" \
        org.label-schema.name="MySQL 5.7" \
        org.label-schema.build-date=$BUILD_DATE \
        org.label-schema.version=$VERSION \
        org.label-schema.vcs-url=$VCS_URL \
        org.label-schema.vcs-ref=$VCS_REF \
        org.label-schema.description="Docker Image MySQL con aggiunta una password di default."
