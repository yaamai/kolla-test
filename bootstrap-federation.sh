source /etc/kolla/admin-openrc.sh
openstack domain create federated_domain
openstack project create federated_project --domain federated_domain
openstack group create federated_users
openstack role add --group federated_users --domain federated_domain Member
openstack role add --group federated_users --project federated_project Member

openstack identity provider create --remote-id https://10.168.142.1:4444/ myidp
openstack mapping create --rules rules.json myidp_mapping
openstack federation protocol create openid --mapping myidp_mapping --identity-provider myidp
