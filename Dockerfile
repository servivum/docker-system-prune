FROM docker:17.10

LABEL maintainer "Patrick Baber <patrick.baber@servivum.com>"

COPY run.sh /run.sh

CMD ["/run.sh"]