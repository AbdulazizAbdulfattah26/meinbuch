# 1. Basis-Image von Jupyter nutzen
FROM jupyter/scipy-notebook:cf6258237ff9

USER root

# System aktualisieren und Git installieren
RUN apt-get update && apt-get install -y --no-install-recommends git && rm -rf /var/lib/apt/lists/*

# WICHTIG: Pip systemweit RADIKAL auf die neueste Version bringen
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py && rm get-pip.py

# 2. Jetzt mit dem brandneuen Pip alle Pakete installieren
RUN pip3 install --no-cache-dir notebook jupyterlab jupyterhub mystmd altair pandas "jupytext>=1.15.0"

# 3. Binder-User (UID 1000) absichern
ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

# 4. Dateien in das richtige Verzeichnis kopieren und Rechte übergeben
COPY . ${REPO_DIR}
RUN chown -R ${NB_UID}:${NB_UID} ${REPO_DIR}

# Zurück zum Standard-User wechseln
USER ${NB_USER}
WORKDIR ${REPO_DIR}

ENTRYPOINT []