The IPA Master Server will be configured with:
Hostname:       ipa.example.com
IP address(es): 10.0.1.100
Domain name:    example.com
Realm name:     EXAMPLE.COM

Continue to configure the system with these values? [no]: ye

The following operations may take some minutes to complete.
Please wait until the prompt is returned.

Configuring NTP daemon (ntpd)
  [1/4]: stopping ntpd
  [2/4]: writing configuration
  [3/4]: configuring ntpd to start on boot
  [4/4]: starting ntpd
Done configuring NTP daemon (ntpd).
Configuring directory server (dirsrv). Estimated time: 30 seconds
  [1/44]: creating directory server instance
  [2/44]: enabling ldapi
  [3/44]: configure autobind for root
  [4/44]: stopping directory server
  [5/44]: updating configuration in dse.ldif
  [6/44]: starting directory server
  [7/44]: adding default schema
  [8/44]: enabling memberof plugin
  [9/44]: enabling winsync plugin
  [10/44]: configuring replication version plugin
  [11/44]: enabling IPA enrollment plugin
  [12/44]: configuring uniqueness plugin
  [13/44]: configuring uuid plugin
  [14/44]: configuring modrdn plugin
  [15/44]: configuring DNS plugin
  [16/44]: enabling entryUSN plugin
  [17/44]: configuring lockout plugin
  [18/44]: configuring topology plugin
  [19/44]: creating indices
  [20/44]: enabling referential integrity plugin
  [21/44]: configuring certmap.conf
  [22/44]: configure new location for managed entries
  [23/44]: configure dirsrv ccache
  [24/44]: enabling SASL mapping fallback
  [25/44]: restarting directory server
  [26/44]: adding sasl mappings to the directory
  [27/44]: adding default layout
  [28/44]: adding delegation layout
  [29/44]: creating container for managed entries
  [30/44]: configuring user private groups
  [31/44]: configuring netgroups from hostgroups
  [32/44]: creating default Sudo bind user
  [33/44]: creating default Auto Member layout
  [34/44]: adding range check plugin
  [35/44]: creating default HBAC rule allow_all
  [36/44]: adding entries for topology management
  [37/44]: initializing group membership
  [38/44]: adding master entry
  [39/44]: initializing domain level
  [40/44]: configuring Posix uid/gid generation
  [41/44]: adding replication acis
  [42/44]: activating sidgen plugin
  [43/44]: activating extdom plugin
  [44/44]: configuring directory to start on boot
Done configuring directory server (dirsrv).
Configuring Kerberos KDC (krb5kdc)
  [1/10]: adding kerberos container to the directory
  [2/10]: configuring KDC
  [3/10]: initialize kerberos container
  [4/10]: adding default ACIs
  [5/10]: creating a keytab for the directory
  [6/10]: creating a keytab for the machine
  [7/10]: adding the password extension to the directory
  [8/10]: creating anonymous principal
  [9/10]: starting the KDC
  [10/10]: configuring KDC to start on boot
Done configuring Kerberos KDC (krb5kdc).
Configuring kadmin
  [1/2]: starting kadmin
  [2/2]: configuring kadmin to start on boot
Done configuring kadmin.
Configuring ipa-custodia
  [1/5]: Making sure custodia container exists
  [2/5]: Generating ipa-custodia config file
  [3/5]: Generating ipa-custodia keys
  [4/5]: starting ipa-custodia
  [5/5]: configuring ipa-custodia to start on boot
Done configuring ipa-custodia.
Configuring certificate server (pki-tomcatd). Estimated time: 3 minutes
  [1/28]: configuring certificate server instance
  [2/28]: exporting Dogtag certificate store pin
  [3/28]: stopping certificate server instance to update CS.cfg
  [4/28]: backing up CS.cfg
  [5/28]: disabling nonces
  [6/28]: set up CRL publishing
  [7/28]: enable PKIX certificate path discovery and validation
  [8/28]: starting certificate server instance
  [9/28]: configure certmonger for renewals
  [10/28]: requesting RA certificate from CA
  [11/28]: setting audit signing renewal to 2 years
  [12/28]: restarting certificate server
  [13/28]: publishing the CA certificate
  [14/28]: adding RA agent as a trusted user
  [15/28]: authorizing RA to modify profiles
  [16/28]: authorizing RA to manage lightweight CAs
  [17/28]: Ensure lightweight CAs container exists
  [18/28]: configure certificate renewals
  [19/28]: configure Server-Cert certificate renewal
  [20/28]: Configure HTTP to proxy connections
  [21/28]: restarting certificate server
  [22/28]: updating IPA configuration
  [23/28]: enabling CA instance
  [24/28]: migrating certificate profiles to LDAP
  [25/28]: importing IPA certificate profiles
  [26/28]: adding default CA ACL
  [27/28]: adding 'ipa' CA entry
  [28/28]: configuring certmonger renewal for lightweight CAs
