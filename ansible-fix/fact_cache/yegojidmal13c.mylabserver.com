{
    "_ansible_facts_gathered": true,
    "ansible_all_ipv4_addresses": [
        "172.31.27.54"
    ],
    "ansible_all_ipv6_addresses": [
        "2406:da18:77c:6102:fd99:1415:aa68:c083",
        "fe80::442:3bff:fe75:e014"
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
        "epoch": "1579149241",
        "hour": "04",
        "iso8601": "2020-01-16T04:34:01Z",
        "iso8601_basic": "20200116T043401393592",
        "iso8601_basic_short": "20200116T043401",
        "iso8601_micro": "2020-01-16T04:34:01.393666Z",
        "minute": "34",
        "month": "01",
        "second": "01",
        "time": "04:34:01",
        "tz": "UTC",
        "tz_offset": "+0000",
        "weekday": "Thursday",
        "weekday_number": "4",
        "weeknumber": "02",
        "year": "2020"
    },
    "ansible_default_ipv4": {
        "address": "172.31.27.54",
        "alias": "ens5",
        "broadcast": "172.31.31.255",
        "gateway": "172.31.16.1",
        "interface": "ens5",
        "macaddress": "06:42:3b:75:e0:14",
        "mtu": 9001,
        "netmask": "255.255.240.0",
        "network": "172.31.16.0",
        "type": "ether"
    },
    "ansible_default_ipv6": {
        "address": "2406:da18:77c:6102:fd99:1415:aa68:c083",
        "gateway": "fe80::c7c:acff:fe40:2",
        "interface": "ens5",
        "macaddress": "06:42:3b:75:e0:14",
        "mtu": 9001,
        "prefix": "128",
        "scope": "global",
        "type": "ether"
    },
    "ansible_device_links": {
        "ids": {
            "nvme0n1": [
                "nvme-Amazon_Elastic_Block_Store_vol057577c5fe1c5cd2b",
                "nvme-nvme.1d0f-766f6c3035373537376335666531633563643262-416d617a6f6e20456c617374696320426c6f636b2053746f7265-00000001"
            ],
            "nvme0n1p1": [
                "nvme-Amazon_Elastic_Block_Store_vol057577c5fe1c5cd2b-part1",
                "nvme-nvme.1d0f-766f6c3035373537376335666531633563643262-416d617a6f6e20456c617374696320426c6f636b2053746f7265-00000001-part1"
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
            "sectors": "36824",
            "sectorsize": "512",
            "size": "17.98 MB",
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
            "sectors": "182480",
            "sectorsize": "512",
            "size": "89.10 MB",
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
            "sectors": "36808",
            "sectorsize": "512",
            "size": "17.97 MB",
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
            "sectors": "182456",
            "sectorsize": "512",
            "size": "89.09 MB",
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
                    "nvme-Amazon_Elastic_Block_Store_vol057577c5fe1c5cd2b",
                    "nvme-nvme.1d0f-766f6c3035373537376335666531633563643262-416d617a6f6e20456c617374696320426c6f636b2053746f7265-00000001"
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
                            "nvme-Amazon_Elastic_Block_Store_vol057577c5fe1c5cd2b-part1",
                            "nvme-nvme.1d0f-766f6c3035373537376335666531633563643262-416d617a6f6e20456c617374696320426c6f636b2053746f7265-00000001-part1"
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
            "address": "172.31.27.54",
            "broadcast": "172.31.31.255",
            "netmask": "255.255.240.0",
            "network": "172.31.16.0"
        },
        "ipv6": [
            {
                "address": "2406:da18:77c:6102:fd99:1415:aa68:c083",
                "prefix": "128",
                "scope": "global"
            },
            {
                "address": "fe80::442:3bff:fe75:e014",
                "prefix": "64",
                "scope": "link"
            }
        ],
        "macaddress": "06:42:3b:75:e0:14",
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
        "SSH_CLIENT": "202.176.116.200 64110 22",
        "SSH_CONNECTION": "202.176.116.200 64110 172.31.27.54 22",
        "USER": "root",
        "XDG_RUNTIME_DIR": "/run/user/0",
        "XDG_SESSION_ID": "8",
        "_": "/bin/sh"
    },
    "ansible_fibre_channel_wwn": [],
    "ansible_fips": false,
    "ansible_form_factor": "Other",
    "ansible_fqdn": "data2",
    "ansible_hostname": "data2",
    "ansible_hostnqn": "",
    "ansible_interfaces": [
        "ens5",
        "lo"
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
    "ansible_memfree_mb": 75,
    "ansible_memory_mb": {
        "nocache": {
            "free": 357,
            "used": 1598
        },
        "real": {
            "free": 75,
            "total": 1955,
            "used": 1880
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
            "block_available": 3883134,
            "block_size": 4096,
            "block_total": 5065871,
            "block_used": 1182737,
            "device": "/dev/nvme0n1p1",
            "fstype": "ext4",
            "inode_available": 2345262,
            "inode_total": 2560000,
            "inode_used": 214738,
            "mount": "/",
            "options": "rw,relatime,discard,data=ordered",
            "size_available": 15905316864,
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
            "mount": "/snap/amazon-ssm-agent/1480",
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
            "device": "/dev/loop2",
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
            "device": "/dev/loop3",
            "fstype": "squashfs",
            "inode_available": 0,
            "inode_total": 12842,
            "inode_used": 12842,
            "mount": "/snap/core/8268",
            "options": "ro,nodev,relatime",
            "size_available": 0,
            "size_total": 93454336,
            "uuid": "N/A"
        }
    ],
    "ansible_nodename": "data2",
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
    "ansible_product_serial": "ec2304d0-ffb9-a84b-3895-ffd81c7412ef",
    "ansible_product_uuid": "EC2304D0-FFB9-A84B-3895-FFD81C7412EF",
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
    "ansible_ssh_host_key_dsa_public": "AAAAB3NzaC1kc3MAAACBAJsHwOM54HY02NBZktaftYs/+JUhyzxNy4TEX2TXTeItrDVfrlRPeTrdem3Lbx+rOIskiMClvEw1MsXi/jOJupd26y0K1hz9Z4XmvARFfxUSoxFDgJR6Lsma4u+ARNBZZKCJHefnSxnbzIQq2+YZjMnqD53yVPHkmRbplZvCsZsJAAAAFQCSdmBcrcTqPLGyhrrjleEKr85cpwAAAIByEN2xVMz7Sv/Hjl396NZqHBinjZ7XJLHhFmkOS9LfymQw8ZKrV9tuz8LTAkDmewaDr/PtwJGWHBmoYeoobqFPra4Yo/oIg4NAoa9Gui67gmOF4UQXl4lC7vxgAblxCDnNiC/lmHE8WmRgLGvhlPfw6x/smoiP/I5U5dvLznPAWgAAAIADBcIck3L0H5NzyNYE4kKmGOrNeXTDCCAb7JNO9x8jiBnyPQELtixwRXZhEh2CbdB43V7zshCVPdzfx5Ck4g5MtiDM1uOsAZziEEt0sBcRCsfClCR1OvZbr6zmHN2GNKQ6+RnC1nC+50HGDuwoOeE/NSkMeW2ycAkL2DXzwDYE7g==",
    "ansible_ssh_host_key_ecdsa_public": "AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBIbx/1oXzODWtt0FdtBUlvid6G52O6oAmhH3rFRkFPO0T+Zsa8EtoVyapKTpUA0mL5jpbmZsmcjkurHwqz1FHaA=",
    "ansible_ssh_host_key_ed25519_public": "AAAAC3NzaC1lZDI1NTE5AAAAIPaiB5953z0Z82YV15eP5aVvUMJvljosiMHyunYn25zu",
    "ansible_ssh_host_key_rsa_public": "AAAAB3NzaC1yc2EAAAADAQABAAABAQD3PsTNuf8xVvEo/DOKe++LK9cQDYIUoGg9oUR2QQ/wop+ywQGfYuQIiY2zlJTuvj0s3CuCH0HQOv84Tp5VHiSYmbNo4B5Jjx5FmlYWWayHHnfuRYeyorOuuYYfRRSQPdLmgxO9Iu7riagTUluG+cp4b9dDP/aUB05uxfA+50/fgoEM7DEy7yjsjerxDvAga54CCNvzFhxZYHzpl7bBZ25JCyvYUlCk/ZZIumCdqFGU6R6Ye20gzwnPxtoEfoZTnEzkLd8FEfZ7ZTe5dSZl9iJpwFTvsgmn2f9EADfIu43ywcwbEAABJCpv96B5lzEhtC5QA4DC8EF7ttjolrL0yiZl",
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
    "ansible_uptime_seconds": 9633,
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