docker exec -it keystone \
  yum -y install \
    https://github.com/zmartzone/mod_auth_openidc/releases/download/v2.3.8/mod_auth_openidc-2.3.8-1.el7.x86_64.rpm \
    https://github.com/zmartzone/mod_auth_openidc/releases/download/v2.3.0/cjose-0.5.1-1.el7.centos.x86_64.rpm
