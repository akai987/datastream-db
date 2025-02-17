FROM postgres:17.2
COPY /pg_convergence.tar /home
COPY /init_cogesaf.sh /docker-entrypoint-initdb.d/init.sh
RUN chmod +x /docker-entrypoint-initdb.d/init.sh