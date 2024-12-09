FROM debian

COPY . /steamcmd-server-setup

CMD ["./steamcmd-server-setup/prereqs.sh"]
