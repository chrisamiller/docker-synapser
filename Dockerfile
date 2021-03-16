FROM r-base
RUN rm /etc/apt/apt.conf.d/default
RUN apt-get update -y && apt-get install -y dpkg-dev zlib1g-dev libssl-dev libffi-dev && apt-get install -y curl libcurl4 libcurl4-openssl-dev
RUN R -e "install.packages("synapser", repos=c("http://ran.synapse.org", "http://cran.fhcrc.org"))"
