FROM jupyter/scipy-notebook:610bb8b938db
# install basic dependencies

# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache notebook

RUN mkdir snap
ADD * ./snap/
WORKDIR $HOME/snap
RUN ls
RUN pip install -r requirements.txt
WORKDIR $HOME