Done configuring certificate server (pki-tomcatd).
Configuring directory server (dirsrv)
  [1/3]: configuring TLS for DS instance
  [2/3]: adding CA certificate entry
  [3/3]: restarting directory server
Done configuring directory server (dirsrv).
Configuring ipa-otpd
  [1/2]: starting ipa-otpd
  [2/2]: configuring ipa-otpd to start on boot
Done configuring ipa-otpd.
Configuring the web interface (httpd)
  [1/22]: stopping httpd
  [2/22]: setting mod_nss port to 443
  [3/22]: setting mod_nss cipher suite
  [4/22]: setting mod_nss protocol list to TLSv1.0 - TLSv1.2
  [5/22]: setting mod_nss password file
  [6/22]: enabling mod_nss renegotiate
  [7/22]: disabling mod_nss OCSP
  [8/22]: adding URL rewriting rules
  [9/22]: configuring httpd
  [10/22]: setting up httpd keytab
  [11/22]: configuring Gssproxy
  [12/22]: setting up ssl
  [13/22]: configure certmonger for renewals
  [14/22]: importing CA certificates from LDAP
  [15/22]: publish CA cert
  [16/22]: clean up any existing httpd ccaches
  [17/22]: configuring SELinux for httpd
  [18/22]: create KDC proxy config
  [19/22]: enable KDC proxy
  [20/22]: starting httpd
  [21/22]: configuring httpd to start on boot
  [22/22]: enabling oddjobd
Done configuring the web interface (httpd).
Configuring Kerberos KDC (krb5kdc)
  [1/1]: installing X509 Certificate for PKINIT
Done configuring Kerberos KDC (krb5kdc).
Applying LDAP updates
Upgrading IPA:. Estimated time: 1 minute 30 seconds
  [1/10]: stopping directory server
  [2/10]: saving configuration
  [3/10]: disabling listeners
  [4/10]: enabling DS global lock
  [5/10]: disabling Schema Compat
  [6/10]: starting directory server
  [7/10]: upgrading server
  [8/10]: stopping directory server
  [9/10]: restoring configuration
  [10/10]: starting directory server
Done.
Restarting the KDC
Configuring client side components
Using existing certificate '/etc/ipa/ca.crt'.
Client hostname: ipa.example.com
Realm: EXAMPLE.COM
DNS Domain: example.com
IPA Server: ipa.example.com
BaseDN: dc=example,dc=com

Skipping synchronizing time with NTP server.
New SSSD config will be created
Configured sudoers in /etc/nsswitch.conf
Configured /etc/sssd/sssd.conf
trying https://ipa.example.com/ipa/json
[try 1]: Forwarding 'schema' to json server 'https://ipa.example.com/ipa/json'
trying https://ipa.example.com/ipa/session/json
[try 1]: Forwarding 'ping' to json server 'https://ipa.example.com/ipa/session/json'
[try 1]: Forwarding 'ca_is_enabled' to json server 'https://ipa.example.com/ipa/session/json'
Systemwide CA database updated.
Adding SSH public key from /etc/ssh/ssh_host_rsa_key.pub
Adding SSH public key from /etc/ssh/ssh_host_ecdsa_key.pub
Adding SSH public key from /etc/ssh/ssh_host_ed25519_key.pub
[try 1]: Forwarding 'host_mod' to json server 'https://ipa.example.com/ipa/session/json'
Could not update DNS SSHFP records.
SSSD enabled
Configured /etc/openldap/ldap.conf
Configured /etc/ssh/ssh_config
Configured /etc/ssh/sshd_config
Configuring example.com as NIS domain.
Client configuration complete.
The ipa-client-install command was successful

ipaserver.dns_data_management: ERROR    unable to resolve host name ipa.example.com. to IP address, ipa-ca DNS record will be incomplete
ipaserver.dns_data_management: ERROR    unable to resolve host name ipa.example.com. to IP address, ipa-ca DNS record will be incomplete
Please add records in this file to your DNS system: /tmp/ipa.system.records.gggCVV.db
==============================================================================
Setup complete

Next steps:
        1. You must make sure these network ports are open:
                TCP Ports:
                  * 80, 443: HTTP/HTTPS
                  * 389, 636: LDAP/LDAPS
                  * 88, 464: kerberos
                UDP Ports:
                  * 88, 464: kerberos
                  * 123: ntp

        2. You can now obtain a kerberos ticket using the command: 'kinit admin'
           This ticket will allow you to use the IPA tools (e.g., ipa user-add)
           and the web user interface.

Be sure to back up the CA certificates stored in /root/cacert.p12
These files are required to create replicas. The password for these
files is the Directory Manager password