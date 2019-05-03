
FROM clawpack/v5.5.0_dockerimage:release


# Set up user
ENV NB_USER jovyan
ENV NB_UID 1000
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}


RUN pip install --no-cache-dir notebook==5.*


# Make sure the contents of our repo are in ${HOME}
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
RUN mv /clawpack-v5.5.0 ${HOME}
USER ${NB_USER}

CMD jupyter notebook --ip='*' --no-browser

