# Segment Routing Lab with Ansible

<figure markdown>
  ![heading](assets/images/heading.png){ loading=lazy }
  <figcaption>             Segment Routing with TI-LFA on Cisco XRv9k platform with Ansible</figcaption>
</figure>

!!! info "Must Read the Original"
    This is a replica of the original [Cisco-Segment-Routing-Lab](https://hmntsharma.github.io/cisco-segment-routing/). The only difference is that this time it is entirely implemented using ansible. Thus, without going into depth, I'll simply share the ansible configuration.

!!! tip "Sinlge Playbook"
    The whole lab guide is run as a single playbook, which is a collection of independent but interconnected plays that have been aggregated for simplicity of usage.
    The playbook is self-explanatory as well; for anything else, there is an online search or open github discussions/issues.

# Ansible
## Directory Structure (ansible files only)
!!! note "Defaults"
    The ansible play directory is arranged in such a manner that all of the folders (with names) and files (with names) are defaults, where ansible checks for variables and values.

```java
.
├── 0_revert_to_base_topology.yaml
├── 10_tilfa_ns_prep.yaml
├── 11_tilfa_ns_node.yaml
├── 12_tilfa_ns_local_srlg.yaml
├── 13_tilfa_ns_global_srlg.yaml
├── 14_tilfa_ns_node_plus_srlg.yaml
├── 15_tilfa_tiebrkr_link_node_srlg.yaml
├── 1_getting_started.yaml
├── 2_intro_segment_routing.yaml
├── 3_sr_ldp_interworking.yaml
├── 4_tilfa.yaml
├── 5_zs_tilfa.yaml
├── 6_ss_tilfa.yaml
├── 7_ds_tilfa.yaml
├── 8_microloop_avoidance.yaml
├── 9_mpls_traffic_eng.yaml
├── all_inclusive_play.yaml
├── ansible.cfg
├── inventory
│   ├── group_vars
│   │   └── routers.yaml
│   ├── hosts.ini
│   └── host_vars
│       ├── P2.yaml
│       ├── P3.yaml
│       ├── P4.yaml
│       ├── P6.yaml
│       ├── P7.yaml
│       ├── P8.yaml
│       ├── P9.yaml
│       ├── PE1.yaml
│       └── PE5.yaml
├── templates
│   ├── ds_tilfa.j2
│   ├── ds_tilfa_revert.j2
│   ├── iosxr_show_cef_5_5_5_5_32.ttp
│   ├── iosxr_show_isis_adjacency.ttp
│   ├── iosxr_show_mpls_forwarding_prefix.ttp
│   ├── ip_igp_ldp_template.j2
│   ├── microloop_avoidance_p2_enable.j2
│   ├── microloop_avoidance_p2.j2
│   ├── microloop_avoidance_p2_restore.j2
│   ├── microloop_avoidance_p7_restore.j2
│   ├── microloop_avoidance_p8.j2
│   ├── microloop_avoidance_p8_trigger.j2
│   ├── mpls_traff_eng.j2
│   ├── prep_p9.j2
│   ├── restore_topology_template.j2
│   ├── sr_ldp_template.j2
│   ├── srms_template.j2
│   ├── sr_only_part1.j2
│   ├── sr_only_remove_ldp.j2
│   ├── sr_only_remove_srms.j2
│   ├── sr_prefer_template.j2
│   ├── sr_template.j2
│   ├── ss_tilfa_p7.j2
│   ├── tilfa.j2
│   ├── tilfa_ns_global_srlg_p2.j2
│   ├── tilfa_ns_global_srlg_p7.j2
│   ├── tilfa_ns_global_srlg_revert_p2.j2
│   ├── tilfa_ns_global_srlg_revert_p7.j2
│   ├── tilfa_ns_local_srlg.j2
│   ├── tilfa_ns_node.j2
│   ├── tilfa_ns_node_revert.j2
│   ├── tilfa_ns_prep_p4.j2
│   ├── tilfa_ns_prep_p6.j2
│   ├── tilfa_ns_prep_p7.j2
│   ├── tilfa_ns_prep_p8.j2
│   ├── tilfa_tiebrkr_prefer_link.j2
│   ├── tilfa_tiebrkr_prefer_node.j2
│   ├── tilfa_tiebrkr_prefer_srlg.j2
│   ├── zs_tilfa_p2.j2
│   ├── zs_tilfa_p6.j2
│   ├── zs_tilfa_p7.j2
│   ├── zs_tilfa_revert_p2.j2
│   ├── zs_tilfa_revert_p6.j2
│   └── zs_tilfa_revert_p7.j2
└── xrcfg
```

## Configuration
```java
(vntdvops) lab@netdevops:~/github/ansible-cisco-segment-routing$ ansible-config view
[defaults]
host_key_checking = False
inventory = inventory/hosts.ini
forks=30
stdout_callback = yaml
display_skipped_hosts = false

# https://www.redhat.com/sysadmin/faster-ansible-playbook-execution
[ssh_connection]
ssh_args = -o ControlMaster=auto -o ControlPersist=60s

[persistent_connection]
connect_timeout = 120
connect_retry_timeout = 30
# The following is used to replace config as libssh has a bug
#ssh_type = paramiko

(vntdvops) lab@netdevops:~/github/ansible-cisco-segment-routing$ ansible-config
```

```java
(vntdvops) lab@netdevops:~/github/ansible-cisco-segment-routing$ ansible --version
ansible [core 2.14.3]
  config file = /home/lab/github/ansible-cisco-segment-routing/ansible.cfg
  configured module search path = ['/home/lab/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /home/lab/vntdvops/lib/python3.10/site-packages/ansible
  ansible collection location = /home/lab/.ansible/collections:/usr/share/ansible/collections
  executable location = /home/lab/vntdvops/bin/ansible
  python version = 3.10.6 (main, Nov 14 2022, 16:10:14) [GCC 11.3.0] (/home/lab/vntdvops/bin/python)
  jinja version = 3.1.2
  libyaml = True
(vntdvops) lab@netdevops:~/github/ansible-cisco-segment-routing$
```

## Inventory
```java
(vntdvops) lab@netdevops:~/github/ansible-cisco-segment-routing$ ansible-inventory --graph
@all:
  |--@ungrouped:
  |--@routers:
  |  |--PE1
  |  |--P2
  |  |--P3
  |  |--P4
  |  |--PE5
  |  |--P6
  |  |--P7
  |  |--P8
  |  |--P9
  |--@zstilfa:
  |  |--P2
  |  |--P6
  |  |--P7
(vntdvops) lab@netdevops:~/github/ansible-cisco-segment-routing$
```

## Host Variables (e.g. PE1, individual as well as inherited from the group)
```java
(vntdvops) lab@netdevops:~/github/ansible-cisco-segment-routing$ ansible-inventory -y --host PE1
ansible_connection: ansible.netcommon.network_cli
ansible_network_os: cisco.iosxr.iosxr
hostname: PE1
interfaces:
- address: 1.1.1.1/32
  description: System_Loopback_Interface
  name: Loopback0
- address: 12.0.0.1/24
  description: PE1_to_P2
  name: GigabitEthernet0/0/0/2
protocols:
  isis:
  - interfaces:
    - loopback: true
      name: Loopback0
    - loopback: false
      metric: 10
      name: GigabitEthernet0/0/0/2
    net: 49.0000.0000.0001.00
    sid: 1
(vntdvops) lab@netdevops:~/github/ansible-cisco-segment-routing$
```


