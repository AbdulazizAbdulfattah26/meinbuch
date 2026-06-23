# 1. Ein modernes Jupyter-Basisimage nutzen (bringt Python 3.11 und aktuelles pip mit!)
FROM jupyter/scipy-notebook:ubuntu-22.04

USER root

# System-Pakete updaten und Git installieren
RUN apt-get update && apt-get install -y --no-install-recommends git && rm -rf /var/lib/apt/lists/*

# System-Pakete updaten und Git installieren
RUN apt-get update && apt-get install -y --no-install-recommends git && rm -rf /var/lib/apt/lists/*

# 3. Binder-User (UID 1000) absichern
ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER=${NB_USER}
ENV NB_UID=${NB_UID}
ENV HOME=/home/${NB_USER}

# 4. Dateien in das richtige Verzeichnis kopieren und Rechte übergeben
COPY . ${HOME}
RUN chown -R ${NB_UID}:${NB_UID} ${HOME}

# Zurück zum Standard-User wechseln
USER ${NB_USER}
WORKDIR ${HOME}

ENTRYPOINT []