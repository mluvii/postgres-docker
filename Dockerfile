ARG PGVER=16
FROM postgres:${PGVER}

COPY fulltext_dicts/czech.affix /usr/share/postgresql/$PG_MAJOR/tsearch_data/czech.affix
COPY fulltext_dicts/czech.dict /usr/share/postgresql/$PG_MAJOR/tsearch_data/czech.dict
COPY fulltext_dicts/czech.stop /usr/share/postgresql/$PG_MAJOR/tsearch_data/czech.stop

COPY tsinit.sql /docker-entrypoint-initdb.d/tsinit.sql
