FROM python:3.11-bookworm

ARG venv_name=env

RUN apt-get clean
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install git
RUN apt-get -y install vim net-tools

ENV PATH="/opt/conda/bin:${PATH}"

RUN mkdir -p ~/miniconda3
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
RUN bash ~/miniconda3/miniconda.sh -b -u -p /opt/conda
RUN rm -rf ~/miniconda3/miniconda.sh
# Make RUN commands use the new environment:

# create conda environment
RUN conda init bash \
    && conda install python=3.11

RUN pip install donkeycar[pc]

