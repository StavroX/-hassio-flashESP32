ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

# Install requirements for add-on
RUN apt-get update &&\
    apt-get install -y \
    python3-pip git grep wget

RUN python3 -m pip install esptool

# RUN git clone https://github.com/espressif/esptool.git && \
#               cd esptool

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
