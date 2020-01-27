{
    "ansible_all_ipv4_addresses": [
        "172.31.24.42"
    ],
    "ansible_all_ipv6_addresses": [
        "2406:da18:77c:6102:3d56:6988:e791:686a",
        "fe80::4f9:38ff:fe29:476"
    ],
    "ansible_default_ipv4": {
        "address": "172.31.24.42",
        "alias": "ens5",
        "broadcast": "172.31.31.255",
        "gateway": "172.31.16.1",
        "interface": "ens5",
        "macaddress": "06:f9:38:29:04:76",
        "mtu": 9001,
        "netmask": "255.255.240.0",
        "network": "172.31.16.0",
        "type": "ether"
    },
    "ansible_default_ipv6": {
        "address": "2406:da18:77c:6102:3d56:6988:e791:686a",
        "gateway": "fe80::c7c:acff:fe40:2",
        "interface": "ens5",
        "macaddress": "06:f9:38:29:04:76",
        "mtu": 9001,
        "prefix": "128",
        "scope": "global",
        "type": "ether"
    },
    "ansible_distribution": "Ubuntu",
    "ansible_distribution_file_parsed": true,
    "ansible_distribution_file_path": "/etc/os-release",
    "ansible_distribution_file_variety": "Debian",
    "ansible_distribution_major_version": "18",
    "ansible_distribution_release": "bionic",
    "ansible_distribution_version": "18.04",
    "ansible_fips": false,
    "ansible_hostname": "master"
}