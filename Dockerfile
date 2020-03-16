# Inheritance from bioconductor docker
FROM bioconductor/bioconductor_docker:devel

LABEL name="bioconductor/bioconductor_docker_basics" \
      version="0.99.0" \
      url="https://github.com/VallejosGroup/bioconductor_docker_basics" \
      maintainer="catalina.vallejos@igmm.ed.ac.uk" \
      description="Docker containing all requirements to run BASiCS" \
      license="Artistic-2.0"