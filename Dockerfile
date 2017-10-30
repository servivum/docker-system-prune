FROM docker:17.10

LABEL maintainer "Patrick Baber <patrick.baber@servivum.com>"

ARG "version=0.1.0-dev"
ARG "build_date=unknown"
ARG "commit_hash=unknown"
ARG "vcs_url=unknown"
ARG "vcs_branch=unknown"

COPY run.sh /run.sh

CMD ["/run.sh"]
