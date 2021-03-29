# lsstsqre/inituserhome and lsstsqre/initsmersh
# leave CMD at ["/sis"] to give an agent a home
# set CMD to ["/smersh"] to retire the agent
FROM alpine:latest
COPY entrypoint.sh /
CMD ["/entrypoint.sh"]
