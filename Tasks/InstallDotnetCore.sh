#!/usr/bin/env bash
mkdir -p /opt/dotnet \
    && cd /opt/dotnet \
    && wget https://dot.net/v1/dotnet-install.sh \
    && chmod 775 ./dotnet-install.sh \
    && ./dotnet-install.sh \
    && cp -rf /root/.dotnet/* /opt/dotnet \
    && rm -rf /root/.dotnet \
    && ln -s /opt/dotnet/dotnet /usr/local/bin