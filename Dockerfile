FROM python:3.7

USER root

RUN pip install \
  Sphinx==2.4.4 \
  sphinxcontrib-confluencebuilder \
  recommonmark

COPY entrypoint entrypoint

ENTRYPOINT ["/entrypoint"]
