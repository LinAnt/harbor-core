FROM goharbor/harbor-core:v2.8.1

USER root
COPY patched-entrypoint.sh	/harbor/patched-entrypoint.sh
RUN mkdir /etc/kore/ && chown harbor:harbor /etc/kore/ && chmod 0700 /etc/kore/ && chmod 775 /harbor/patched-entrypoint.sh

USER harbor

ENTRYPOINT [ "/harbor/patched-entrypoint.sh" ]
