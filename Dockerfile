# postgres-nohugepages/Dockerfile
FROM postgres:17

# Disable huge_pages to avoid shared memory issues
RUN sed -i "s/^#*huge_pages.*/huge_pages = off/" /usr/share/postgresql/postgresql.conf.sample
