# Inheritance from bioconductor docker
FROM bioconductor/bioconductor_docker:devel

LABEL name="bioconductor/bioconductor_docker_basics" \
      version="0.0.1" \
      url="https://github.com/VallejosGroup/bioconductor_docker_basics" \
      maintainer="catalina.vallejos@igmm.ed.ac.uk" \
      description="Docker containing all requirements to run BASiCS" \
      license="Artistic-2.0"
      
# Update apt-get
# Follows Bioc suggestion, required to compile Rmarkdown into pdf
RUN apt-get update \
	&& apt-get install -y --no-install-recommends apt-utils \
	&& apt-get install -y --no-install-recommends \
	texlive \
	texlive-latex-extra \
	texlive-fonts-extra \
	texlive-bibtex-extra \
	texlive-science \
	texi2html \
	texinfo \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*
	
# Install R packages from CRAN
COPY install_cran.R /tmp
RUN Rscript /tmp/install_cran.R

# Install R packages from Bioconductor
COPY install_bioc.R /tmp
RUN Rscript /tmp/install_bioc.R