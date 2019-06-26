FROM anapsix/alpine-java:8u192b12_jdk
ENV version=1.3.3
ENV KE_HOME=/kafka-eagle
RUN apk update && \
        apk add curl sqlite && \
        curl -OL "https://github.com/smartloli/kafka-eagle-bin/archive/v${version}.tar.gz" && \
        tar -xzvf v${version}.tar.gz && \
        tar -xzvf kafka-eagle-bin-${version}/kafka-eagle-web-${version}-bin.tar.gz && \
        mv kafka-eagle-web-${version} /kafka-eagle && \
        rm -rf $v{version}.tar.gz kafka-eagle-bin-${version}
WORKDIR /kafka-eagle
COPY system-config.properties ./conf/system-config.properties
COPY entrypoint.sh ./bin/entrypoint.sh
CMD ["sh", "/kafka-eagle/bin/entrypoint.sh"]
