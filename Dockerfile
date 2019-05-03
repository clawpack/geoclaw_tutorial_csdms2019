
FROM clawpack/v5.5.0user_dockerimage:release


# Set up user
ENV NB_USER jovyan
ENV NB_UID 1000
ENV HOME /home/${NB_USER}

USER root

# User jovyan is already set up in clawpack/v5.5.0user_dockerimage
#RUN adduser --disabled-password \
#    --gecos "Default user" \
#    --uid ${NB_UID} \
#    ${NB_USER}


#RUN pip install --no-cache-dir notebook==5.*


# Make sure the contents of our repo are in ${HOME}
COPY . ${HOME}
RUN chown -R ${NB_UID} ${HOME}

#RUN mv /clawpack-v5.5.0 ${HOME}

# already installed in clawpack/v5.5.0user_dockerimage
#WORKDIR ${HOME}/clawpack-v5.5.0/clawpack
#RUN rm amrclaw classic clawutil forestclaw geoclaw petclaw pyclaw riemann visclaw
#WORKDIR ${HOME}/clawpack-v5.5.0
#RUN pip install --user -e .

USER ${NB_USER}

WORKDIR ${HOME}
CMD jupyter notebook --ip='*' --no-browser

