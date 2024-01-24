FROM alpine:3.15
RUN apk add libcap
RUN apk add iperf
RUN /usr/sbin/setcap cap_net_admin+ep /bin/busybox
USER 1000
