FROM balenalib/armv7hf-alpine

RUN [ "cross-build-start" ]

RUN set -uex; \
    echo "uname -a"; \
    uname -a ; \
    echo "cat /etc/os-release"; \
    cat /etc/os-release ;

RUN [ "cross-build-end" ]
