FROM node:7-onbuild

# set maintainer
LABEL maintainer "giahaoto01@gmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1
EXPOSE 8000