# step1

FROM alpine

# step2 : install a software

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/main' >> /etc/apk/repositories
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.6/community' >> /etc/apk/repositories
RUN apk update
RUN apk add mongodb=3.4.4-r0
RUN apk add binutils

RUN mongo --version

# step2.5 : configure tht f=software

VOLUME [ "/data/db" ]
WORKDIR /data
EXPOSE 27017
RUN apk add isl
# step3 : set default comands
CMD [ "mongod" ]
