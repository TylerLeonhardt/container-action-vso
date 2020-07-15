FROM mcr.microsoft.com/powershell:latest

RUN apt-get update && apt-get install wget
RUN curl -L https://aka.ms/install-vso-linux | sh
RUN useradd -ms /bin/bash newuser
RUN chown -R newuser /github/home/
USER newuser

COPY LICENSE README.md /

COPY entrypoint.ps1 /entrypoint.ps1

ENTRYPOINT ["pwsh", "-Command", "/entrypoint.ps1"]
