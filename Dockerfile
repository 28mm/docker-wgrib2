FROM alpine:latest

RUN apk add --no-cache gcc musl-dev gfortran make

ENV CC gcc
ENV FC gfortran
ENV USE_NETCDF3 0
ENV USE_NETCDF4 0

COPY 3rd-party/wgrib2.tgz .
RUN tar -xzf wgrib2.tgz \
  && cd grib2 \
  && make

ENTRYPOINT [ "/grib2/wgrib2/wgrib2" ]
