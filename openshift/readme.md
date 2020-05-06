# network
#network-script file
PEER_DNS=yes
NM_CONTROLLED=yes
os_firewall_use_firewalld=true in the Ansible inventory file
add host to /etc/hosts file
## REQUIRED PORTS


# install base requirement
wget git net-tools bind-utils yum-utils iptables-services bridge-utils bash-completion kexec-tools sos psacct
python3-jwcrypto
python3-pyOpenSSL
python3-lxml
ansible

## install docker
yum-config-manager  --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Configuring Docker Storage
thin pool storage
overlayfs
## thin pool storage
use an additional block device, In /etc/sysconfig/docker-storage-setup
DEVS=/dev/vdc
VG=docker-vg
then run docker-storage-setup
Verify your configuration. Confirm that the /etc/sysconfig/docker-storage file has dm.thinpooldev and docker-pool logical volume values
Start or restart Docker

# Managing container logs
append --log-opt max-size=5M --log-opt max-file=3 to the OPTIONS line
Restart the Docker
You can view the container logs in the /var/lib/docker/containers/<hash>/ directory on the node where the container is running.

# ansible configuration
In inventory file
[OSEv3:vars]
openshift_deployment_type=origin
os_firewall_use_firewalld=true
openshift_pkg_version='-3.11.0'
openshift_disable_check=memory_availability,disk_availability
openshift_master_identity_providers=[{'name': 'htpasswd_auth','login': 'true', 'challenge': 'true','kind': 'HTPasswdPasswordIdentityProvider',}]
openshift_master_default_subdomain=ns1.test.co.th

[master]


[nodes]

[etcd]

# wildcard dns
Change hostname od each node to
nodename.<ip>.xip.io

revise /etc/hosts to
<ip>    master    master.<ip>.xip.io
<ip>    infra    infra.<ip>.xip.io
<ip>    node1    node1.<ip>.xip.io