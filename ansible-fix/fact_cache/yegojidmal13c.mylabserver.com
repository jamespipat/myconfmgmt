{
    "_ansible_facts_gathered": true, 
    "ansible_all_ipv4_addresses": [
        "192.168.122.1", 
        "172.31.30.110"
    ], 
    "ansible_all_ipv6_addresses": [
        "2406:da18:77c:6102:16f7:a658:dee7:db9f", 
        "fe80::44b:a4ff:fe62:665c"
    ], 
    "ansible_apparmor": {
        "status": "disabled"
    }, 
    "ansible_architecture": "x86_64", 
    "ansible_bios_date": "10/16/2017", 
    "ansible_bios_version": "1.0", 
    "ansible_cmdline": {
        "BOOT_IMAGE": "(hd0,msdos2)/boot/vmlinuz-4.18.0-147.0.3.el8_1.x86_64", 
        "console": "tty0", 
        "crashkernel": "auto", 
        "net.ifnames": "0", 
        "rd.blacklist": "nouveau", 
        "ro": true, 
        "root": "UUID=58013e4a-11c0-4195-8fd8-e4b33e5b17d6"
    }, 
    "ansible_date_time": {
        "date": "2020-01-05", 
        "day": "05", 
        "epoch": "1578239433", 
        "hour": "15", 
        "iso8601": "2020-01-05T15:50:33Z", 
        "iso8601_basic": "20200105T155033316940", 
        "iso8601_basic_short": "20200105T155033", 
        "iso8601_micro": "2020-01-05T15:50:33.317032Z", 
        "minute": "50", 
        "month": "01", 
        "second": "33", 
        "time": "15:50:33", 
        "tz": "UTC", 
        "tz_offset": "+0000", 
        "weekday": "Sunday", 
        "weekday_number": "0", 
        "weeknumber": "00", 
        "year": "2020"
    }, 
    "ansible_default_ipv4": {
        "address": "172.31.30.110", 
        "alias": "eth0", 
        "broadcast": "172.31.31.255", 
        "gateway": "172.31.16.1", 
        "interface": "eth0", 
        "macaddress": "06:4b:a4:62:66:5c", 
        "mtu": 9001, 
        "netmask": "255.255.240.0", 
        "network": "172.31.16.0", 
        "type": "ether"
    }, 
    "ansible_default_ipv6": {
        "address": "2406:da18:77c:6102:16f7:a658:dee7:db9f", 
        "gateway": "fe80::c7c:acff:fe40:2", 
        "interface": "eth0", 
        "macaddress": "06:4b:a4:62:66:5c", 
        "mtu": 9001, 
        "prefix": "128", 
        "scope": "global", 
        "type": "ether"
    }, 
    "ansible_device_links": {
        "ids": {
            "nvme0n1": [
                "nvme-Amazon_Elastic_Block_Store_vol0b78184941a842305", 
                "nvme-nvme.1d0f-766f6c3062373831383439343161383432333035-416d617a6f6e20456c617374696320426c6f636b2053746f7265-00000001"
            ], 
            "nvme0n1p1": [
                "nvme-Amazon_Elastic_Block_Store_vol0b78184941a842305-part1", 
                "nvme-nvme.1d0f-766f6c3062373831383439343161383432333035-416d617a6f6e20456c617374696320426c6f636b2053746f7265-00000001-part1"
            ], 
            "nvme0n1p2": [
                "nvme-Amazon_Elastic_Block_Store_vol0b78184941a842305-part2", 
                "nvme-nvme.1d0f-766f6c3062373831383439343161383432333035-416d617a6f6e20456c617374696320426c6f636b2053746f7265-00000001-part2"
            ]
        }, 
        "labels": {}, 
        "masters": {}, 
        "uuids": {
            "nvme0n1p2": [
                "58013e4a-11c0-4195-8fd8-e4b33e5b17d6"
            ]
        }
    }, 
    "ansible_devices": {
        "nvme0n1": {
            "holders": [], 
            "host": "Non-Volatile memory controller: Amazon.com, Inc. Device 8061", 
            "links": {
                "ids": [
                    "nvme-Amazon_Elastic_Block_Store_vol0b78184941a842305", 
                    "nvme-nvme.1d0f-766f6c3062373831383439343161383432333035-416d617a6f6e20456c617374696320426c6f636b2053746f7265-00000001"
                ], 
                "labels": [], 
                "masters": [], 
                "uuids": []
            }, 
            "model": "Amazon Elastic Block Store", 
            "partitions": {
                "nvme0n1p1": {
                    "holders": [], 
                    "links": {
                        "ids": [
                            "nvme-Amazon_Elastic_Block_Store_vol0b78184941a842305-part1", 
                            "nvme-nvme.1d0f-766f6c3062373831383439343161383432333035-416d617a6f6e20456c617374696320426c6f636b2053746f7265-00000001-part1"
                        ], 
                        "labels": [], 
                        "masters": [], 
                        "uuids": []
                    }, 
                    "sectors": "2048", 
                    "sectorsize": 512, 
                    "size": "1.00 MB", 
                    "start": "2048", 
                    "uuid": null
                }, 
                "nvme0n1p2": {
                    "holders": [], 
                    "links": {
                        "ids": [
                            "nvme-Amazon_Elastic_Block_Store_vol0b78184941a842305-part2", 
                            "nvme-nvme.1d0f-766f6c3062373831383439343161383432333035-416d617a6f6e20456c617374696320426c6f636b2053746f7265-00000001-part2"
                        ], 
                        "labels": [], 
                        "masters": [], 
                        "uuids": [
                            "58013e4a-11c0-4195-8fd8-e4b33e5b17d6"
                        ]
                    }, 
                    "sectors": "41938911", 
                    "sectorsize": 512, 
                    "size": "20.00 GB", 
                    "start": "4096", 
                    "uuid": "58013e4a-11c0-4195-8fd8-e4b33e5b17d6"
                }
            }, 
            "removable": "0", 
            "rotational": "0", 
            "sas_address": null, 
            "sas_device_handle": null, 
            "scheduler_mode": "none", 
            "sectors": "41943040", 
            "sectorsize": "512", 
            "size": "20.00 GB", 
            "support_discard": "0", 
            "vendor": null, 
            "virtual": 1
        }
    }, 
    "ansible_distribution": "RedHat", 
    "ansible_distribution_file_parsed": true, 
    "ansible_distribution_file_path": "/etc/redhat-release", 
    "ansible_distribution_file_search_string": "Red Hat", 
    "ansible_distribution_file_variety": "RedHat", 
    "ansible_distribution_major_version": "8", 
    "ansible_distribution_release": "Ootpa", 
    "ansible_distribution_version": "8.1", 
    "ansible_dns": {
        "nameservers": [
            "172.31.0.2"
        ], 
        "search": [
            "ap-southeast-1.compute.internal"
        ]
    }, 
    "ansible_domain": "", 
    "ansible_effective_group_id": 0, 
    "ansible_effective_user_id": 0, 
    "ansible_env": {
        "DBUS_SESSION_BUS_ADDRESS": "unix:path=/run/user/0/bus", 
        "HOME": "/root", 
        "LANG": "en_US.UTF-8", 
        "LESSOPEN": "||/usr/bin/lesspipe.sh %s", 
        "LOGNAME": "root", 
        "PATH": "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin", 
        "PWD": "/root", 
        "SELINUX_LEVEL_REQUESTED": "", 
        "SELINUX_ROLE_REQUESTED": "", 
        "SELINUX_USE_CURRENT_RANGE": "", 
        "SHELL": "/bin/bash", 
        "SHLVL": "2", 
        "SSH_CLIENT": "171.98.29.220 51256 22", 
        "SSH_CONNECTION": "171.98.29.220 51256 172.31.30.110 22", 
        "USER": "root", 
        "XDG_DATA_DIRS": "/root/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share", 
        "XDG_RUNTIME_DIR": "/run/user/0", 
        "XDG_SESSION_ID": "10", 
        "_": "/usr/bin/python3"
    }, 
    "ansible_eth0": {
        "active": true, 
        "device": "eth0", 
        "features": {
            "esp_hw_offload": "off [fixed]", 
            "esp_tx_csum_hw_offload": "off [fixed]", 
            "fcoe_mtu": "off [fixed]", 
            "generic_receive_offload": "on", 
            "generic_segmentation_offload": "on", 
            "highdma": "on", 
            "hw_tc_offload": "off [fixed]", 
            "l2_fwd_offload": "off [fixed]", 
            "large_receive_offload": "off [fixed]", 
            "loopback": "off [fixed]", 
            "netns_local": "off [fixed]", 
            "ntuple_filters": "off [fixed]", 
            "receive_hashing": "on", 
            "rx_all": "off [fixed]", 
            "rx_checksumming": "off [fixed]", 
            "rx_fcs": "off [fixed]", 
            "rx_gro_hw": "off [fixed]", 
            "rx_udp_tunnel_port_offload": "off [fixed]", 
            "rx_vlan_filter": "off [fixed]", 
            "rx_vlan_offload": "off [fixed]", 
            "rx_vlan_stag_filter": "off [fixed]", 
            "rx_vlan_stag_hw_parse": "off [fixed]", 
            "scatter_gather": "on", 
            "tcp_segmentation_offload": "off", 
            "tls_hw_record": "off [fixed]", 
            "tls_hw_rx_offload": "off [fixed]", 
            "tls_hw_tx_offload": "off [fixed]", 
            "tx_checksum_fcoe_crc": "off [fixed]", 
            "tx_checksum_ip_generic": "off [fixed]", 
            "tx_checksum_ipv4": "on", 
            "tx_checksum_ipv6": "off [fixed]", 
            "tx_checksum_sctp": "off [fixed]", 
            "tx_checksumming": "on", 
            "tx_esp_segmentation": "off [fixed]", 
            "tx_fcoe_segmentation": "off [fixed]", 
            "tx_gre_csum_segmentation": "off [fixed]", 
            "tx_gre_segmentation": "off [fixed]", 
            "tx_gso_partial": "off [fixed]", 
            "tx_gso_robust": "off [fixed]", 
            "tx_ipxip4_segmentation": "off [fixed]", 
            "tx_ipxip6_segmentation": "off [fixed]", 
            "tx_lockless": "off [fixed]", 
            "tx_nocache_copy": "off", 
            "tx_scatter_gather": "on", 
            "tx_scatter_gather_fraglist": "off [fixed]", 
            "tx_sctp_segmentation": "off [fixed]", 
            "tx_tcp6_segmentation": "off [fixed]", 
            "tx_tcp_ecn_segmentation": "off [fixed]", 
            "tx_tcp_mangleid_segmentation": "off [fixed]", 
            "tx_tcp_segmentation": "off [fixed]", 
            "tx_udp_segmentation": "off [fixed]", 
            "tx_udp_tnl_csum_segmentation": "off [fixed]", 
            "tx_udp_tnl_segmentation": "off [fixed]", 
            "tx_vlan_offload": "off [fixed]", 
            "tx_vlan_stag_hw_insert": "off [fixed]", 
            "vlan_challenged": "off [fixed]"
        }, 
        "hw_timestamp_filters": [], 
        "ipv4": {
            "address": "172.31.30.110", 
            "broadcast": "172.31.31.255", 
            "netmask": "255.255.240.0", 
            "network": "172.31.16.0"
        }, 
        "ipv6": [
            {
                "address": "2406:da18:77c:6102:16f7:a658:dee7:db9f", 
                "prefix": "128", 
                "scope": "global"
            }, 
            {
                "address": "fe80::44b:a4ff:fe62:665c", 
                "prefix": "64", 
                "scope": "link"
            }
        ], 
        "macaddress": "06:4b:a4:62:66:5c", 
        "module": "ena", 
        "mtu": 9001, 
        "pciid": "0000:00:05.0", 
        "promisc": false, 
        "timestamping": [
            "rx_software", 
            "software"
        ], 
        "type": "ether"
    }, 
    "ansible_fibre_channel_wwn": [], 
    "ansible_fips": false, 
    "ansible_form_factor": "Other", 
    "ansible_fqdn": "master", 
    "ansible_hostname": "master", 
    "ansible_hostnqn": "", 
    "ansible_interfaces": [
        "lo", 
        "eth0", 
        "virbr0-nic", 
        "virbr0"
    ], 
    "ansible_is_chroot": false, 
    "ansible_iscsi_iqn": "iqn.1994-05.com.redhat:27659b89e3ca", 
    "ansible_kernel": "4.18.0-147.0.3.el8_1.x86_64", 
    "ansible_kernel_version": "#1 SMP Mon Nov 11 12:58:36 UTC 2019", 
    "ansible_lo": {
        "active": true, 
        "device": "lo", 
        "features": {
            "esp_hw_offload": "off [fixed]", 
            "esp_tx_csum_hw_offload": "off [fixed]", 
            "fcoe_mtu": "off [fixed]", 
            "generic_receive_offload": "on", 
            "generic_segmentation_offload": "on", 
            "highdma": "on [fixed]", 
            "hw_tc_offload": "off [fixed]", 
            "l2_fwd_offload": "off [fixed]", 
            "large_receive_offload": "off [fixed]", 
            "loopback": "on [fixed]", 
            "netns_local": "on [fixed]", 
            "ntuple_filters": "off [fixed]", 
            "receive_hashing": "off [fixed]", 
            "rx_all": "off [fixed]", 
            "rx_checksumming": "on [fixed]", 
            "rx_fcs": "off [fixed]", 
            "rx_gro_hw": "off [fixed]", 
            "rx_udp_tunnel_port_offload": "off [fixed]", 
            "rx_vlan_filter": "off [fixed]", 
            "rx_vlan_offload": "off [fixed]", 
            "rx_vlan_stag_filter": "off [fixed]", 
            "rx_vlan_stag_hw_parse": "off [fixed]", 
            "scatter_gather": "on", 
            "tcp_segmentation_offload": "on", 
            "tls_hw_record": "off [fixed]", 
            "tls_hw_rx_offload": "off [fixed]", 
            "tls_hw_tx_offload": "off [fixed]", 
            "tx_checksum_fcoe_crc": "off [fixed]", 
            "tx_checksum_ip_generic": "on [fixed]", 
            "tx_checksum_ipv4": "off [fixed]", 
            "tx_checksum_ipv6": "off [fixed]", 
            "tx_checksum_sctp": "on [fixed]", 
            "tx_checksumming": "on", 
            "tx_esp_segmentation": "off [fixed]", 
            "tx_fcoe_segmentation": "off [fixed]", 
            "tx_gre_csum_segmentation": "off [fixed]", 
            "tx_gre_segmentation": "off [fixed]", 
            "tx_gso_partial": "off [fixed]", 
            "tx_gso_robust": "off [fixed]", 
            "tx_ipxip4_segmentation": "off [fixed]", 
            "tx_ipxip6_segmentation": "off [fixed]", 
            "tx_lockless": "on [fixed]", 
            "tx_nocache_copy": "off [fixed]", 
            "tx_scatter_gather": "on [fixed]", 
            "tx_scatter_gather_fraglist": "on [fixed]", 
            "tx_sctp_segmentation": "on", 
            "tx_tcp6_segmentation": "on", 
            "tx_tcp_ecn_segmentation": "on", 
            "tx_tcp_mangleid_segmentation": "on", 
            "tx_tcp_segmentation": "on", 
            "tx_udp_segmentation": "off [fixed]", 
            "tx_udp_tnl_csum_segmentation": "off [fixed]", 
            "tx_udp_tnl_segmentation": "off [fixed]", 
            "tx_vlan_offload": "off [fixed]", 
            "tx_vlan_stag_hw_insert": "off [fixed]", 
            "vlan_challenged": "on [fixed]"
        }, 
        "hw_timestamp_filters": [], 
        "ipv4": {
            "address": "127.0.0.1", 
            "broadcast": "host", 
            "netmask": "255.0.0.0", 
            "network": "127.0.0.0"
        }, 
        "ipv6": [
            {
                "address": "::1", 
                "prefix": "128", 
                "scope": "host"
            }
        ], 
        "mtu": 65536, 
        "promisc": false, 
        "timestamping": [
            "tx_software", 
            "rx_software", 
            "software"
        ], 
        "type": "loopback"
    }, 
    "ansible_local": {}, 
    "ansible_lsb": {}, 
    "ansible_lvm": {
        "lvs": {}, 
        "pvs": {}, 
        "vgs": {}
    }, 
    "ansible_machine": "x86_64", 
    "ansible_machine_id": "ec2b9a54dc859388d7bc348e87df5332", 
    "ansible_memfree_mb": 1778, 
    "ansible_memory_mb": {
        "nocache": {
            "free": 2576, 
            "used": 1144
        }, 
        "real": {
            "free": 1778, 
            "total": 3720, 
            "used": 1942
        }, 
        "swap": {
            "cached": 2, 
            "free": 8167, 
            "total": 8191, 
            "used": 24
        }
    }, 
    "ansible_memtotal_mb": 3720, 
    "ansible_mounts": [
        {
            "block_available": 1493006, 
            "block_size": 4096, 
            "block_total": 5239803, 
            "block_used": 3746797, 
            "device": "/dev/nvme0n1p2", 
            "fstype": "xfs", 
            "inode_available": 10249021, 
            "inode_total": 10484672, 
            "inode_used": 235651, 
            "mount": "/", 
            "options": "rw,seclabel,relatime,attr2,inode64,noquota", 
            "size_available": 6115352576, 
            "size_total": 21462233088, 
            "uuid": "58013e4a-11c0-4195-8fd8-e4b33e5b17d6"
        }
    ], 
    "ansible_nodename": "master", 
    "ansible_os_family": "RedHat", 
    "ansible_pkg_mgr": "dnf", 
    "ansible_proc_cmdline": {
        "BOOT_IMAGE": "(hd0,msdos2)/boot/vmlinuz-4.18.0-147.0.3.el8_1.x86_64", 
        "console": [
            "ttyS0,115200n8", 
            "tty0"
        ], 
        "crashkernel": "auto", 
        "net.ifnames": "0", 
        "rd.blacklist": "nouveau", 
        "ro": true, 
        "root": "UUID=58013e4a-11c0-4195-8fd8-e4b33e5b17d6"
    }, 
    "ansible_processor": [
        "0", 
        "GenuineIntel", 
        "Intel(R) Xeon(R) Platinum 8259CL CPU @ 2.50GHz", 
        "1", 
        "GenuineIntel", 
        "Intel(R) Xeon(R) Platinum 8259CL CPU @ 2.50GHz"
    ], 
    "ansible_processor_cores": 1, 
    "ansible_processor_count": 1, 
    "ansible_processor_threads_per_core": 2, 
    "ansible_processor_vcpus": 2, 
    "ansible_product_name": "t3.medium", 
    "ansible_product_serial": "ec2cadc4-addb-b22f-5a8d-9d10e149268a", 
    "ansible_product_uuid": "ec2cadc4-addb-b22f-5a8d-9d10e149268a", 
    "ansible_product_version": "NA", 
    "ansible_python": {
        "executable": "/usr/bin/python3", 
        "has_sslcontext": true, 
        "type": "cpython", 
        "version": {
            "major": 3, 
            "micro": 8, 
            "minor": 6, 
            "releaselevel": "final", 
            "serial": 0
        }, 
        "version_info": [
            3, 
            6, 
            8, 
            "final", 
            0
        ]
    }, 
    "ansible_python_version": "3.6.8", 
    "ansible_real_group_id": 0, 
    "ansible_real_user_id": 0, 
    "ansible_selinux": {
        "config_mode": "enforcing", 
        "mode": "enforcing", 
        "policyvers": 31, 
        "status": "enabled", 
        "type": "targeted"
    }, 
    "ansible_selinux_python_present": true, 
    "ansible_service_mgr": "systemd", 
    "ansible_ssh_host_key_ecdsa_public": "AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBBRtAMopkP+2WS2Icg6ttJrR1W31Zf7goLxbeogSQkMF8Kkm78vqUuAMMeR//4YGGDLT3teWcDGphG4aLyqYUrc=", 
    "ansible_ssh_host_key_ed25519_public": "AAAAC3NzaC1lZDI1NTE5AAAAIOPuaIMsvPNNY0ZA4ySnAC0iGJ1cFN6pFjg6b/A1OeQ4", 
    "ansible_ssh_host_key_rsa_public": "AAAAB3NzaC1yc2EAAAADAQABAAABgQC8uxFGp5Ujk2JzwxuC65CVYmdju8GuCpSo2UDb4LiqR5jX/N4GyLkRsqADwBq2N1Y7W+ppDH/Xx1NrDPFIdn7mKAAv87dRdCDxX11Nui0h+wURLFuoHwE5PIPLr4r9RGSnPQgqBug27QjaFbeC+KmJO8iP/T6ln7+6lpc3dT3bcTTCJry4Wraca0hMxdTwy1WL8uu542CQYDsg/KhGc5dFoMUjqPi5TjqW2FvKPkKSBoZOwYNkmQcjaKoL3WOypcnfsvlnaiPXotM4I132UzB/F36dIo6V1CFlvIscAlsk2ivnpUF7MRQlRvPp4xerzInds3Uw5TWIst0epjBHj/oYT5gMaSmY0NrZuBxyqDWtoTw0X52aXZe0YkY5dFg2HbNxWfXbG659IQr20HCSsza+x67ACQSV9yh88O3FDs1yninsgJi+C0rHwOzmkinU2pDt3njmeiUuyR3qr9gUIlN1wjqlZ3Gbh07/SlNm85BRNAUaU7nJbuUZzaf7QK+6ax0=", 
    "ansible_swapfree_mb": 8167, 
    "ansible_swaptotal_mb": 8191, 
    "ansible_system": "Linux", 
    "ansible_system_capabilities": [
        "cap_chown", 
        "cap_dac_override", 
        "cap_dac_read_search", 
        "cap_fowner", 
        "cap_fsetid", 
        "cap_kill", 
        "cap_setgid", 
        "cap_setuid", 
        "cap_setpcap", 
        "cap_linux_immutable", 
        "cap_net_bind_service", 
        "cap_net_broadcast", 
        "cap_net_admin", 
        "cap_net_raw", 
        "cap_ipc_lock", 
        "cap_ipc_owner", 
        "cap_sys_module", 
        "cap_sys_rawio", 
        "cap_sys_chroot", 
        "cap_sys_ptrace", 
        "cap_sys_pacct", 
        "cap_sys_admin", 
        "cap_sys_boot", 
        "cap_sys_nice", 
        "cap_sys_resource", 
        "cap_sys_time", 
        "cap_sys_tty_config", 
        "cap_mknod", 
        "cap_lease", 
        "cap_audit_write", 
        "cap_audit_control", 
        "cap_setfcap", 
        "cap_mac_override", 
        "cap_mac_admin", 
        "cap_syslog", 
        "cap_wake_alarm", 
        "cap_block_suspend", 
        "cap_audit_read+ep"
    ], 
    "ansible_system_capabilities_enforced": "True", 
    "ansible_system_vendor": "Amazon EC2", 
    "ansible_uptime_seconds": 9423, 
    "ansible_user_dir": "/root", 
    "ansible_user_gecos": "root", 
    "ansible_user_gid": 0, 
    "ansible_user_id": "root", 
    "ansible_user_shell": "/bin/bash", 
    "ansible_user_uid": 0, 
    "ansible_userspace_architecture": "x86_64", 
    "ansible_userspace_bits": "64", 
    "ansible_virbr0": {
        "active": false, 
        "device": "virbr0", 
        "features": {
            "esp_hw_offload": "off [fixed]", 
            "esp_tx_csum_hw_offload": "off [fixed]", 
            "fcoe_mtu": "off [fixed]", 
            "generic_receive_offload": "on", 
            "generic_segmentation_offload": "on", 
            "highdma": "off [requested on]", 
            "hw_tc_offload": "off [fixed]", 
            "l2_fwd_offload": "off [fixed]", 
            "large_receive_offload": "off [fixed]", 
            "loopback": "off [fixed]", 
            "netns_local": "on [fixed]", 
            "ntuple_filters": "off [fixed]", 
            "receive_hashing": "off [fixed]", 
            "rx_all": "off [fixed]", 
            "rx_checksumming": "off [fixed]", 
            "rx_fcs": "off [fixed]", 
            "rx_gro_hw": "off [fixed]", 
            "rx_udp_tunnel_port_offload": "off [fixed]", 
            "rx_vlan_filter": "off [fixed]", 
            "rx_vlan_offload": "off [fixed]", 
            "rx_vlan_stag_filter": "off [fixed]", 
            "rx_vlan_stag_hw_parse": "off [fixed]", 
            "scatter_gather": "on", 
            "tcp_segmentation_offload": "on", 
            "tls_hw_record": "off [fixed]", 
            "tls_hw_rx_offload": "off [fixed]", 
            "tls_hw_tx_offload": "off [fixed]", 
            "tx_checksum_fcoe_crc": "off [fixed]", 
            "tx_checksum_ip_generic": "on", 
            "tx_checksum_ipv4": "off [fixed]", 
            "tx_checksum_ipv6": "off [fixed]", 
            "tx_checksum_sctp": "off [fixed]", 
            "tx_checksumming": "on", 
            "tx_esp_segmentation": "on", 
            "tx_fcoe_segmentation": "off [requested on]", 
            "tx_gre_csum_segmentation": "on", 
            "tx_gre_segmentation": "on", 
            "tx_gso_partial": "on", 
            "tx_gso_robust": "off [requested on]", 
            "tx_ipxip4_segmentation": "on", 
            "tx_ipxip6_segmentation": "on", 
            "tx_lockless": "on [fixed]", 
            "tx_nocache_copy": "off", 
            "tx_scatter_gather": "on", 
            "tx_scatter_gather_fraglist": "on", 
            "tx_sctp_segmentation": "off [requested on]", 
            "tx_tcp6_segmentation": "on", 
            "tx_tcp_ecn_segmentation": "on", 
            "tx_tcp_mangleid_segmentation": "on", 
            "tx_tcp_segmentation": "on", 
            "tx_udp_segmentation": "on", 
            "tx_udp_tnl_csum_segmentation": "on", 
            "tx_udp_tnl_segmentation": "on", 
            "tx_vlan_offload": "on", 
            "tx_vlan_stag_hw_insert": "on", 
            "vlan_challenged": "off [fixed]"
        }, 
        "hw_timestamp_filters": [], 
        "id": "8000.525400c4a9fd", 
        "interfaces": [
            "virbr0-nic"
        ], 
        "ipv4": {
            "address": "192.168.122.1", 
            "broadcast": "192.168.122.255", 
            "netmask": "255.255.255.0", 
            "network": "192.168.122.0"
        }, 
        "macaddress": "52:54:00:c4:a9:fd", 
        "mtu": 1500, 
        "promisc": false, 
        "stp": true, 
        "timestamping": [
            "rx_software", 
            "software"
        ], 
        "type": "bridge"
    }, 
    "ansible_virbr0_nic": {
        "active": false, 
        "device": "virbr0-nic", 
        "features": {
            "esp_hw_offload": "off [fixed]", 
            "esp_tx_csum_hw_offload": "off [fixed]", 
            "fcoe_mtu": "off [fixed]", 
            "generic_receive_offload": "on", 
            "generic_segmentation_offload": "on", 
            "highdma": "off [fixed]", 
            "hw_tc_offload": "off [fixed]", 
            "l2_fwd_offload": "off [fixed]", 
            "large_receive_offload": "off [fixed]", 
            "loopback": "off [fixed]", 
            "netns_local": "off [fixed]", 
            "ntuple_filters": "off [fixed]", 
            "receive_hashing": "off [fixed]", 
            "rx_all": "off [fixed]", 
            "rx_checksumming": "off [fixed]", 
            "rx_fcs": "off [fixed]", 
            "rx_gro_hw": "off [fixed]", 
            "rx_udp_tunnel_port_offload": "off [fixed]", 
            "rx_vlan_filter": "off [fixed]", 
            "rx_vlan_offload": "off [fixed]", 
            "rx_vlan_stag_filter": "off [fixed]", 
            "rx_vlan_stag_hw_parse": "off [fixed]", 
            "scatter_gather": "on", 
            "tcp_segmentation_offload": "off", 
            "tls_hw_record": "off [fixed]", 
            "tls_hw_rx_offload": "off [fixed]", 
            "tls_hw_tx_offload": "off [fixed]", 
            "tx_checksum_fcoe_crc": "off [fixed]", 
            "tx_checksum_ip_generic": "off [requested on]", 
            "tx_checksum_ipv4": "off [fixed]", 
            "tx_checksum_ipv6": "off [fixed]", 
            "tx_checksum_sctp": "off [fixed]", 
            "tx_checksumming": "off", 
            "tx_esp_segmentation": "off [fixed]", 
            "tx_fcoe_segmentation": "off [fixed]", 
            "tx_gre_csum_segmentation": "off [fixed]", 
            "tx_gre_segmentation": "off [fixed]", 
            "tx_gso_partial": "off [fixed]", 
            "tx_gso_robust": "off [fixed]", 
            "tx_ipxip4_segmentation": "off [fixed]", 
            "tx_ipxip6_segmentation": "off [fixed]", 
            "tx_lockless": "on [fixed]", 
            "tx_nocache_copy": "off", 
            "tx_scatter_gather": "on", 
            "tx_scatter_gather_fraglist": "on", 
            "tx_sctp_segmentation": "off [fixed]", 
            "tx_tcp6_segmentation": "off [requested on]", 
            "tx_tcp_ecn_segmentation": "off [requested on]", 
            "tx_tcp_mangleid_segmentation": "off", 
            "tx_tcp_segmentation": "off [requested on]", 
            "tx_udp_segmentation": "off [fixed]", 
            "tx_udp_tnl_csum_segmentation": "off [fixed]", 
            "tx_udp_tnl_segmentation": "off [fixed]", 
            "tx_vlan_offload": "on", 
            "tx_vlan_stag_hw_insert": "on", 
            "vlan_challenged": "off [fixed]"
        }, 
        "hw_timestamp_filters": [], 
        "macaddress": "52:54:00:c4:a9:fd", 
        "mtu": 1500, 
        "promisc": true, 
        "timestamping": [
            "tx_software", 
            "rx_software", 
            "software"
        ], 
        "type": "ether"
    }, 
    "ansible_virtualization_role": "guest", 
    "ansible_virtualization_type": "kvm", 
    "gather_subset": [
        "all"
    ], 
    "module_setup": true
}