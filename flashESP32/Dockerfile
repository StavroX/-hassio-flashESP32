ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements for add-on
RUN apk add --no-cache \
        git grep wget py3-pip

RUN python3 -m pip install esptool

# RUN git clone https://github.com/espressif/esptool.git && \
#               cd esptool

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
