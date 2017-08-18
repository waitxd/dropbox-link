FROM frolvlad/alpine-glibc
ADD https://www.dropbox.com/download/?plat=lnx.x86_64 /opt/
COPY dropbox-link.sh /opt
CMD ["/opt/dropbox-link.sh"]