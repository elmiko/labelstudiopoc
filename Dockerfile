# syntax=docker/dockerfile:1

FROM registry.access.redhat.com/ubi8/ubi
RUN yum -y install python39 libpq-devel && pip3 install label-studio
RUN mkdir --mode a+w /opt/app-root
ENV
CMD label-studio start
