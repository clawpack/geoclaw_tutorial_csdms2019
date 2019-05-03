
FROM clawpack/v5.5.0user_dockerimage:release
# this dockerhub image has a user jovyan and clawpack installed 
# in /home/jovyan/clawpack-v5.5.0

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

USER ${NB_USER}
WORKDIR ${HOME}
CMD jupyter notebook --ip='*' --no-browser

