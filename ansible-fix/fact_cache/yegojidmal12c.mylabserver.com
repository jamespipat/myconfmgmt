{
    "_ansible_facts_gathered": true,
    "ansible_all_ipv4_addresses": [
        "172.31.27.10"
    ],
    "ansible_all_ipv6_addresses": [
        "2406:da18:77c:6102:b096:636b:a2f9:c5c1",
        "fe80::483:4bff:fe42:46f0"
    ],
    "ansible_apparmor": {
        "status": "enabled"
    },
    "ansible_architecture": "x86_64",
    "ansible_bios_date": "10/16/2017",
    "ansible_bios_version": "1.0",
    "ansible_cmdline": {
        "BOOT_IMAGE": "/boot/vmlinuz-4.15.0-1057-aws",
        "console": "ttyS0",
        "nvme.io_timeout": "4294967295",
        "ro": true,
        "root": "UUID=bbf64c6d-bc15-4ae0-aa4c-608fd9820d95"
    },
    "ansible_date_time": {
        "date": "2020-01-16",
        "day": "16",
        "epoch": "1579149244",
        "hour": "04",
        "iso8601": "2020-01-16T04:34:04Z",
        "iso8601_basic": "20200116T043404432902",
        "iso8601_basic_short": "20200116T043404",
        "iso8601_micro": "2020-01-16T04:34:04.433011Z",
        "minute": "34",
        "month": "01",
        "second": "04",
        "time": "04:34:04",
        "tz": "UTC",
        "tz_offset": "+0000",
        "weekday": "Thursday",
        "weekday_number": "4",
        "weeknumber": "02",
        "year": "2020"
    },
    "ansible_default_ipv4": {
        "address": "172.31.27.10",
        "alias": "ens5",
        "broadcast": "172.31.31.255",
        "gateway": "172.31.16.1",
        "interface": "ens5",
        "macaddress": "06:83:4b:42:46:f0",
        "mtu": 9001,
        "netmask": "255.255.240.0",
        "network": "172.31.16.0",
        "type": "ether"
    },
    "ansible_default_ipv6": {
        "address": "2406:da18:77c:6102:b096:636b:a2f9:c5c1",
        "gateway": "fe80::c7c:acff:fe40:2",
        "interface": "ens5",
        "macaddress": "06:83:4b:42:46:f0",
        "mtu": 9001,
        "prefix": "128",
        "scope": "global",
        "type": "ether"
    },
    "ansible_device_links": {
        "ids": {
            "nvme0n1": [
                "nvme-Amazon_Elastic_Block_Store_vol036acd78848137703",
                "nvme-nvme.1d0f-766f6c3033366163643738383438313337373033-416d617a6f6e20456c617374696320426c6f636b2053746f7265-00000001"
            ],
            "nvme0n1p1": [
                "nvme-Amazon_Elastic_Block_Store_vol036acd78848137703-part1",
                "nvme-nvme.1d0f-766f6c3033366163643738383438313337373033-416d617a6f6e20456c617374696320426c6f636b2053746f7265-00000001-part1"
            ]
        },
        "labels": {
            "nvme0n1p1": [
                "cloudimg-rootfs"
            ]
        },
        "masters": {},
        "uuids": {
            "nvme0n1p1": [
                "bbf64c6d-bc15-4ae0-aa4c-608fd9820d95"
            ]
        }
    },
    "ansible_devices": {
        "loop0": {
            "holders": [],
            "host": "",
            "links": {
                "ids": [],
                "labels": [],
                "masters": [],
                "uuids": []
            },
            "model": null,
            "partitions": {},
            "removable": "0",
            "rotational": "1",
            "sas_address": null,
            "sas_device_handle": null,
            "scheduler_mode": "none",
            "sectors": "36808",
            "sectorsize": "512",
            "size": "17.97 MB",
            "support_discard": "4096",
            "vendor": null,
            "virtual": 1
        },
        "loop1": {
            "holders": [],
            "host": "",
            "links": {
                "ids": [],
                "labels": [],
                "masters": [],
                "uuids": []
            },
            "model": null,
            "partitions": {},
            "removable": "0",
            "rotational": "1",
            "sas_address": null,
            "sas_device_handle": null,
            "scheduler_mode": "none",
            "sectors": "182456",
            "sectorsize": "512",
            "size": "89.09 MB",
            "support_discard": "4096",
            "vendor": null,
            "virtual": 1
        },
        "loop2": {
            "holders": [],
            "host": "",
            "links": {
                "ids": [],
                "labels": [],
                "masters": [],
                "uuids": []
            },
            "model": null,
            "partitions": {},
            "removable": "0",
            "rotational": "1",
            "sas_address": null,
            "sas_device_handle": null,
            "scheduler_mode": "none",
            "sectors": "182480",
            "sectorsize": "512",
            "size": "89.10 MB",
            "support_discard": "4096",
            "vendor": null,
            "virtual": 1
        },
        "loop3": {
            "holders": [],
            "host": "",
            "links": {
                "ids": [],
                "labels": [],
                "masters": [],
                "uuids": []
            },
            "model": null,
            "partitions": {},
            "removable": "0",
            "rotational": "1",
            "sas_address": null,
            "sas_device_handle": null,
            "scheduler_mode": "none",
            "sectors": "36824",
            "sectorsize": "512",
            "size": "17.98 MB",
            "support_discard": "4096",
            "vendor": null,
            "virtual": 1
        },
        "loop4": {
            "holders": [],
            "host": "",
            "links": {
                "ids": [],
                "labels": [],
                "masters": [],
                "uuids": []
            },
            "model": null,
            "partitions": {},
            "removable": "0",
            "rotational": "1",
            "sas_address": null,
            "sas_device_handle": null,
            "scheduler_mode": "none",
            "sectors": "0",
            "sectorsize": "512",
            "size": "0.00 Bytes",
            "support_discard": "4096",
            "vendor": null,
            "virtual": 1
        },
        "loop5": {
            "holders": [],
            "host": "",
            "links": {
                "ids": [],
                "labels": [],
                "masters": [],
                "uuids": []
            },
            "model": null,
            "partitions": {},
            "removable": "0",
            "rotational": "1",
            "sas_address": null,
            "sas_device_handle": null,
            "scheduler_mode": "none",
            "sectors": "0",
            "sectorsize": "512",
            "size": "0.00 Bytes",
            "support_discard": "0",
            "vendor": null,
            "virtual": 1
        },
        "loop6": {
            "holders": [],
            "host": "",
            "links": {
                "ids": [],
                "labels": [],
                "masters": [],
                "uuids": []
            },
            "model": null,
            "partitions": {},
            "removable": "0",
            "rotational": "1",
            "sas_address": null,
            "sas_device_handle": null,
            "scheduler_mode": "none",
            "sectors": "0",
            "sectorsize": "512",
            "size": "0.00 Bytes",
            "support_discard": "0",
            "vendor": null,
            "virtual": 1
        },
        "loop7": {
            "holders": [],
            "host": "",
            "links": {
                "ids": [],
                "labels": [],
                "masters": [],
                "uuids": []
            },
            "model": null,
            "partitions": {},
            "removable": "0",
            "rotational": "1",
            "sas_address": null,
            "sas_device_handle": null,
            "scheduler_mode": "none",
            "sectors": "0",
            "sectorsize": "512",
            "size": "0.00 Bytes",
            "support_discard": "0",
            "vendor": null,
            "virtual": 1
        },
        "nvme0n1": {
            "holders": [],
            "host": "Non-Volatile memory controller: Amazon.com, Inc. Device 8061",
            "links": {
                "ids": [
                    "nvme-Amazon_Elastic_Block_Store_vol036acd78848137703",
                    "nvme-nvme.1d0f-766f6c3033366163643738383438313337373033-416d617a6f6e20456c617374696320426c6f636b2053746f7265-00000001"
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
                            "nvme-Amazon_Elastic_Block_Store_vol036acd78848137703-part1",
                            "nvme-nvme.1d0f-766f6c3033366163643738383438313337373033-416d617a6f6e20456c617374696320426c6f636b2053746f7265-00000001-part1"
                        ],
                        "labels": [
                            "cloudimg-rootfs"
                        ],
                        "masters": [],
                        "uuids": [
                            "bbf64c6d-bc15-4ae0-aa4c-608fd9820d95"
                        ]
                    },
                    "sectors": "41940959",
                    "sectorsize": 512,
                    "size": "20.00 GB",
                    "start": "2048",
                    "uuid": "bbf64c6d-bc15-4ae0-aa4c-608fd9820d95"
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
    "ansible_distribution": "Ubuntu",
    "ansible_distribution_file_parsed": true,
    "ansible_distribution_file_path": "/etc/os-release",
    "ansible_distribution_file_variety": "Debian",
    "ansible_distribution_major_version": "18",
    "ansible_distribution_release": "bionic",
    "ansible_distribution_version": "18.04",
    "ansible_dns": {
        "nameservers": [
            "127.0.0.53"
        ],
        "options": {
            "edns0": true
        },
        "search": [
            "ap-southeast-1.compute.internal"
        ]
    },
    "ansible_domain": "",
    "ansible_effective_group_id": 0,
    "ansible_effective_user_id": 0,
    "ansible_ens5": {
        "active": true,
        "device": "ens5",
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
            "rx_udp_tunnel_port_offload": "off [fixed]",
            "rx_vlan_filter": "off [fixed]",
            "rx_vlan_offload": "off [fixed]",
            "rx_vlan_stag_filter": "off [fixed]",
            "rx_vlan_stag_hw_parse": "off [fixed]",
            "scatter_gather": "on",
            "tcp_segmentation_offload": "off",
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
            "tx_udp_tnl_csum_segmentation": "off [fixed]",
            "tx_udp_tnl_segmentation": "off [fixed]",
            "tx_vlan_offload": "off [fixed]",
            "tx_vlan_stag_hw_insert": "off [fixed]",
            "udp_fragmentation_offload": "off",
            "vlan_challenged": "off [fixed]"
        },
        "hw_timestamp_filters": [],
        "ipv4": {
            "address": "172.31.27.10",
            "broadcast": "172.31.31.255",
            "netmask": "255.255.240.0",
            "network": "172.31.16.0"
        },
        "ipv6": [
            {
                "address": "2406:da18:77c:6102:b096:636b:a2f9:c5c1",
                "prefix": "128",
                "scope": "global"
            },
            {
                "address": "fe80::483:4bff:fe42:46f0",
                "prefix": "64",
                "scope": "link"
            }
        ],
        "macaddress": "06:83:4b:42:46:f0",
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
    "ansible_env": {
        "DBUS_SESSION_BUS_ADDRESS": "unix:path=/run/user/0/bus",
        "HOME": "/root",
        "LANG": "C.UTF-8",
        "LOGNAME": "root",
        "MAIL": "/var/mail/root",
        "PATH": "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games",
        "PWD": "/root",
        "SHELL": "/bin/bash",
        "SHLVL": "1",
        "SSH_CLIENT": "202.176.116.200 64109 22",
        "SSH_CONNECTION": "202.176.116.200 64109 172.31.27.10 22",
        "USER": "root",
        "XDG_RUNTIME_DIR": "/run/user/0",
        "XDG_SESSION_ID": "8",
        "_": "/bin/sh"
    },
    "ansible_fibre_channel_wwn": [],
    "ansible_fips": false,
    "ansible_form_factor": "Other",
    "ansible_fqdn": "data1",
    "ansible_hostname": "data1",
    "ansible_hostnqn": "",
    "ansible_interfaces": [
        "lo",
        "ens5"
    ],
    "ansible_is_chroot": false,
    "ansible_iscsi_iqn": "iqn.1993-08.org.debian:01:64f8ca20f61",
    "ansible_kernel": "4.15.0-1057-aws",
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
            "rx_udp_tunnel_port_offload": "off [fixed]",
            "rx_vlan_filter": "off [fixed]",
            "rx_vlan_offload": "off [fixed]",
            "rx_vlan_stag_filter": "off [fixed]",
            "rx_vlan_stag_hw_parse": "off [fixed]",
            "scatter_gather": "on",
            "tcp_segmentation_offload": "on",
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
            "tx_udp_tnl_csum_segmentation": "off [fixed]",
            "tx_udp_tnl_segmentation": "off [fixed]",
            "tx_vlan_offload": "off [fixed]",
            "tx_vlan_stag_hw_insert": "off [fixed]",
            "udp_fragmentation_offload": "off",
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
    "ansible_lsb": {
        "codename": "bionic",
        "description": "Ubuntu 18.04.3 LTS",
        "id": "Ubuntu",
        "major_release": "18",
        "release": "18.04"
    },
    "ansible_lvm": {
        "lvs": {},
        "pvs": {},
        "vgs": {}
    },
    "ansible_machine": "x86_64",
    "ansible_machine_id": "9ef2866073d1434aa3bdbde3f2f26eb1",
    "ansible_memfree_mb": 183,
    "ansible_memory_mb": {
        "nocache": {
            "free": 346,
            "used": 1609
        },
        "real": {
            "free": 183,
            "total": 1955,
            "used": 1772
        },
        "swap": {
            "cached": 0,
            "free": 0,
            "total": 0,
            "used": 0
        }
    },
    "ansible_memtotal_mb": 1955,
    "ansible_mounts": [
        {
            "block_available": 3881062,
            "block_size": 4096,
            "block_total": 5065871,
            "block_used": 1184809,
            "device": "/dev/nvme0n1p1",
            "fstype": "ext4",
            "inode_available": 2345662,
            "inode_total": 2560000,
            "inode_used": 214338,
            "mount": "/",
            "options": "rw,relatime,discard,data=ordered",
            "size_available": 15896829952,
            "size_total": 20749807616,
            "uuid": "bbf64c6d-bc15-4ae0-aa4c-608fd9820d95"
        },
        {
            "block_available": 0,
            "block_size": 131072,
            "block_total": 144,
            "block_used": 144,
            "device": "/dev/loop0",
            "fstype": "squashfs",
            "inode_available": 0,
            "inode_total": 15,
            "inode_used": 15,
            "mount": "/snap/amazon-ssm-agent/1455",
            "options": "ro,nodev,relatime",
            "size_available": 0,
            "size_total": 18874368,
            "uuid": "N/A"
        },
        {
            "block_available": 0,
            "block_size": 131072,
            "block_total": 713,
            "block_used": 713,
            "device": "/dev/loop1",
            "fstype": "squashfs",
            "inode_available": 0,
            "inode_total": 12842,
            "inode_used": 12842,
            "mount": "/snap/core/8268",
            "options": "ro,nodev,relatime",
            "size_available": 0,
            "size_total": 93454336,
            "uuid": "N/A"
        },
        {
            "block_available": 0,
            "block_size": 131072,
            "block_total": 713,
            "block_used": 713,
            "device": "/dev/loop2",
            "fstype": "squashfs",
            "inode_available": 0,
            "inode_total": 12842,
            "inode_used": 12842,
            "mount": "/snap/core/8039",
            "options": "ro,nodev,relatime",
            "size_available": 0,
            "size_total": 93454336,
            "uuid": "N/A"
        },
        {
            "block_available": 0,
            "block_size": 131072,
            "block_total": 144,
            "block_used": 144,
            "device": "/dev/loop3",
            "fstype": "squashfs",
            "inode_available": 0,
            "inode_total": 15,
            "inode_used": 15,
            "mount": "/snap/amazon-ssm-agent/1480",
            "options": "ro,nodev,relatime",
            "size_available": 0,
            "size_total": 18874368,
            "uuid": "N/A"
        }
    ],
    "ansible_nodename": "data1",
    "ansible_os_family": "Debian",
    "ansible_pkg_mgr": "apt",
    "ansible_proc_cmdline": {
        "BOOT_IMAGE": "/boot/vmlinuz-4.15.0-1057-aws",
        "console": [
            "tty1",
            "ttyS0"
        ],
        "nvme.io_timeout": "4294967295",
        "ro": true,
        "root": "UUID=bbf64c6d-bc15-4ae0-aa4c-608fd9820d95"
    },
    "ansible_processor": [
        "0",
        "GenuineIntel",
        "Intel(R) Xeon(R) Platinum 8175M CPU @ 2.50GHz",
        "1",
        "GenuineIntel",
        "Intel(R) Xeon(R) Platinum 8175M CPU @ 2.50GHz"
    ],
    "ansible_processor_cores": 1,
    "ansible_processor_count": 1,
    "ansible_processor_threads_per_core": 2,
    "ansible_processor_vcpus": 2,
    "ansible_product_name": "t3.small",
    "ansible_product_serial": "ec21d40d-fa87-d3eb-679b-41f3cfbdebbe",
    "ansible_product_uuid": "EC21D40D-FA87-D3EB-679B-41F3CFBDEBBE",
    "ansible_product_version": "NA",
    "ansible_python": {
        "executable": "/usr/bin/python3",
        "has_sslcontext": true,
        "type": "cpython",
        "version": {
            "major": 3,
            "micro": 9,
            "minor": 6,
            "releaselevel": "final",
            "serial": 0
        },
        "version_info": [
            3,
            6,
            9,
            "final",
            0
        ]
    },
    "ansible_python_version": "3.6.9",
    "ansible_real_group_id": 0,
    "ansible_real_user_id": 0,
    "ansible_selinux": {
        "status": "Missing selinux Python library"
    },
    "ansible_selinux_python_present": false,
    "ansible_service_mgr": "systemd",
    "ansible_ssh_host_key_dsa_public": "AAAAB3NzaC1kc3MAAACBAM8PU2USrQV8OGHtInYy9XihDikFayObsBH6doy+5va0wMhDHqf2vz/daf6DJHNhnYQf5YrasoAO1LVl60NOvL6Tf8vJR3q94LS+zQjjOL9upuyQMXyXdmJSklDNcgfHQBsW0v6CnRrDprIxf8y2PW+tbb0j7kHhbSosZjIShIXbAAAAFQCdqciPdyaIVcvWbyHZwJvbhe3s5QAAAIEAuGQleWeMFTYaee1/J7u+EZ9kwhNnb0W6rL/KzBHrucbxUqZMIVkkO2NLXOB93M5H7v4HhST5JIMgVbUMIEQ/sJpXPiIRoRaF2pCB+WtwguwiNBeb5LGOgOR1UxE3hld5Ql11qv+wcg3eyaNt5j/BTlnm1a8ZzU6fqN+/8JS0fnsAAACBAJK/DMyETClF2w5nbPFkOCYW/rdJkLfef83ICnBWG1qe3zwht71VuvwxSRYQQiXHNOMbNkbygI0hpt6lFY7ntHqB9JwumrPULOmj1bIQN2Uv8Hpc7cUPcPxzlfjhKH3mzcurFcy9HX/gDgYGzTkz5v/zquzh9l7NfrhqEKyMPmj4",
    "ansible_ssh_host_key_ecdsa_public": "AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBG5ngs/fKHFzTg2Ul+tOjQw7Nza52Nurskav+qHvQJuR0lQhf4lCJ7x1L4M6NudVAtpHP9hBJX8TkBS18sGfIEU=",
    "ansible_ssh_host_key_ed25519_public": "AAAAC3NzaC1lZDI1NTE5AAAAIA7bRT2WQg8GakwZhVveoMYcmm4BiOOXsxM4hoXe0J2C",
    "ansible_ssh_host_key_rsa_public": "AAAAB3NzaC1yc2EAAAADAQABAAABAQC0Hti8R+MtftS9Hnol2FAIJzk2AazHqTa4/riTVhmDLyopVhaPMyb9IO6AiS0tocTd2Qa0HjQVB1Z0COGcPsHMJyTIcjm2wux1T8sWW8fltzmG4TmJiUXxIwl4ROg9e7346Tjf8UYl6U+2Yc6wP7MjqmYrrWA/vTIXAIisCZ3r37qIho3SuptYpMKASFb9ZZOi8D+7VSeaCn2f5kAPzOOx1Hqx0sfO3Z8Tsk+lE+v5Gm+6B+BIfd4Tmgq8nSX+F/fWQXIpKET5GnTs572usrUBUgI6gfQGfybnspd9KM9LKkmpQfmRgtKW7UAP8h0Pyr6dVE4z/ZOHzWUs2Znl5chh",
    "ansible_swapfree_mb": 0,
    "ansible_swaptotal_mb": 0,
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
    "ansible_uptime_seconds": 9629,
    "ansible_user_dir": "/root",
    "ansible_user_gecos": "root",
    "ansible_user_gid": 0,
    "ansible_user_id": "root",
    "ansible_user_shell": "/bin/bash",
    "ansible_user_uid": 0,
    "ansible_userspace_architecture": "x86_64",
    "ansible_userspace_bits": "64",
    "ansible_virtualization_role": "guest",
    "ansible_virtualization_type": "kvm",
    "gather_subset": [
        "all"
    ],
    "module_setup": true
}