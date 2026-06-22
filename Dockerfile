# 1. Basis-Image von Jupyter nutzen (stabil und sicher)
FROM jupyter/scipy-notebook:cf6258237ff9

USER root

# System aktualisieren und Git installieren
RUN apt-get update && apt-get install -y --no-install-recommends git && rm -rf /var/lib/apt/lists/*

# 2. WICHTIG: Jupytext und MyST installieren (wie in deinem Text gefordert!)
# jupytext sorgt dafür, dass deine .md Dateien als Notebooks geöffnet werden können.
RUN python3 -m pip install --no-cache-dir notebook jupyterlab jupyterhub mystmd altair pandas "jupytext>=1.16"

# 3. Binder-User (UID 1000) absichern
ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

# 4. Dateien in das richtige Verzeichnis kopieren und Rechte übergeben
# Wir nutzen ${REPO_DIR}, damit der Ordner im Binder-JupyterLab nicht leer ist!
COPY . ${REPO_DIR}
RUN chown -R ${NB_UID}:${NB_UID} ${REPO_DIR}

# Zurück zum Standard-User wechseln
USER ${NB_USER}
WORKDIR ${REPO_DIR}

ENTRYPOINT []