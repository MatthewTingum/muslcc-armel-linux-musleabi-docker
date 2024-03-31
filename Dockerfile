FROM matthewtingum/dockerbuild:0.3-rc2

RUN wget -P /tmp/ http://musl.cc/armel-linux-musleabi-cross.tgz \
 && tar -xvf /tmp/armel-linux-musleabi-cross.tgz -C /tmp/ \
 && mkdir /opt/cross \
 && mv /tmp/armel-linux-musleabi-cross /opt/cross/ \
 && rm /tmp/armel-linux-musleabi-cross.tgz

ENV PATH="/opt/cross/armel-linux-musleabi-cross/bin/:$PATH"
