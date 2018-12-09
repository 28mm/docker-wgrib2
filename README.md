# docker-wgrib2

This project is a containerizeation of NOAA's wgrib2 package, used for decoding forecast data. Further discussion wgrib2 can be found [here](https://www.cpc.ncep.noaa.gov/products/wesley/wgrib2/). 

## Build/Install

Build the docker image with Make

```bash
[...]$ make build
```

Alternatively, a copy of the image is available on the Docker Hub, [here](https://hub.docker.com/r/28mm/wgrib2). 

```bash
[...]$ docker pull 28mm/wgrib2
```

## Execute

View the wgrib2 configuration.

```bash
[...]$ docker run -it 28mm/wgrib2 -config
```
