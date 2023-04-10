## Clone the Repository

This topology was created in EVE-NG using the Cisco XRv9k VM.

Please also have a look at [this one](https://github.com/hmntsharma/ansible-cisco-xrd-sr), which is based on Cisco XRd container platform.

```ruby linenums="1"
$ git clone https://github.com/hmntsharma/ansible-cisco-segment-routing.git
Cloning into 'ansible-cisco-segment-routing'...
remote: Enumerating objects: 208, done.
remote: Counting objects: 100% (208/208), done.
remote: Compressing objects: 100% (133/133), done.
remote: Total 208 (delta 70), reused 188 (delta 64), pack-reused 0
Receiving objects: 100% (208/208), 4.48 MiB | 10.11 MiB/s, done.
Resolving deltas: 100% (70/70), done.
$
```

### Execute the Playbook

```ruby linenums="1"
$ ansible-playbook main.yml -e ansible_user="cisco" -e ansible_password="cisco"
```

<figure markdown>
  ![base_topology.png](assets/images/base_topology.png){ loading=lazy }
  <figcaption>Base Topology</figcaption>
</figure>

## Revert to Base Topology

```ruby linenums="1"
PLAY [0. RESTORE BASE TOPOLOGY] ************************************************

TASK [lab_0_revert_to_base_topology : 0.0 RENDER AND DISPLAY THE BASE CONFIGURATION] ***
ok: [PE1] => 
  msg:
  - 'template: restore_topology_template.j2'
  - - username cisco
    - ' group root-lr'
    - ' group cisco-support'
    - ' secret 10 $6$m69UO/m0cK.e3O/.$EtYXDVl3/aphJkazxKy145fyIY/./Xxt1fi7B3tjYemXr6pzHEJRNfq1DxNJ..WlAQx4wFr6kJesSGtKLv8/k/'
    - '!'
    - call-home
    - ' service active'
    - ' contact smart-licensing'
    - ' profile CiscoTAC-1'
    - '  active'
    - '  destination transport-method email disable'
    - '  destination transport-method http'
    - ' !'
    - '!'
    - ''
    - interface MgmtEth0/RP0/CPU0/0
    - ' no ipv4 address dhcp'
    - ' ipv4 address 192.168.18.1 255.255.255.0'
    - ' no shutdown'
    - '!'
    - grpc
    - ' dscp cs4'
    - ' port 57400'
    - ' no-tls'
    - ' max-streams 128'
    - ' max-streams-per-user 128'
    - ' address-family dual'
    - ' max-request-total 256'
    - ' max-request-per-user 32'
    - '!'
    - ssh server vrf default
    - root
    - '!'
    - ''
    - ''
ok: [P3] => 
  msg:
  - 'template: restore_topology_template.j2'
  - - username cisco
    - ' group root-lr'
    - ' group cisco-support'
    - ' secret 10 $6$m69UO/m0cK.e3O/.$EtYXDVl3/aphJkazxKy145fyIY/./Xxt1fi7B3tjYemXr6pzHEJRNfq1DxNJ..WlAQx4wFr6kJesSGtKLv8/k/'
    - '!'
    - call-home
    - ' service active'
    - ' contact smart-licensing'
    - ' profile CiscoTAC-1'
    - '  active'
    - '  destination transport-method email disable'
    - '  destination transport-method http'
    - ' !'
    - '!'
    - ''
    - interface MgmtEth0/RP0/CPU0/0
    - ' no ipv4 address dhcp'
    - ' ipv4 address 192.168.18.3 255.255.255.0'
    - ' no shutdown'
    - '!'
    - grpc
    - ' dscp cs4'
    - ' port 57400'
    - ' no-tls'
    - ' max-streams 128'
    - ' max-streams-per-user 128'
    - ' address-family dual'
    - ' max-request-total 256'
    - ' max-request-per-user 32'
    - '!'
    - ssh server vrf default
    - root
    - '!'
    - ''
    - ''
ok: [P2] => 
  msg:
  - 'template: restore_topology_template.j2'
  - - username cisco
    - ' group root-lr'
    - ' group cisco-support'
    - ' secret 10 $6$m69UO/m0cK.e3O/.$EtYXDVl3/aphJkazxKy145fyIY/./Xxt1fi7B3tjYemXr6pzHEJRNfq1DxNJ..WlAQx4wFr6kJesSGtKLv8/k/'
    - '!'
    - call-home
    - ' service active'
    - ' contact smart-licensing'
    - ' profile CiscoTAC-1'
    - '  active'
    - '  destination transport-method email disable'
    - '  destination transport-method http'
    - ' !'
    - '!'
    - ''
    - interface MgmtEth0/RP0/CPU0/0
    - ' no ipv4 address dhcp'
    - ' ipv4 address 192.168.18.2 255.255.255.0'
    - ' no shutdown'
    - '!'
    - grpc
    - ' dscp cs4'
    - ' port 57400'
    - ' no-tls'
    - ' max-streams 128'
    - ' max-streams-per-user 128'
    - ' address-family dual'
    - ' max-request-total 256'
    - ' max-request-per-user 32'
    - '!'
    - ssh server vrf default
    - root
    - '!'
    - ''
    - ''
ok: [PE5] => 
  msg:
  - 'template: restore_topology_template.j2'
  - - username cisco
    - ' group root-lr'
    - ' group cisco-support'
    - ' secret 10 $6$m69UO/m0cK.e3O/.$EtYXDVl3/aphJkazxKy145fyIY/./Xxt1fi7B3tjYemXr6pzHEJRNfq1DxNJ..WlAQx4wFr6kJesSGtKLv8/k/'
    - '!'
    - call-home
    - ' service active'
    - ' contact smart-licensing'
    - ' profile CiscoTAC-1'
    - '  active'
    - '  destination transport-method email disable'
    - '  destination transport-method http'
    - ' !'
    - '!'
    - ''
    - interface MgmtEth0/RP0/CPU0/0
    - ' no ipv4 address dhcp'
    - ' ipv4 address 192.168.18.5 255.255.255.0'
    - ' no shutdown'
    - '!'
    - grpc
    - ' dscp cs4'
    - ' port 57400'
    - ' no-tls'
    - ' max-streams 128'
    - ' max-streams-per-user 128'
    - ' address-family dual'
    - ' max-request-total 256'
    - ' max-request-per-user 32'
    - '!'
    - ssh server vrf default
    - root
    - '!'
    - ''
    - ''
ok: [P4] => 
  msg:
  - 'template: restore_topology_template.j2'
  - - username cisco
    - ' group root-lr'
    - ' group cisco-support'
    - ' secret 10 $6$m69UO/m0cK.e3O/.$EtYXDVl3/aphJkazxKy145fyIY/./Xxt1fi7B3tjYemXr6pzHEJRNfq1DxNJ..WlAQx4wFr6kJesSGtKLv8/k/'
    - '!'
    - call-home
    - ' service active'
    - ' contact smart-licensing'
    - ' profile CiscoTAC-1'
    - '  active'
    - '  destination transport-method email disable'
    - '  destination transport-method http'
    - ' !'
    - '!'
    - ''
    - interface MgmtEth0/RP0/CPU0/0
    - ' no ipv4 address dhcp'
    - ' ipv4 address 192.168.18.4 255.255.255.0'
    - ' no shutdown'
    - '!'
    - grpc
    - ' dscp cs4'
    - ' port 57400'
    - ' no-tls'
    - ' max-streams 128'
    - ' max-streams-per-user 128'
    - ' address-family dual'
    - ' max-request-total 256'
    - ' max-request-per-user 32'
    - '!'
    - ssh server vrf default
    - root
    - '!'
    - ''
    - ''
ok: [P7] => 
  msg:
  - 'template: restore_topology_template.j2'
  - - username cisco
    - ' group root-lr'
    - ' group cisco-support'
    - ' secret 10 $6$m69UO/m0cK.e3O/.$EtYXDVl3/aphJkazxKy145fyIY/./Xxt1fi7B3tjYemXr6pzHEJRNfq1DxNJ..WlAQx4wFr6kJesSGtKLv8/k/'
    - '!'
    - call-home
    - ' service active'
    - ' contact smart-licensing'
    - ' profile CiscoTAC-1'
    - '  active'
    - '  destination transport-method email disable'
    - '  destination transport-method http'
    - ' !'
    - '!'
    - ''
    - interface MgmtEth0/RP0/CPU0/0
    - ' no ipv4 address dhcp'
    - ' ipv4 address 192.168.18.7 255.255.255.0'
    - ' no shutdown'
    - '!'
    - grpc
    - ' dscp cs4'
    - ' port 57400'
    - ' no-tls'
    - ' max-streams 128'
    - ' max-streams-per-user 128'
    - ' address-family dual'
    - ' max-request-total 256'
    - ' max-request-per-user 32'
    - '!'
    - ssh server vrf default
    - root
    - '!'
    - ''
    - ''
ok: [P9] => 
  msg:
  - 'template: restore_topology_template.j2'
  - - username cisco
    - ' group root-lr'
    - ' group cisco-support'
    - ' secret 10 $6$m69UO/m0cK.e3O/.$EtYXDVl3/aphJkazxKy145fyIY/./Xxt1fi7B3tjYemXr6pzHEJRNfq1DxNJ..WlAQx4wFr6kJesSGtKLv8/k/'
    - '!'
    - call-home
    - ' service active'
    - ' contact smart-licensing'
    - ' profile CiscoTAC-1'
    - '  active'
    - '  destination transport-method email disable'
    - '  destination transport-method http'
    - ' !'
    - '!'
    - ''
    - interface MgmtEth0/RP0/CPU0/0
    - ' no ipv4 address dhcp'
    - ' ipv4 address 192.168.18.9 255.255.255.0'
    - ' no shutdown'
    - '!'
    - grpc
    - ' dscp cs4'
    - ' port 57400'
    - ' no-tls'
    - ' max-streams 128'
    - ' max-streams-per-user 128'
    - ' address-family dual'
    - ' max-request-total 256'
    - ' max-request-per-user 32'
    - '!'
    - ssh server vrf default
    - root
    - '!'
    - ''
    - ''
ok: [P6] => 
  msg:
  - 'template: restore_topology_template.j2'
  - - username cisco
    - ' group root-lr'
    - ' group cisco-support'
    - ' secret 10 $6$m69UO/m0cK.e3O/.$EtYXDVl3/aphJkazxKy145fyIY/./Xxt1fi7B3tjYemXr6pzHEJRNfq1DxNJ..WlAQx4wFr6kJesSGtKLv8/k/'
    - '!'
    - call-home
    - ' service active'
    - ' contact smart-licensing'
    - ' profile CiscoTAC-1'
    - '  active'
    - '  destination transport-method email disable'
    - '  destination transport-method http'
    - ' !'
    - '!'
    - ''
    - interface MgmtEth0/RP0/CPU0/0
    - ' no ipv4 address dhcp'
    - ' ipv4 address 192.168.18.6 255.255.255.0'
    - ' no shutdown'
    - '!'
    - grpc
    - ' dscp cs4'
    - ' port 57400'
    - ' no-tls'
    - ' max-streams 128'
    - ' max-streams-per-user 128'
    - ' address-family dual'
    - ' max-request-total 256'
    - ' max-request-per-user 32'
    - '!'
    - ssh server vrf default
    - root
    - '!'
    - ''
    - ''
ok: [P8] => 
  msg:
  - 'template: restore_topology_template.j2'
  - - username cisco
    - ' group root-lr'
    - ' group cisco-support'
    - ' secret 10 $6$m69UO/m0cK.e3O/.$EtYXDVl3/aphJkazxKy145fyIY/./Xxt1fi7B3tjYemXr6pzHEJRNfq1DxNJ..WlAQx4wFr6kJesSGtKLv8/k/'
    - '!'
    - call-home
    - ' service active'
    - ' contact smart-licensing'
    - ' profile CiscoTAC-1'
    - '  active'
    - '  destination transport-method email disable'
    - '  destination transport-method http'
    - ' !'
    - '!'
    - ''
    - interface MgmtEth0/RP0/CPU0/0
    - ' no ipv4 address dhcp'
    - ' ipv4 address 192.168.18.8 255.255.255.0'
    - ' no shutdown'
    - '!'
    - grpc
    - ' dscp cs4'
    - ' port 57400'
    - ' no-tls'
    - ' max-streams 128'
    - ' max-streams-per-user 128'
    - ' address-family dual'
    - ' max-request-total 256'
    - ' max-request-per-user 32'
    - '!'
    - ssh server vrf default
    - root
    - '!'
    - ''
    - ''

TASK [lab_0_revert_to_base_topology : 0.1 RENDER AND SAVE THE BASE CONFIGURATION] ***
ok: [P4]
ok: [P6]
ok: [PE1]
ok: [P8]
ok: [P7]
ok: [P2]
ok: [P3]
ok: [P9]
ok: [PE5]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_0_revert_to_base_topology : 1 secs PAUSE FOR CONVERGENCE] ************
ok: [PE1]

TASK [lab_0_revert_to_base_topology : 0.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [PE1] => 
  output.dest: xrcfg/PE1.base.xrcfg
ok: [PE5] => 
  output.dest: xrcfg/PE5.base.xrcfg
ok: [P6] => 
  output.dest: xrcfg/P6.base.xrcfg
ok: [P3] => 
  output.dest: xrcfg/P3.base.xrcfg
ok: [P4] => 
  output.dest: xrcfg/P4.base.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.base.xrcfg
ok: [P8] => 
  output.dest: xrcfg/P8.base.xrcfg
ok: [P2] => 
  output.dest: xrcfg/P2.base.xrcfg
ok: [P9] => 
  output.dest: xrcfg/P9.base.xrcfg

TASK [lab_0_revert_to_base_topology : 0.3 RENDER AND APPLY THE BASE CONFIGURATION] ***
changed: [P9]
changed: [PE1]
changed: [PE5]
changed: [P7]
changed: [P2]
changed: [P6]
changed: [P4]
changed: [P3]
changed: [P8]
```

## Getting Started with IP, ISIS and LDP
<figure markdown>
  ![base_topology.png](assets/images/base_topology.png){ loading=lazy }
  <figcaption>Base Topology</figcaption>
</figure>

```ruby linenums="1"
PLAY [1. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - GETTING STARTED] ************

TASK [lab_1_getting_started : 1.0 RENDER AND DISPLAY THE IP, ISIS & LDP CONFIGURATION] ***
ok: [P4] => 
  msg:
  - 'template: ip_igp_ldp_template.j2'
  - - ''
    - hostname P4
    - root
    - ''
    - interface Loopback0
    - ' ipv4 address 4.4.4.4/32'
    - ' description System_Loopback_Interface'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/0
    - ' ipv4 address 45.0.0.4/24'
    - ' description P4_to_PE5'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/1
    - ' ipv4 address 48.0.0.4/24'
    - ' description P4_to_P8'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/2
    - ' ipv4 address 34.0.0.4/24'
    - ' description P4_to_P3'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/4
    - ' ipv4 address 47.0.0.4/24'
    - ' description P4_to_P7'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - router isis IGP
    - ' is-type level-2-only'
    - ' net 49.0000.0000.0004.00'
    - ' log adjacency changes'
    - ' address-family ipv4 unicast'
    - '  mpls ldp auto-config'
    - '  metric-style wide level 2'
    - ' !'
    - ' interface Loopback0'
    - '  passive'
    - '  address-family ipv4 unicast'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/0'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/1'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/2'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/4'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  !'
    - root
    - ''
    - mpls oam
    - '!'
    - mpls ldp
    - ' log'
    - '  neighbor'
    - ' !'
    - '!'
    - root
    - '!'
    - ''
    - ''
ok: [PE1] => 
  msg:
  - 'template: ip_igp_ldp_template.j2'
  - - ''
    - hostname PE1
    - root
    - ''
    - interface Loopback0
    - ' ipv4 address 1.1.1.1/32'
    - ' description System_Loopback_Interface'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/2
    - ' ipv4 address 12.0.0.1/24'
    - ' description PE1_to_P2'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - router isis IGP
    - ' is-type level-2-only'
    - ' net 49.0000.0000.0001.00'
    - ' log adjacency changes'
    - ' address-family ipv4 unicast'
    - '  mpls ldp auto-config'
    - '  metric-style wide level 2'
    - ' !'
    - ' interface Loopback0'
    - '  passive'
    - '  address-family ipv4 unicast'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/2'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  !'
    - root
    - ''
    - mpls oam
    - '!'
    - mpls ldp
    - ' log'
    - '  neighbor'
    - ' !'
    - '!'
    - root
    - '!'
    - ''
    - ''
ok: [P6] => 
  msg:
  - 'template: ip_igp_ldp_template.j2'
  - - ''
    - hostname P6
    - root
    - ''
    - interface Loopback0
    - ' ipv4 address 6.6.6.6/32'
    - ' description System_Loopback_Interface'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/0
    - ' ipv4 address 67.0.0.6/24'
    - ' description P6_to_P7'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/1
    - ' ipv4 address 26.0.0.6/24'
    - ' description P6_to_P2'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - router isis IGP
    - ' is-type level-2-only'
    - ' net 49.0000.0000.0006.00'
    - ' log adjacency changes'
    - ' address-family ipv4 unicast'
    - '  mpls ldp auto-config'
    - '  metric-style wide level 2'
    - ' !'
    - ' interface Loopback0'
    - '  passive'
    - '  address-family ipv4 unicast'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/0'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/1'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  !'
    - root
    - ''
    - mpls oam
    - '!'
    - mpls ldp
    - ' log'
    - '  neighbor'
    - ' !'
    - '!'
    - root
    - '!'
    - ''
    - ''
ok: [P3] => 
  msg:
  - 'template: ip_igp_ldp_template.j2'
  - - ''
    - hostname P3
    - root
    - ''
    - interface Loopback0
    - ' ipv4 address 3.3.3.3/32'
    - ' description System_Loopback_Interface'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/0
    - ' ipv4 address 23.0.0.3/24'
    - ' description P3_to_P2'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/1
    - ' ipv4 address 37.0.0.3/24'
    - ' description P3_to_P7'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/2
    - ' ipv4 address 34.0.0.3/24'
    - ' description P3_to_P4'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/3
    - ' ipv4 address 39.0.0.3/24'
    - ' description P3_to_P9'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - router isis IGP
    - ' is-type level-2-only'
    - ' net 49.0000.0000.0003.00'
    - ' log adjacency changes'
    - ' address-family ipv4 unicast'
    - '  mpls ldp auto-config'
    - '  metric-style wide level 2'
    - ' !'
    - ' interface Loopback0'
    - '  passive'
    - '  address-family ipv4 unicast'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/0'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/1'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/2'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/3'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  !'
    - root
    - ''
    - mpls oam
    - '!'
    - mpls ldp
    - ' log'
    - '  neighbor'
    - ' !'
    - '!'
    - root
    - '!'
    - ''
    - ''
ok: [P2] => 
  msg:
  - 'template: ip_igp_ldp_template.j2'
  - - ''
    - hostname P2
    - root
    - ''
    - interface Loopback0
    - ' ipv4 address 2.2.2.2/32'
    - ' description System_Loopback_Interface'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/0
    - ' ipv4 address 23.0.0.2/24'
    - ' description P2_to_P3'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/1
    - ' ipv4 address 26.0.0.2/24'
    - ' description P2_to_P6'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/2
    - ' ipv4 address 12.0.0.2/24'
    - ' description P2_to_PE1'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/3
    - ' ipv4 address 27.0.0.2/24'
    - ' description P2_to_P7'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/5
    - ' ipv4 address 29.0.0.2/24'
    - ' description P2_to_P9'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - router isis IGP
    - ' is-type level-2-only'
    - ' net 49.0000.0000.0002.00'
    - ' log adjacency changes'
    - ' address-family ipv4 unicast'
    - '  mpls ldp auto-config'
    - '  metric-style wide level 2'
    - ' !'
    - ' interface Loopback0'
    - '  passive'
    - '  address-family ipv4 unicast'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/0'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/1'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/2'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/3'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/5'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  !'
    - root
    - ''
    - mpls oam
    - '!'
    - mpls ldp
    - ' log'
    - '  neighbor'
    - ' !'
    - '!'
    - root
    - '!'
    - ''
    - ''
ok: [PE5] => 
  msg:
  - 'template: ip_igp_ldp_template.j2'
  - - ''
    - hostname PE5
    - root
    - ''
    - interface Loopback0
    - ' ipv4 address 5.5.5.5/32'
    - ' description System_Loopback_Interface'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/0
    - ' ipv4 address 45.0.0.5/24'
    - ' description PE5_to_P4'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - router isis IGP
    - ' is-type level-2-only'
    - ' net 49.0000.0000.0005.00'
    - ' log adjacency changes'
    - ' address-family ipv4 unicast'
    - '  mpls ldp auto-config'
    - '  metric-style wide level 2'
    - ' !'
    - ' interface Loopback0'
    - '  passive'
    - '  address-family ipv4 unicast'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/0'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  !'
    - root
    - ''
    - mpls oam
    - '!'
    - mpls ldp
    - ' log'
    - '  neighbor'
    - ' !'
    - '!'
    - root
    - '!'
    - ''
    - ''
ok: [P8] => 
  msg:
  - 'template: ip_igp_ldp_template.j2'
  - - ''
    - hostname P8
    - root
    - ''
    - interface Loopback0
    - ' ipv4 address 8.8.8.8/32'
    - ' description System_Loopback_Interface'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/1
    - ' ipv4 address 48.0.0.8/24'
    - ' description P8_to_P4'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/2
    - ' ipv4 address 78.0.0.8/24'
    - ' description P8_to_P7'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - router isis IGP
    - ' is-type level-2-only'
    - ' net 49.0000.0000.0008.00'
    - ' log adjacency changes'
    - ' address-family ipv4 unicast'
    - '  mpls ldp auto-config'
    - '  metric-style wide level 2'
    - ' !'
    - ' interface Loopback0'
    - '  passive'
    - '  address-family ipv4 unicast'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/0'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/1'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/2'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  !'
    - root
    - ''
    - mpls oam
    - '!'
    - mpls ldp
    - ' log'
    - '  neighbor'
    - ' !'
    - '!'
    - root
    - '!'
    - ''
    - ''
ok: [P7] => 
  msg:
  - 'template: ip_igp_ldp_template.j2'
  - - ''
    - hostname P7
    - root
    - ''
    - interface Loopback0
    - ' ipv4 address 7.7.7.7/32'
    - ' description System_Loopback_Interface'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/0
    - ' ipv4 address 67.0.0.7/24'
    - ' description P7_to_P6'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/1
    - ' ipv4 address 37.0.0.7/24'
    - ' description P7_to_P7'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/2
    - ' ipv4 address 78.0.0.7/24'
    - ' description P7_to_P8'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/3
    - ' ipv4 address 27.0.0.7/24'
    - ' description P7_to_P2'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/4
    - ' ipv4 address 47.0.0.7/24'
    - ' description P7_to_P4'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - router isis IGP
    - ' is-type level-2-only'
    - ' net 49.0000.0000.0007.00'
    - ' log adjacency changes'
    - ' address-family ipv4 unicast'
    - '  mpls ldp auto-config'
    - '  metric-style wide level 2'
    - ' !'
    - ' interface Loopback0'
    - '  passive'
    - '  address-family ipv4 unicast'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/0'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/1'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/2'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/3'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/4'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  !'
    - root
    - ''
    - mpls oam
    - '!'
    - mpls ldp
    - ' log'
    - '  neighbor'
    - ' !'
    - '!'
    - root
    - '!'
    - ''
    - ''

TASK [lab_1_getting_started : 1.1 RENDER AND SAVE THE IP, ISIS & LDP CONFIGURATION] ***
ok: [PE5]
ok: [PE1]
ok: [P2]
ok: [P6]
ok: [P3]
ok: [P8]
ok: [P7]
ok: [P4]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_1_getting_started : 1 secs PAUSE FOR CONVERGENCE] ********************
ok: [PE1]

TASK [lab_1_getting_started : 1.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => 
  output.dest: xrcfg/P2.ip_mpls.xrcfg
ok: [P4] => 
  output.dest: xrcfg/P4.ip_mpls.xrcfg
ok: [P3] => 
  output.dest: xrcfg/P3.ip_mpls.xrcfg
ok: [PE5] => 
  output.dest: xrcfg/PE5.ip_mpls.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.ip_mpls.xrcfg
ok: [P6] => 
  output.dest: xrcfg/P6.ip_mpls.xrcfg
ok: [PE1] => 
  output.dest: xrcfg/PE1.ip_mpls.xrcfg
ok: [P8] => 
  output.dest: xrcfg/P8.ip_mpls.xrcfg

TASK [lab_1_getting_started : 1.3 RENDER AND APPLY THE IP, ISIS & LDP CONFIGURATION] ***
changed: [PE1]
changed: [PE5]
changed: [P6]
changed: [P8]
changed: [P4]
changed: [P3]
changed: [P7]
changed: [P2]
Pausing for 120 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_1_getting_started : 2 mins PAUSE FOR CONVERGENCE] ********************
ok: [PE1]

TASK [lab_1_getting_started : 1.4 RUN COMMANDS TO CAPTURE IP, ISIS & LDP STATE] ***
ok: [PE1] => (item=show ipv4 interface brief)
ok: [PE1] => (item=ping 12.0.0.2)
ok: [PE1] => (item=show isis adjacency)
ok: [PE1] => (item=show route)
ok: [PE1] => (item=show isis route 5.5.5.5/32 detail)
ok: [PE1] => (item=show route 5.5.5.5/32 detail)
ok: [PE1] => (item=show mpls ldp neighbor brief)
ok: [PE1] => (item=show mpls label table)
ok: [PE1] => (item=show mpls forwarding)
ok: [PE1] => (item=show cef 5.5.5.5/32)
ok: [PE1] => (item=traceroute mpls ipv4 5.5.5.5/32)
ok: [PE1] => (item=traceroute mpls multipath ipv4 5.5.5.5/32 verbose)

TASK [lab_1_getting_started : 1.5 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [PE1] => (item=show ipv4 interface brief) => 
  msg:
  - - - Interface                      IP-Address      Status          Protocol Vrf-Name
      - 'Loopback0                      1.1.1.1         Up              Up       default '
      - 'MgmtEth0/RP0/CPU0/0            192.168.18.1    Up              Up       default '
      - 'GigabitEthernet0/0/0/0         unassigned      Down            Down     default '
      - 'GigabitEthernet0/0/0/1         unassigned      Down            Down     default '
      - 'GigabitEthernet0/0/0/2         12.0.0.1        Up              Up       default '
      - 'GigabitEthernet0/0/0/3         unassigned      Down            Down     default '
      - 'GigabitEthernet0/0/0/4         unassigned      Down            Down     default '
      - 'GigabitEthernet0/0/0/5         unassigned      Down            Down     default '
      - 'GigabitEthernet0/0/0/6         unassigned      Down            Down     default '
      - GigabitEthernet0/0/0/7         unassigned      Down            Down     default
ok: [PE1] => (item=ping 12.0.0.2) => 
  msg:
  - - - Type escape sequence to abort.
      - 'Sending 5, 100-byte ICMP Echos to 12.0.0.2, timeout is 2 seconds:'
      - '!!!!!'
      - Success rate is 100 percent (5/5), round-trip min/avg/max = 1/2/7 ms
ok: [PE1] => (item=show isis adjacency) => 
  msg:
  - - - 'IS-IS IGP Level-2 adjacencies:'
      - System Id      Interface                SNPA           State Hold Changed  NSF IPv4 IPv6
      - '                                                                               BFD  BFD '
      - P2             Gi0/0/0/2                *PtoP*         Up    21   00:02:03 Yes None None
      - ''
      - 'Total adjacency count: 1'
ok: [PE1] => (item=show route) => 
  msg:
  - - - 'Codes: C - connected, S - static, R - RIP, B - BGP, (>) - Diversion path'
      - '       D - EIGRP, EX - EIGRP external, O - OSPF, IA - OSPF inter area'
      - '       N1 - OSPF NSSA external type 1, N2 - OSPF NSSA external type 2'
      - '       E1 - OSPF external type 1, E2 - OSPF external type 2, E - EGP'
      - '       i - ISIS, L1 - IS-IS level-1, L2 - IS-IS level-2'
      - '       ia - IS-IS inter area, su - IS-IS summary null, * - candidate default'
      - '       U - per-user static route, o - ODR, L - local, G  - DAGR, l - LISP'
      - '       A - access/subscriber, a - Application route'
      - '       M - mobile route, r - RPL, t - Traffic Engineering, (!) - FRR Backup path'
      - ''
      - Gateway of last resort is not set
      - ''
      - L    1.1.1.1/32 is directly connected, 00:02:12, Loopback0
      - i L2 2.2.2.2/32 [115/10] via 12.0.0.2, 00:01:50, GigabitEthernet0/0/0/2
      - i L2 3.3.3.3/32 [115/20] via 12.0.0.2, 00:01:44, GigabitEthernet0/0/0/2
      - i L2 4.4.4.4/32 [115/30] via 12.0.0.2, 00:01:44, GigabitEthernet0/0/0/2
      - i L2 5.5.5.5/32 [115/40] via 12.0.0.2, 00:01:44, GigabitEthernet0/0/0/2
      - i L2 6.6.6.6/32 [115/20] via 12.0.0.2, 00:01:44, GigabitEthernet0/0/0/2
      - i L2 7.7.7.7/32 [115/20] via 12.0.0.2, 00:01:44, GigabitEthernet0/0/0/2
      - i L2 8.8.8.8/32 [115/30] via 12.0.0.2, 00:01:44, GigabitEthernet0/0/0/2
      - C    12.0.0.0/24 is directly connected, 00:02:12, GigabitEthernet0/0/0/2
      - L    12.0.0.1/32 is directly connected, 00:02:12, GigabitEthernet0/0/0/2
      - i L2 23.0.0.0/24 [115/20] via 12.0.0.2, 00:01:50, GigabitEthernet0/0/0/2
      - i L2 26.0.0.0/24 [115/20] via 12.0.0.2, 00:01:50, GigabitEthernet0/0/0/2
      - i L2 27.0.0.0/24 [115/20] via 12.0.0.2, 00:01:50, GigabitEthernet0/0/0/2
      - i L2 29.0.0.0/24 [115/20] via 12.0.0.2, 00:01:50, GigabitEthernet0/0/0/2
      - i L2 34.0.0.0/24 [115/30] via 12.0.0.2, 00:01:44, GigabitEthernet0/0/0/2
      - i L2 37.0.0.0/24 [115/30] via 12.0.0.2, 00:01:44, GigabitEthernet0/0/0/2
      - i L2 39.0.0.0/24 [115/30] via 12.0.0.2, 00:01:44, GigabitEthernet0/0/0/2
      - i L2 45.0.0.0/24 [115/40] via 12.0.0.2, 00:01:44, GigabitEthernet0/0/0/2
      - i L2 47.0.0.0/24 [115/30] via 12.0.0.2, 00:01:44, GigabitEthernet0/0/0/2
      - i L2 48.0.0.0/24 [115/40] via 12.0.0.2, 00:01:44, GigabitEthernet0/0/0/2
      - i L2 67.0.0.0/24 [115/30] via 12.0.0.2, 00:01:44, GigabitEthernet0/0/0/2
      - i L2 78.0.0.0/24 [115/30] via 12.0.0.2, 00:01:44, GigabitEthernet0/0/0/2
      - L    127.0.0.0/8 [0/0] via 0.0.0.0, 00:02:13
      - C    192.168.18.0/24 is directly connected, 3d05h, MgmtEth0/RP0/CPU0/0
      - L    192.168.18.1/32 is directly connected, 3d05h, MgmtEth0/RP0/CPU0/0
ok: [PE1] => (item=show isis route 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [40/115] Label: None, medium priority'
      - '   Installed Apr 10 12:36:01.336 for 00:01:45'
      - '     via 12.0.0.2, GigabitEthernet0/0/0/2, P2, Weight: 0'
      - '     src PE5.00-00, 5.5.5.5'
ok: [PE1] => (item=show route 5.5.5.5/32 detail) => 
  msg:
  - - - Routing entry for 5.5.5.5/32
      - '  Known via "isis IGP", distance 115, metric 40, type level-2'
      - '  Installed Apr 10 12:36:01.336 for 00:01:46'
      - '  Routing Descriptor Blocks'
      - '    12.0.0.2, from 5.5.5.5, via GigabitEthernet0/0/0/2'
      - '      Route metric is 40'
      - '      Label: None'
      - '      Tunnel ID: None'
      - '      Binding Label: None'
      - '      Extended communities count: 0'
      - "      Path id:1\t      Path ref count:0"
      - '      NHID:0x2(Ref:20)'
      - '  Route version is 0x1 (1)'
      - '  No local label'
      - '  IP Precedence: Not Set'
      - '  QoS Group ID: Not Set'
      - '  Flow-tag: Not Set'
      - '  Fwd-class: Not Set'
      - '  Route Priority: RIB_PRIORITY_NON_RECURSIVE_MEDIUM (7) SVD Type RIB_SVD_TYPE_LOCAL'
      - '  Download Priority 1, Download Version 2193'
      - '  No advertising protos.'
ok: [PE1] => (item=show mpls ldp neighbor brief) => 
  msg:
  - - - 'Peer               GR  NSR  Up Time     Discovery   Addresses     Labels    '
      - '                                        ipv4  ipv6  ipv4  ipv6  ipv4   ipv6 '
      - '-----------------  --  ---  ----------  ----------  ----------  ------------'
      - 2.2.2.2:0          N   N    00:01:51    1     0     7     0     22     0
ok: [PE1] => (item=show mpls label table) => 
  msg:
  - - - Table Label   Owner                           State  Rewrite
      - '----- ------- ------------------------------- ------ -------'
      - 0     0       LSD(A)                          InUse  Yes
      - 0     1       LSD(A)                          InUse  Yes
      - 0     2       LSD(A)                          InUse  Yes
      - 0     13      LSD(A)                          InUse  Yes
      - 0     24000   LDP(A)                          InUse  Yes
      - 0     24001   LDP(A)                          InUse  Yes
      - 0     24002   LDP(A)                          InUse  Yes
      - 0     24003   LDP(A)                          InUse  Yes
      - 0     24004   LDP(A)                          InUse  Yes
      - 0     24005   LDP(A)                          InUse  Yes
      - 0     24006   LDP(A)                          InUse  Yes
      - 0     24007   LDP(A)                          InUse  Yes
      - 0     24008   LDP(A)                          InUse  Yes
      - 0     24009   LDP(A)                          InUse  Yes
      - 0     24010   LDP(A)                          InUse  Yes
      - 0     24011   LDP(A)                          InUse  Yes
      - 0     24012   LDP(A)                          InUse  Yes
      - 0     24013   LDP(A)                          InUse  Yes
      - 0     24014   LDP(A)                          InUse  Yes
      - 0     24015   LDP(A)                          InUse  Yes
      - 0     24016   LDP(A)                          InUse  Yes
      - 0     24017   LDP(A)                          InUse  Yes
      - 0     24018   LDP(A)                          InUse  Yes
ok: [PE1] => (item=show mpls forwarding) => 
  msg:
  - - - 'Local  Outgoing    Prefix             Outgoing     Next Hop        Bytes       '
      - 'Label  Label       or ID              Interface                    Switched    '
      - '------ ----------- ------------------ ------------ --------------- ------------'
      - '24000  Pop         2.2.2.2/32         Gi0/0/0/2    12.0.0.2        710         '
      - '24001  Pop         29.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24002  Pop         27.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24003  Pop         26.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24004  Pop         23.0.0.0/24        Gi0/0/0/2    12.0.0.2        463         '
      - '24005  24007       3.3.3.3/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24006  24001       6.6.6.6/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24007  24000       7.7.7.7/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24008  24008       4.4.4.4/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24009  24010       8.8.8.8/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24010  24009       5.5.5.5/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24011  24011       39.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24012  24006       67.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24013  24005       37.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24014  24004       47.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24015  24012       34.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24016  24003       78.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24017  24014       48.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - 24018  24013       45.0.0.0/24        Gi0/0/0/2    12.0.0.2        0
ok: [PE1] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 1618, internal 0x1000001 0x30 (ptr 0xe7c4910) [1], 0x600 (0xdfe2eb8), 0xa28 (0xebfec38)
      - ' Updated Apr 10 12:36:04.089 '
      - ' remote adjacency to GigabitEthernet0/0/0/2'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 3'
      - '  gateway array (0xde49d58) reference count 42, flags 0x68, source lsd (5), 1 backups'
      - '                [15 type 5 flags 0x8401 (0xec418e8) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xdfe2eb8, sh-ldi=0xec418e8]'
      - '  gateway array update type-time 1 Apr 10 12:36:01.346'
      - ' LDI Update time Apr 10 12:36:01.346'
      - ' LW-LDI-TS Apr 10 12:36:04.089'
      - '   via 12.0.0.2/32, GigabitEthernet0/0/0/2, 4 dependencies, weight 0, class 0 [flags 0x0]'
      - '    path-idx 0 NHID 0x0 [0xf429290 0x0]'
      - '    next hop 12.0.0.2/32'
      - '    remote adjacency'
      - '     local label 24010      labels imposed {24009}'
      - ''
      - '    Load distribution: 0 (refcount 15)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/2    remote'
ok: [PE1] => (item=traceroute mpls ipv4 5.5.5.5/32) => 
  msg:
  - - - Tracing MPLS Label Switched Path to 5.5.5.5/32, timeout is 2 seconds
      - ''
      - 'Codes: ''!'' - success, ''Q'' - request not sent, ''.'' - timeout,'
      - '  ''L'' - labeled output interface, ''B'' - unlabeled output interface, '
      - '  ''D'' - DS Map mismatch, ''F'' - no FEC mapping, ''f'' - FEC mismatch,'
      - '  ''M'' - malformed request, ''m'' - unsupported tlvs, ''N'' - no rx label, '
      - '  ''P'' - no rx intf label prot, ''p'' - premature termination of LSP, '
      - '  ''R'' - transit router, ''I'' - unknown upstream index,'
      - '  ''X'' - unknown return code, ''x'' - return code 0'
      - ''
      - Type escape sequence to abort.
      - ''
      - '  0 12.0.0.1 MRU 1500 [Labels: 24009 Exp: 0]'
      - 'L 1 12.0.0.2 MRU 1500 [Labels: 24002 Exp: 0] 12 ms'
      - 'L 2 27.0.0.7 MRU 1500 [Labels: 24002 Exp: 0] 13 ms'
      - 'L 3 47.0.0.4 MRU 1500 [Labels: implicit-null Exp: 0] 13 ms'
      - '! 4 45.0.0.5 12 ms'
ok: [PE1] => (item=traceroute mpls multipath ipv4 5.5.5.5/32 verbose) => 
  msg:
  - - - Starting LSP Path Discovery for 5.5.5.5/32
      - ''
      - 'Codes: ''!'' - success, ''Q'' - request not sent, ''.'' - timeout,'
      - '  ''L'' - labeled output interface, ''B'' - unlabeled output interface, '
      - '  ''D'' - DS Map mismatch, ''F'' - no FEC mapping, ''f'' - FEC mismatch,'
      - '  ''M'' - malformed request, ''m'' - unsupported tlvs, ''N'' - no rx label, '
      - '  ''P'' - no rx intf label prot, ''p'' - premature termination of LSP, '
      - '  ''R'' - transit router, ''I'' - unknown upstream index,'
      - '  ''X'' - unknown return code, ''x'' - return code 0'
      - ''
      - Type escape sequence to abort.
      - ''
      - LLL!
      - 'Path 0 found, '
      - ' output interface GigabitEthernet0/0/0/2 nexthop 12.0.0.2'
      - ' source 12.0.0.1 destination 127.0.0.3'
      - '  0 12.0.0.1 12.0.0.2 MRU 1500 [Labels: 24009 Exp: 0] multipaths 0'
      - 'L 1 12.0.0.2 23.0.0.3 MRU 1500 [Labels: 24008 Exp: 0] ret code 8 multipaths 2'
      - 'L 2 23.0.0.3 34.0.0.4 MRU 1500 [Labels: 24002 Exp: 0] ret code 8 multipaths 1'
      - 'L 3 34.0.0.4 45.0.0.5 MRU 1500 [Labels: implicit-null Exp: 0] ret code 8 multipaths 1'
      - '! 4 45.0.0.5, ret code 3 multipaths 0'
      - LL!
      - 'Path 1 found, '
      - ' output interface GigabitEthernet0/0/0/2 nexthop 12.0.0.2'
      - ' source 12.0.0.1 destination 127.0.0.0'
      - '  0 12.0.0.1 12.0.0.2 MRU 1500 [Labels: 24009 Exp: 0] multipaths 0'
      - 'L 1 12.0.0.2 27.0.0.7 MRU 1500 [Labels: 24002 Exp: 0] ret code 8 multipaths 2'
      - 'L 2 27.0.0.7 47.0.0.4 MRU 1500 [Labels: 24002 Exp: 0] ret code 8 multipaths 1'
      - 'L 3 47.0.0.4 45.0.0.5 MRU 1500 [Labels: implicit-null Exp: 0] ret code 8 multipaths 1'
      - '! 4 45.0.0.5, ret code 3 multipaths 0'
      - ''
      - Paths (found/broken/unexplored) (2/0/0)
      - ' Echo Request (sent/fail) (7/0)'
      - ' Echo Reply (received/timeout) (7/0)'
      - ' Total Time Elapsed 64 ms'

TASK [lab_1_getting_started : 1.6 RUN COMMANDS TO TRACE LABELS FROM PE1 TO PE5] ***
ok: [PE1]
ok: [P4]
ok: [P2]
ok: [P3]
ok: [P7]

PLAY [1.x CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - GETTING STARTED] ***********

TASK [lab_1x_getting_started : DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [PE1] => 
  msg:
  - show mpls forwarding prefix 5.5.5.5/32
  - - 'Local  Outgoing    Prefix             Outgoing     Next Hop        Bytes       '
    - 'Label  Label       or ID              Interface                    Switched    '
    - '------ ----------- ------------------ ------------ --------------- ------------'
    - 24010  24009       5.5.5.5/32         Gi0/0/0/2    12.0.0.2        0

PLAY [1.x CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - GETTING STARTED] ***********
ok: [P2] => 
  msg:
  - show mpls forwarding prefix 5.5.5.5/32
  - - 'Local  Outgoing    Prefix             Outgoing     Next Hop        Bytes       '
    - 'Label  Label       or ID              Interface                    Switched    '
    - '------ ----------- ------------------ ------------ --------------- ------------'
    - '24009  24008       5.5.5.5/32         Gi0/0/0/0    23.0.0.3        384         '
    - '       24002       5.5.5.5/32         Gi0/0/0/3    27.0.0.7        744'

PLAY [1.x CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - GETTING STARTED] ***********
ok: [P3] => 
  msg:
  - show mpls forwarding prefix 5.5.5.5/32
  - - 'Local  Outgoing    Prefix             Outgoing     Next Hop        Bytes       '
    - 'Label  Label       or ID              Interface                    Switched    '
    - '------ ----------- ------------------ ------------ --------------- ------------'
    - 24008  24002       5.5.5.5/32         Gi0/0/0/2    34.0.0.4        256

PLAY [1.x CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - GETTING STARTED] ***********
ok: [P7] => 
  msg:
  - show mpls forwarding prefix 5.5.5.5/32
  - - 'Local  Outgoing    Prefix             Outgoing     Next Hop        Bytes       '
    - 'Label  Label       or ID              Interface                    Switched    '
    - '------ ----------- ------------------ ------------ --------------- ------------'
    - 24002  24002       5.5.5.5/32         Gi0/0/0/4    47.0.0.4        496

PLAY [1.x CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - GETTING STARTED] ***********
ok: [P4] => 
  msg:
  - show mpls forwarding prefix 5.5.5.5/32
  - - 'Local  Outgoing    Prefix             Outgoing     Next Hop        Bytes       '
    - 'Label  Label       or ID              Interface                    Switched    '
    - '------ ----------- ------------------ ------------ --------------- ------------'
    - 24002  Pop         5.5.5.5/32         Gi0/0/0/0    45.0.0.5        989
```

## Introducing Segment Routing (SR)

<figure markdown>
  ![sr_intro.png](assets/images/sr_intro.png){ loading=lazy }
  <figcaption>Segment Routing + LDP</figcaption>
</figure>

```ruby linenums="1"
PLAY [2. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - INTRODUCE SEGMENT ROUTING] ***

TASK [lab_2_intro_segment_routing : 2.0 RENDER AND DISPLAY SEGMENT ROUTING CONFIGURATION] ***
ok: [PE1] => 
  msg:
  - 'template: sr_template.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  segment-routing mpls'
    - ' !'
    - ' interface Loopback0'
    - '  address-family ipv4 unicast'
    - '   prefix-sid index 1'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P2] => 
  msg:
  - 'template: sr_template.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  segment-routing mpls'
    - ' !'
    - ' interface Loopback0'
    - '  address-family ipv4 unicast'
    - '   prefix-sid index 2'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P3] => 
  msg:
  - 'template: sr_template.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  segment-routing mpls'
    - ' !'
    - ' interface Loopback0'
    - '  address-family ipv4 unicast'
    - '   prefix-sid index 3'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P7] => 
  msg:
  - 'template: sr_template.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  segment-routing mpls'
    - ' !'
    - ' interface Loopback0'
    - '  address-family ipv4 unicast'
    - '   prefix-sid index 7'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P6] => 
  msg:
  - 'template: sr_template.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  segment-routing mpls'
    - ' !'
    - ' interface Loopback0'
    - '  address-family ipv4 unicast'
    - '   prefix-sid index 6'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_2_intro_segment_routing : 2.1 RENDER AND SAVE THE SEGMENT ROUTING CONFIGURATION] ***
ok: [P3]
ok: [P7]
ok: [P6]
ok: [P2]
ok: [PE1]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_2_intro_segment_routing : 1 secs PAUSE FOR CONVERGENCE] **************
ok: [PE1]

TASK [lab_2_intro_segment_routing : 2.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => 
  output.dest: xrcfg/P2.sr.xrcfg
ok: [PE1] => 
  output.dest: xrcfg/PE1.sr.xrcfg
ok: [P3] => 
  output.dest: xrcfg/P3.sr.xrcfg
ok: [P6] => 
  output.dest: xrcfg/P6.sr.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.sr.xrcfg

TASK [lab_2_intro_segment_routing : 2.3 RENDER AND APPLY THE SEGMENT ROUTING CONFIGURATION] ***
changed: [PE1]
changed: [P3]
changed: [P6]
changed: [P7]
changed: [P2]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_2_intro_segment_routing : 1 minutes PAUSE FOR CONVERGENCE] ***********
ok: [PE1]

TASK [lab_2_intro_segment_routing : 2.4 RUN COMMANDS TO VERIFY SR AND LDP STATE] ***
ok: [PE1] => (item=show mpls label table detail)
ok: [PE1] => (item=show isis adjacency detail)
ok: [PE1] => (item=show isis database verbose PE1)
ok: [PE1] => (item=show isis segment-routing label table)
ok: [PE1] => (item=show route 7.7.7.7/32 detail)
ok: [PE1] => (item=show mpls forwarding)
ok: [PE1] => (item=show cef 7.7.7.7/32)
ok: [PE1] => (item=traceroute mpls ipv4 7.7.7.7/32)
ok: [PE1] => (item=traceroute sr-mpls 7.7.7.7/32)

TASK [lab_2_intro_segment_routing : 2.5 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [PE1] => (item=show mpls label table detail) => 
  msg:
  - - - Table Label   Owner                           State  Rewrite
      - '----- ------- ------------------------------- ------ -------'
      - 0     0       LSD(A)                          InUse  Yes
      - 0     1       LSD(A)                          InUse  Yes
      - 0     2       LSD(A)                          InUse  Yes
      - 0     13      LSD(A)                          InUse  Yes
      - 0     16000   ISIS(A):IGP                     InUse  No
      - '  (Lbl-blk SRGB, vers:0, (start_label=16000, size=8000)'
      - 0     24000   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 2.2.2.2/32)'
      - 0     24001   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 29.0.0.0/24)'
      - 0     24002   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 27.0.0.0/24)'
      - 0     24003   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 26.0.0.0/24)'
      - 0     24004   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 23.0.0.0/24)'
      - 0     24005   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 3.3.3.3/32)'
      - 0     24006   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 6.6.6.6/32)'
      - 0     24007   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 7.7.7.7/32)'
      - 0     24008   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 4.4.4.4/32)'
      - 0     24009   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 8.8.8.8/32)'
      - 0     24010   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 5.5.5.5/32)'
      - 0     24011   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 39.0.0.0/24)'
      - 0     24012   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 67.0.0.0/24)'
      - 0     24013   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 37.0.0.0/24)'
      - 0     24014   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 47.0.0.0/24)'
      - 0     24015   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 34.0.0.0/24)'
      - 0     24016   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 78.0.0.0/24)'
      - 0     24017   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 48.0.0.0/24)'
      - 0     24018   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 45.0.0.0/24)'
      - 0     24020   ISIS(A):IGP                     InUse  Yes
      - '  (SR Adj Segment IPv4, vers:0, index=1, type=0, intf=Gi0/0/0/2, nh=12.0.0.2)'
      - 0     24021   ISIS(A):IGP                     InUse  Yes
      - '  (SR Adj Segment IPv4, vers:0, index=3, type=0, intf=Gi0/0/0/2, nh=12.0.0.2)'
ok: [PE1] => (item=show isis adjacency detail) => 
  msg:
  - - - 'IS-IS IGP Level-2 adjacencies:'
      - System Id      Interface                SNPA           State Hold Changed  NSF IPv4 IPv6
      - '                                                                               BFD  BFD '
      - P2             Gi0/0/0/2                *PtoP*         Up    29   00:03:38 Yes None None
      - '  Area Address:           49'
      - '  Neighbor IPv4 Address:  12.0.0.2*'
      - '  Adjacency SID:          24020'
      - '  Non-FRR Adjacency SID:  24021'
      - '  Topology:               IPv4 Unicast'
      - '  BFD Status:             BFD Not Required, Neighbor Useable'
      - ''
      - 'Total adjacency count: 1'
ok: [PE1] => (item=show isis database verbose PE1) => 
  msg:
  - - - IS-IS IGP (Level-2) Link State Database
      - LSPID                 LSP Seq Num  LSP Checksum  LSP Holdtime/Rcvd  ATT/P/OL
      - PE1.00-00           * 0x0000013a   0xac7c        1143 /*            0/0/0
      - '  Area Address:   49'
      - '  NLPID:          0xcc'
      - '  IP Address:     1.1.1.1'
      - '  Metric: 10         IP-Extended 12.0.0.0/24'
      - '    Prefix Attribute Flags: X:0 R:0 N:0 E:0 A:0'
      - '  Metric: 0          IP-Extended 1.1.1.1/32'
      - '    Prefix-SID Index: 1, Algorithm:0, R:0 N:1 P:0 E:0 V:0 L:0'
      - '    Prefix Attribute Flags: X:0 R:0 N:1 E:0 A:0'
      - '  Hostname:       PE1'
      - '  Router Cap:     1.1.1.1 D:0 S:0'
      - '    Segment Routing: I:1 V:0, SRGB Base: 16000 Range: 8000'
      - '    Node Maximum SID Depth: '
      - '      Label Imposition: 10'
      - '    SR Algorithm: '
      - '      Algorithm: 0'
      - '      Algorithm: 1'
      - '  Metric: 10         IS-Extended P2.00'
      - '    Local Interface ID: 9, Remote Interface ID: 9'
      - '    Interface IP Address: 12.0.0.1'
      - '    Neighbor IP Address: 12.0.0.2'
      - '    Physical BW: 1000000 kbits/sec'
      - '    ADJ-SID: F:0 B:0 V:1 L:1 S:0 P:0 weight:0 Adjacency-sid:24021'
      - ''
      - ' Total Level-2 LSP count: 1     Local Level-2 LSP count: 1'
ok: [PE1] => (item=show isis segment-routing label table) => 
  msg:
  - - - IS-IS IGP IS Label Table
      - Label         Prefix                   Interface
      - '----------    ----------------         ---------'
      - 16001         1.1.1.1/32               Loopback0
      - '16002         2.2.2.2/32               '
      - '16003         3.3.3.3/32               '
      - '16006         6.6.6.6/32               '
      - 16007         7.7.7.7/32
ok: [PE1] => (item=show route 7.7.7.7/32 detail) => 
  msg:
  - - - Routing entry for 7.7.7.7/32
      - '  Known via "isis IGP", distance 115, metric 20, labeled SR, type level-2'
      - '  Installed Apr 10 12:38:25.782 for 00:00:56'
      - '  Routing Descriptor Blocks'
      - '    12.0.0.2, from 7.7.7.7, via GigabitEthernet0/0/0/2'
      - '      Route metric is 20'
      - '      Label: 0x3e87 (16007)'
      - '      Tunnel ID: None'
      - '      Binding Label: None'
      - '      Extended communities count: 0'
      - "      Path id:1\t      Path ref count:0"
      - '      NHID:0x2(Ref:20)'
      - '  Route version is 0xa (10)'
      - '  Local Label: 0x3e87 (16007)'
      - '  IP Precedence: Not Set'
      - '  QoS Group ID: Not Set'
      - '  Flow-tag: Not Set'
      - '  Fwd-class: Not Set'
      - '  Route Priority: RIB_PRIORITY_NON_RECURSIVE_MEDIUM (7) SVD Type RIB_SVD_TYPE_LOCAL'
      - '  Download Priority 1, Download Version 2324'
      - '  No advertising protos.'
ok: [PE1] => (item=show mpls forwarding) => 
  msg:
  - - - 'Local  Outgoing    Prefix             Outgoing     Next Hop        Bytes       '
      - 'Label  Label       or ID              Interface                    Switched    '
      - '------ ----------- ------------------ ------------ --------------- ------------'
      - '16002  Pop         SR Pfx (idx 2)     Gi0/0/0/2    12.0.0.2        0           '
      - '16003  16003       SR Pfx (idx 3)     Gi0/0/0/2    12.0.0.2        0           '
      - '16006  16006       SR Pfx (idx 6)     Gi0/0/0/2    12.0.0.2        0           '
      - '16007  16007       SR Pfx (idx 7)     Gi0/0/0/2    12.0.0.2        0           '
      - '24000  Pop         2.2.2.2/32         Gi0/0/0/2    12.0.0.2        98          '
      - '24001  Pop         29.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24002  Pop         27.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24003  Pop         26.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24004  Pop         23.0.0.0/24        Gi0/0/0/2    12.0.0.2        463         '
      - '24005  24007       3.3.3.3/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24006  24001       6.6.6.6/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24007  24000       7.7.7.7/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24008  24008       4.4.4.4/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24009  24010       8.8.8.8/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24010  24009       5.5.5.5/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24011  24011       39.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24012  24006       67.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24013  24005       37.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24014  24004       47.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24015  24012       34.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24016  24003       78.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24017  24014       48.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24018  24013       45.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24020  Pop         SR Adj (idx 1)     Gi0/0/0/2    12.0.0.2        0           '
      - 24021  Pop         SR Adj (idx 3)     Gi0/0/0/2    12.0.0.2        0
ok: [PE1] => (item=show cef 7.7.7.7/32) => 
  msg:
  - - - 7.7.7.7/32, version 1686, labeled SR, internal 0x1000001 0x8130 (ptr 0xe7c4b98) [1], 0x600 (0xdfe2be8), 0xa28 (0xebfea08)
      - ' Updated Apr 10 12:38:25.791 '
      - ' remote adjacency to GigabitEthernet0/0/0/2'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 3'
      - ' Extensions: context-label:16007'
      - '  gateway array (0xde4aaf0) reference count 9, flags 0x68, source lsd (5), 1 backups'
      - '                [4 type 5 flags 0x8401 (0xec41768) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xdfe2be8, sh-ldi=0xec41768]'
      - '  gateway array update type-time 1 Apr 10 12:38:25.791'
      - ' LDI Update time Apr 10 12:38:25.791'
      - ' LW-LDI-TS Apr 10 12:38:25.791'
      - '   via 12.0.0.2/32, GigabitEthernet0/0/0/2, 14 dependencies, weight 0, class 0 [flags 0x0]'
      - '    path-idx 0 NHID 0x0 [0xf429290 0x0]'
      - '    next hop 12.0.0.2/32'
      - '    remote adjacency'
      - '     local label 24007      labels imposed {24000}'
      - ''
      - '    Load distribution: 0 (refcount 4)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/2    remote'
ok: [PE1] => (item=traceroute mpls ipv4 7.7.7.7/32) => 
  msg:
  - - - Tracing MPLS Label Switched Path to 7.7.7.7/32, timeout is 2 seconds
      - ''
      - 'Codes: ''!'' - success, ''Q'' - request not sent, ''.'' - timeout,'
      - '  ''L'' - labeled output interface, ''B'' - unlabeled output interface, '
      - '  ''D'' - DS Map mismatch, ''F'' - no FEC mapping, ''f'' - FEC mismatch,'
      - '  ''M'' - malformed request, ''m'' - unsupported tlvs, ''N'' - no rx label, '
      - '  ''P'' - no rx intf label prot, ''p'' - premature termination of LSP, '
      - '  ''R'' - transit router, ''I'' - unknown upstream index,'
      - '  ''X'' - unknown return code, ''x'' - return code 0'
      - ''
      - Type escape sequence to abort.
      - ''
      - '  0 12.0.0.1 MRU 1500 [Labels: 24000 Exp: 0]'
      - 'L 1 12.0.0.2 MRU 1500 [Labels: implicit-null Exp: 0] 11 ms'
      - '! 2 27.0.0.7 9 ms'
ok: [PE1] => (item=traceroute sr-mpls 7.7.7.7/32) => 
  msg:
  - - - Tracing MPLS Label Switched Path to 7.7.7.7/32, timeout is 2 seconds
      - ''
      - 'Codes: ''!'' - success, ''Q'' - request not sent, ''.'' - timeout,'
      - '  ''L'' - labeled output interface, ''B'' - unlabeled output interface, '
      - '  ''D'' - DS Map mismatch, ''F'' - no FEC mapping, ''f'' - FEC mismatch,'
      - '  ''M'' - malformed request, ''m'' - unsupported tlvs, ''N'' - no rx label, '
      - '  ''P'' - no rx intf label prot, ''p'' - premature termination of LSP, '
      - '  ''R'' - transit router, ''I'' - unknown upstream index,'
      - '  ''X'' - unknown return code, ''x'' - return code 0'
      - ''
      - Type escape sequence to abort.
      - ''
      - '  0 12.0.0.1 MRU 1500 [Labels: 16007 Exp: 0]'
      - 'L 1 12.0.0.2 MRU 1500 [Labels: implicit-null Exp: 0] 10 ms'
      - '! 2 27.0.0.7 5 ms'

TASK [lab_2_intro_segment_routing : 2.6 RENDER AND DISPLAY THE SR-PREFER CONFIGURATION] ***
ok: [PE1] => 
  msg:
  - 'template: sr_prefer_template.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  segment-routing mpls sr-prefer'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P6] => 
  msg:
  - 'template: sr_prefer_template.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  segment-routing mpls sr-prefer'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P3] => 
  msg:
  - 'template: sr_prefer_template.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  segment-routing mpls sr-prefer'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P7] => 
  msg:
  - 'template: sr_prefer_template.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  segment-routing mpls sr-prefer'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P2] => 
  msg:
  - 'template: sr_prefer_template.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  segment-routing mpls sr-prefer'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_2_intro_segment_routing : 2.7 RENDER AND SAVE THE SR-PREFER CONFIGURATION] ***
ok: [PE1]
ok: [P6]
ok: [P2]
ok: [P3]
ok: [P7]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_2_intro_segment_routing : 1 secs PAUSE FOR CONVERGENCE] **************
ok: [PE1]

TASK [lab_2_intro_segment_routing : 2.8 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [PE1] => 
  output.dest: xrcfg/PE1.srprefer.xrcfg
ok: [P6] => 
  output.dest: xrcfg/P6.srprefer.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.srprefer.xrcfg
ok: [P3] => 
  output.dest: xrcfg/P3.srprefer.xrcfg
ok: [P2] => 
  output.dest: xrcfg/P2.srprefer.xrcfg

TASK [lab_2_intro_segment_routing : 2.9 RENDER AND APPLY THE SR-PREFER CONFIGURATION] ***
changed: [PE1]
changed: [P2]
changed: [P7]
changed: [P3]
changed: [P6]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_2_intro_segment_routing : 1 minutes PAUSE FOR CONVERGENCE] ***********
ok: [PE1]

TASK [lab_2_intro_segment_routing : 2.10 RUN COMMANDS TO VERIFY SR-PREFER STATE] ***
ok: [PE1] => (item=traceroute mpls ipv4 7.7.7.7/32)
ok: [PE1] => (item=traceroute mpls ipv4 5.5.5.5/32)

TASK [lab_2_intro_segment_routing : 2.11 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [PE1] => (item=traceroute mpls ipv4 7.7.7.7/32) => 
  msg:
  - - - Tracing MPLS Label Switched Path to 7.7.7.7/32, timeout is 2 seconds
      - ''
      - 'Codes: ''!'' - success, ''Q'' - request not sent, ''.'' - timeout,'
      - '  ''L'' - labeled output interface, ''B'' - unlabeled output interface, '
      - '  ''D'' - DS Map mismatch, ''F'' - no FEC mapping, ''f'' - FEC mismatch,'
      - '  ''M'' - malformed request, ''m'' - unsupported tlvs, ''N'' - no rx label, '
      - '  ''P'' - no rx intf label prot, ''p'' - premature termination of LSP, '
      - '  ''R'' - transit router, ''I'' - unknown upstream index,'
      - '  ''X'' - unknown return code, ''x'' - return code 0'
      - ''
      - Type escape sequence to abort.
      - ''
      - '  0 12.0.0.1 MRU 1500 [Labels: 16007 Exp: 0]'
      - 'L 1 12.0.0.2 MRU 1500 [Labels: implicit-null Exp: 0] 17 ms'
      - '! 2 27.0.0.7 11 ms'
ok: [PE1] => (item=traceroute mpls ipv4 5.5.5.5/32) => 
  msg:
  - - - Tracing MPLS Label Switched Path to 5.5.5.5/32, timeout is 2 seconds
      - ''
      - 'Codes: ''!'' - success, ''Q'' - request not sent, ''.'' - timeout,'
      - '  ''L'' - labeled output interface, ''B'' - unlabeled output interface, '
      - '  ''D'' - DS Map mismatch, ''F'' - no FEC mapping, ''f'' - FEC mismatch,'
      - '  ''M'' - malformed request, ''m'' - unsupported tlvs, ''N'' - no rx label, '
      - '  ''P'' - no rx intf label prot, ''p'' - premature termination of LSP, '
      - '  ''R'' - transit router, ''I'' - unknown upstream index,'
      - '  ''X'' - unknown return code, ''x'' - return code 0'
      - ''
      - Type escape sequence to abort.
      - ''
      - '  0 12.0.0.1 MRU 1500 [Labels: 24009 Exp: 0]'
      - 'L 1 12.0.0.2 MRU 1500 [Labels: 24002 Exp: 0] 5 ms'
      - 'L 2 27.0.0.7 MRU 1500 [Labels: 24002 Exp: 0] 10 ms'
      - 'L 3 47.0.0.4 MRU 1500 [Labels: implicit-null Exp: 0] 14 ms'
      - '! 4 45.0.0.5 11 ms'

```
## SR - LDP Interworking

<figure markdown>
  ![sr_ldp_interworking.png](assets/images/sr_ldp_interworking.png){ loading=lazy }
  <figcaption>SR - LDP Interworking</figcaption>
</figure>

```ruby linenums="1"
PLAY [3. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - SR <-> LDP INTERWORKING] ****

TASK [lab_3_sr_ldp_interworking : 3.0 RENDER AND DISPLAY THE LDP REMOVAL CONFIGURATION] ***
ok: [P2] => 
  msg:
  - 'template: sr_ldp_template.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  no mpls ldp auto-config '
    - ' !'
    - '!'
    - ''
    - ''
ok: [PE1] => 
  msg:
  - 'template: sr_ldp_template.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  no mpls ldp auto-config '
    - ' !'
    - '!'
    - ''
    - ''
ok: [P6] => 
  msg:
  - 'template: sr_ldp_template.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  no mpls ldp auto-config '
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_3_sr_ldp_interworking : 3.1 RENDER AND SAVE THE LDP REMOVAL CONFIGURATION] ***
changed: [PE1]
changed: [P2]
changed: [P6]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_3_sr_ldp_interworking : 1 secs PAUSE FOR CONVERGENCE] ****************
ok: [PE1]

TASK [lab_3_sr_ldp_interworking : 3.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [PE1] => 
  output.dest: xrcfg/PE1.noldp.xrcfg
ok: [P2] => 
  output.dest: xrcfg/P2.noldp.xrcfg
ok: [P6] => 
  output.dest: xrcfg/P6.noldp.xrcfg

TASK [lab_3_sr_ldp_interworking : 3.3 RENDER AND APPLY THE LDP REMOVAL CONFIGURATION] ***
changed: [PE1]
changed: [P2]
changed: [P6]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_3_sr_ldp_interworking : 1 minutes PAUSE FOR CONVERGENCE] *************
ok: [PE1]

TASK [lab_3_sr_ldp_interworking : 3.4 TRACEOUTE MPLS 5.5.5.5/32] ***************
ok: [PE1]

TASK [lab_3_sr_ldp_interworking : 3.5 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [PE1] => 
  msg:
  - traceroute mpls ipv4 5.5.5.5/32
  - - Tracing MPLS Label Switched Path to 5.5.5.5/32, timeout is 2 seconds
    - ''
    - 'Codes: ''!'' - success, ''Q'' - request not sent, ''.'' - timeout,'
    - '  ''L'' - labeled output interface, ''B'' - unlabeled output interface, '
    - '  ''D'' - DS Map mismatch, ''F'' - no FEC mapping, ''f'' - FEC mismatch,'
    - '  ''M'' - malformed request, ''m'' - unsupported tlvs, ''N'' - no rx label, '
    - '  ''P'' - no rx intf label prot, ''p'' - premature termination of LSP, '
    - '  ''R'' - transit router, ''I'' - unknown upstream index,'
    - '  ''X'' - unknown return code, ''x'' - return code 0'
    - ''
    - Type escape sequence to abort.
    - ''
    - '  0 0.0.0.0 MRU 0 [No Label]'
    - Q 1 *

TASK [lab_3_sr_ldp_interworking : 3.6 STITCH LDP TO SR (works automatically) TRACEROUTE MPLS 1.1.1.1/32] ***
ok: [PE5] => (item=traceroute mpls ipv4 1.1.1.1/32)
ok: [PE5] => (item=traceroute mpls multipath ipv4 1.1.1.1/32 verbose)

TASK [lab_3_sr_ldp_interworking : 3.7 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [PE5] => (item=traceroute mpls ipv4 1.1.1.1/32) => 
  msg:
  - - - Tracing MPLS Label Switched Path to 1.1.1.1/32, timeout is 2 seconds
      - ''
      - 'Codes: ''!'' - success, ''Q'' - request not sent, ''.'' - timeout,'
      - '  ''L'' - labeled output interface, ''B'' - unlabeled output interface, '
      - '  ''D'' - DS Map mismatch, ''F'' - no FEC mapping, ''f'' - FEC mismatch,'
      - '  ''M'' - malformed request, ''m'' - unsupported tlvs, ''N'' - no rx label, '
      - '  ''P'' - no rx intf label prot, ''p'' - premature termination of LSP, '
      - '  ''R'' - transit router, ''I'' - unknown upstream index,'
      - '  ''X'' - unknown return code, ''x'' - return code 0'
      - ''
      - Type escape sequence to abort.
      - ''
      - '  0 45.0.0.5 MRU 1500 [Labels: 24015 Exp: 0]'
      - 'L 1 45.0.0.4 MRU 1500 [Labels: 24014 Exp: 0] 11 ms'
      - 'L 2 34.0.0.3 MRU 1500 [Labels: 16001 Exp: 0] 14 ms'
      - 'L 3 23.0.0.2 MRU 1500 [Labels: implicit-null Exp: 0] 10 ms'
      - '! 4 12.0.0.1 10 ms'
ok: [PE5] => (item=traceroute mpls multipath ipv4 1.1.1.1/32 verbose) => 
  msg:
  - - - Starting LSP Path Discovery for 1.1.1.1/32
      - ''
      - 'Codes: ''!'' - success, ''Q'' - request not sent, ''.'' - timeout,'
      - '  ''L'' - labeled output interface, ''B'' - unlabeled output interface, '
      - '  ''D'' - DS Map mismatch, ''F'' - no FEC mapping, ''f'' - FEC mismatch,'
      - '  ''M'' - malformed request, ''m'' - unsupported tlvs, ''N'' - no rx label, '
      - '  ''P'' - no rx intf label prot, ''p'' - premature termination of LSP, '
      - '  ''R'' - transit router, ''I'' - unknown upstream index,'
      - '  ''X'' - unknown return code, ''x'' - return code 0'
      - ''
      - Type escape sequence to abort.
      - ''
      - LLL!
      - 'Path 0 found, '
      - ' output interface GigabitEthernet0/0/0/0 nexthop 45.0.0.4'
      - ' source 45.0.0.5 destination 127.0.0.0'
      - '  0 45.0.0.5 45.0.0.4 MRU 1500 [Labels: 24015 Exp: 0] multipaths 0'
      - 'L 1 45.0.0.4 47.0.0.7 MRU 1500 [Labels: 24014 Exp: 0] ret code 8 multipaths 2'
      - 'L 2 47.0.0.7 27.0.0.2 MRU 1500 [Labels: 16001 Exp: 0] ret code 8 multipaths 1'
      - 'L 3 27.0.0.2 12.0.0.1 MRU 1500 [Labels: implicit-null Exp: 0] ret code 8 multipaths 1'
      - '! 4 12.0.0.1, ret code 3 multipaths 0'
      - LL!
      - 'Path 1 found, '
      - ' output interface GigabitEthernet0/0/0/0 nexthop 45.0.0.4'
      - ' source 45.0.0.5 destination 127.0.0.1'
      - '  0 45.0.0.5 45.0.0.4 MRU 1500 [Labels: 24015 Exp: 0] multipaths 0'
      - 'L 1 45.0.0.4 34.0.0.3 MRU 1500 [Labels: 24014 Exp: 0] ret code 8 multipaths 2'
      - 'L 2 34.0.0.3 23.0.0.2 MRU 1500 [Labels: 16001 Exp: 0] ret code 8 multipaths 1'
      - 'L 3 23.0.0.2 12.0.0.1 MRU 1500 [Labels: implicit-null Exp: 0] ret code 8 multipaths 1'
      - '! 4 12.0.0.1, ret code 3 multipaths 0'
      - ''
      - Paths (found/broken/unexplored) (2/0/0)
      - ' Echo Request (sent/fail) (7/0)'
      - ' Echo Reply (received/timeout) (7/0)'
      - ' Total Time Elapsed 103 ms'

TASK [lab_3_sr_ldp_interworking : 3.8 RUN COMMANDS TO VERIFY LDP TO SR LABEL STITCHING] ***
ok: [P3] => (item=show cef 1.1.1.1/32)
ok: [P3] => (item=show mpls forwarding prefix 1.1.1.1/32)
ok: [P3] => (item=show mpls ldp forwarding 1.1.1.1/32)

TASK [lab_3_sr_ldp_interworking : 3.9 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P3] => (item=show cef 1.1.1.1/32) => 
  msg:
  - - - 1.1.1.1/32, version 3466, labeled SR, internal 0x1000001 0x8310 (ptr 0xe769f58) [1], 0x600 (0xd9552b0), 0xa28 (0xebfeb48)
      - ' Updated Apr 10 12:39:37.954 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xd7bbcc0) reference count 3, flags 0x68, source rib (7), 1 backups'
      - '                [2 type 5 flags 0x8401 (0xec41dc8) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xd9552b0, sh-ldi=0xec41dc8]'
      - '  gateway array update type-time 1 Apr 10 12:39:37.954'
      - ' LDI Update time Apr 10 12:39:37.954'
      - ' LW-LDI-TS Apr 10 12:39:37.954'
      - '   via 23.0.0.2/32, GigabitEthernet0/0/0/0, 12 dependencies, weight 0, class 0 [flags 0x0]'
      - '    path-idx 0 NHID 0x0 [0xf3a8290 0x0]'
      - '    next hop 23.0.0.2/32'
      - '    remote adjacency'
      - '     local label 16001      labels imposed {16001}'
      - ''
      - '    Load distribution: 0 (refcount 2)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'
ok: [P3] => (item=show mpls forwarding prefix 1.1.1.1/32) => 
  msg:
  - - - 'Local  Outgoing    Prefix             Outgoing     Next Hop        Bytes       '
      - 'Label  Label       or ID              Interface                    Switched    '
      - '------ ----------- ------------------ ------------ --------------- ------------'
      - 16001  16001       SR Pfx (idx 1)     Gi0/0/0/0    23.0.0.2        0
ok: [P3] => (item=show mpls ldp forwarding 1.1.1.1/32) => 
  msg:
  - - - 'Codes: '
      - '  - = GR label recovering, (!) = LFA FRR pure backup path '
      - '  {} = Label stack with multi-line output for a routing path'
      - '  G = GR, S = Stale, R = Remote LFA FRR backup'
      - '  E = Entropy label capability'
      - ''
      - 'Prefix          Label   Label(s)       Outgoing     Next Hop            Flags  '
      - '                In      Out            Interface                        G S R E'
      - '--------------- ------- -------------- ------------ ------------------- -------'
      - 1.1.1.1/32      24014   Unlabelled     Gi0/0/0/0    23.0.0.2

TASK [lab_3_sr_ldp_interworking : 3.10 RUN AND PARSE WITH TTP(TEMPLATE TEXT PARSER) TO CAPTURE LOCAL LDP LABEL] ***
ok: [P3]

TASK [lab_3_sr_ldp_interworking : 3.11 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P3] => 
  msg:
  - show mpls ldp forwarding 1.1.1.1/32
  - - - in_label: '24014'
        out_label: Unlabelled

TASK [lab_3_sr_ldp_interworking : 3.12 USE THE CAPTURED LOCAL/IN LABEL TO VERIFY STITCHED SR LABEL] ***
ok: [P3] => (item=show mpls forwarding labels 24014)
ok: [P3] => (item=show cef mpls local-label 24014 eOS detail)

TASK [lab_3_sr_ldp_interworking : 3.13 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P3] => (item=show mpls forwarding labels 24014) => 
  msg:
  - - - 'Local  Outgoing    Prefix             Outgoing     Next Hop        Bytes       '
      - 'Label  Label       or ID              Interface                    Switched    '
      - '------ ----------- ------------------ ------------ --------------- ------------'
      - 24014  16001       1.1.1.1/32         Gi0/0/0/0    23.0.0.2        496
ok: [P3] => (item=show cef mpls local-label 24014 eOS detail) => 
  msg:
  - - - Label/EOS 24014/1, Label-type Unknown, version 2399, labeled SR, internal 0x1000001 0x87f0 (ptr 0xdb2f798) [1], 0x600 (0xd953840), 0xa28 (0xebfe418)
      - ' Updated Apr 10 12:40:52.933 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 21, traffic index 0, precedence n/a, priority 15'
      - ' Extensions: context-label:16001'
      - '  gateway array (0xd7becc8) reference count 2, flags 0x48, source lsd (5), 0 backups'
      - '                [2 type 6 flags 0x8401 (0xec41ee8) ext 0x0 (0x0)]'
      - '  LW-LDI[type=6, refc=2, ptr=0xd953840, sh-ldi=0xec41ee8]'
      - '  gateway array update type-time 1 Apr 10 12:39:20.071'
      - ' LDI Update time Apr 10 12:39:37.954'
      - ' LW-LDI-TS Apr 10 12:40:52.934'
      - '   via 23.0.0.2/32, GigabitEthernet0/0/0/0, 12 dependencies, weight 0, class 0 [flags 0x0]'
      - '    path-idx 0 NHID 0x0 [0xf3a8290 0x0]'
      - '    next hop 23.0.0.2/32'
      - '    remote adjacency'
      - '     local label 24014      labels imposed {16001}'
      - ''
      - '    Load distribution: 0 (refcount 2)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'

TASK [lab_3_sr_ldp_interworking : 3.14 RENDER AND DISPLAY SRMS [SEGMENT ROUTING MAPPING SERVER] CONFIGURATION] ***
ok: [P6] => 
  msg:
  - 'template: srms_template.j2'
  - - segment-routing
    - ' mapping-server'
    - '  prefix-sid-map'
    - '   address-family ipv4'
    - '    4.4.4.4/32 4'
    - '    5.5.5.5/32 5'
    - '    8.8.8.8/32 8'
    - '   !'
    - '  !'
    - ' !'
    - '!'
    - root
    - ''
    - router isis IGP
    - ' address-family ipv4 unicast'
    - '  segment-routing prefix-sid-map advertise-local'
    - ' !'
    - '!'
    - root
    - '!'
    - ''
    - ''

TASK [lab_3_sr_ldp_interworking : 3.15 RENDER AND SAVE SRMS [SEGMENT ROUTING MAPPING SERVER] CONFIGURATION] ***
ok: [P6]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_3_sr_ldp_interworking : 1 secs PAUSE FOR CONVERGENCE] ****************
ok: [PE1]

TASK [lab_3_sr_ldp_interworking : 3.16 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P6] => 
  output.dest: xrcfg/P6.srms.xrcfg

TASK [lab_3_sr_ldp_interworking : 3.17 STITCH SR TO LDP (RENDER AND CONFIGURE SRMS [SEGMENT ROUTING MAPPING SERVER])] ***
changed: [P6]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_3_sr_ldp_interworking : 1 minutes PAUSE FOR CONVERGENCE] *************
ok: [PE1]

TASK [lab_3_sr_ldp_interworking : 3.18 RUN COMMANDS TO VERIFY SR TO LDP LABEL STITCHING] ***
ok: [P3]

TASK [lab_3_sr_ldp_interworking : 3.19 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P3] => 
  msg:
  - show cef 5.5.5.5/32
  - - - 5.5.5.5/32, version 3495, labeled SR, internal 0x1000001 0x87f0 (ptr 0xe76d268) [1], 0x600 (0xd954260), 0xa28 (0xebfeaa8)
      - ' Updated Apr 10 12:42:27.609 '
      - ' remote adjacency to GigabitEthernet0/0/0/2'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 15'
      - '  gateway array (0xd7bd9c0) reference count 3, flags 0x68, source rib (7), 2 backups'
      - '                [2 type 5 flags 0x8401 (0xec41948) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xd954260, sh-ldi=0xec41948]'
      - '  gateway array update type-time 1 Apr 10 12:42:27.609'
      - ' LDI Update time Apr 10 12:42:27.615'
      - ' LW-LDI-TS Apr 10 12:42:27.615'
      - '   via 34.0.0.4/32, GigabitEthernet0/0/0/2, 16 dependencies, weight 0, class 0 [flags 0x0]'
      - '    path-idx 0 NHID 0x0 [0xf3a8dd0 0x0]'
      - '    next hop 34.0.0.4/32'
      - '    remote adjacency'
      - '     local label 16005      labels imposed {24002}'
      - ''
      - '    Load distribution: 0 (refcount 2)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/2    remote'

TASK [lab_3_sr_ldp_interworking : 3.20 TRACEOUTE MPLS 5.5.5.5/32] **************
ok: [PE1]

TASK [lab_3_sr_ldp_interworking : 3.21 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [PE1] => 
  msg:
  - traceroute sr-mpls 5.5.5.5/32
  - - - Tracing MPLS Label Switched Path to 5.5.5.5/32, timeout is 2 seconds
      - ''
      - 'Codes: ''!'' - success, ''Q'' - request not sent, ''.'' - timeout,'
      - '  ''L'' - labeled output interface, ''B'' - unlabeled output interface, '
      - '  ''D'' - DS Map mismatch, ''F'' - no FEC mapping, ''f'' - FEC mismatch,'
      - '  ''M'' - malformed request, ''m'' - unsupported tlvs, ''N'' - no rx label, '
      - '  ''P'' - no rx intf label prot, ''p'' - premature termination of LSP, '
      - '  ''R'' - transit router, ''I'' - unknown upstream index,'
      - '  ''X'' - unknown return code, ''x'' - return code 0'
      - ''
      - Type escape sequence to abort.
      - ''
      - '  0 12.0.0.1 MRU 1500 [Labels: 16005 Exp: 0]'
      - 'L 1 12.0.0.2 MRU 1500 [Labels: 16005 Exp: 0] 15 ms'
      - 'L 2 27.0.0.7 MRU 1500 [Labels: 24002 Exp: 0] 10 ms'
      - 'L 3 47.0.0.4 MRU 1500 [Labels: implicit-null Exp: 0] 14 ms'
      - '! 4 45.0.0.5 11 ms'

TASK [lab_3_sr_ldp_interworking : 3.22 RENDER AND DISPLAY SR-PREFER CONFIGURATION] ***
ok: [PE5] => 
  msg:
  - 'template: sr_only_part1.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  segment-routing mpls sr-prefer'
    - ' !'
    - ' interface Loopback0'
    - '  address-family ipv4 unicast'
    - '   prefix-sid index 5'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P4] => 
  msg:
  - 'template: sr_only_part1.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  segment-routing mpls sr-prefer'
    - ' !'
    - ' interface Loopback0'
    - '  address-family ipv4 unicast'
    - '   prefix-sid index 4'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P8] => 
  msg:
  - 'template: sr_only_part1.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  segment-routing mpls sr-prefer'
    - ' !'
    - ' interface Loopback0'
    - '  address-family ipv4 unicast'
    - '   prefix-sid index 8'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_3_sr_ldp_interworking : 3.23 RENDER AND SAVE THE SR-PREFER CONFIGURATION] ***
ok: [PE5]
ok: [P4]
ok: [P8]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_3_sr_ldp_interworking : 1 secs PAUSE FOR CONVERGENCE] ****************
ok: [PE1]

TASK [lab_3_sr_ldp_interworking : 3.24 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P4] => 
  output.dest: xrcfg/P4.sronly_p1.xrcfg
ok: [PE5] => 
  output.dest: xrcfg/PE5.sronly_p1.xrcfg
ok: [P8] => 
  output.dest: xrcfg/P8.sronly_p1.xrcfg

TASK [lab_3_sr_ldp_interworking : 3.25 CONFIGURE SR WITH SR-PREFER ON REMAINING ROUTERS] ***
changed: [PE5]
changed: [P4]
changed: [P8]

TASK [lab_3_sr_ldp_interworking : 3.26 RENDER AND DISPLAY REMOVE LDP CONFIGURATION] ***
ok: [PE1] => 
  msg:
  - 'template: sr_only_remove_ldp.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  no mpls ldp auto-config'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P6] => 
  msg:
  - 'template: sr_only_remove_ldp.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  no mpls ldp auto-config'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P4] => 
  msg:
  - 'template: sr_only_remove_ldp.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  no mpls ldp auto-config'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P3] => 
  msg:
  - 'template: sr_only_remove_ldp.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  no mpls ldp auto-config'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P8] => 
  msg:
  - 'template: sr_only_remove_ldp.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  no mpls ldp auto-config'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P2] => 
  msg:
  - 'template: sr_only_remove_ldp.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  no mpls ldp auto-config'
    - ' !'
    - '!'
    - ''
    - ''
ok: [PE5] => 
  msg:
  - 'template: sr_only_remove_ldp.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  no mpls ldp auto-config'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P7] => 
  msg:
  - 'template: sr_only_remove_ldp.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  no mpls ldp auto-config'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_3_sr_ldp_interworking : 3.27 RENDER AND SAVE REMOVE LDP CONFIGURATION] ***
changed: [P2]
ok: [P3]
changed: [P6]
ok: [PE5]
ok: [P4]
ok: [P7]
changed: [PE1]
ok: [P8]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_3_sr_ldp_interworking : 1 secs PAUSE FOR CONVERGENCE] ****************
ok: [PE1]

TASK [lab_3_sr_ldp_interworking : 3.28 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P4] => 
  output.dest: xrcfg/P4.noldp.xrcfg
ok: [PE5] => 
  output.dest: xrcfg/PE5.noldp.xrcfg
ok: [P2] => 
  output.dest: xrcfg/P2.noldp.xrcfg
ok: [P3] => 
  output.dest: xrcfg/P3.noldp.xrcfg
ok: [P8] => 
  output.dest: xrcfg/P8.noldp.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.noldp.xrcfg
ok: [PE1] => 
  output.dest: xrcfg/PE1.noldp.xrcfg
ok: [P6] => 
  output.dest: xrcfg/P6.noldp.xrcfg

TASK [lab_3_sr_ldp_interworking : 3.29 REMOVE LDP FROM ALL ROUTERS] ************
changed: [PE1]
changed: [P4]
changed: [PE5]
changed: [P6]
changed: [P8]
changed: [P3]
changed: [P2]
changed: [P7]

TASK [lab_3_sr_ldp_interworking : 3.30 RENDER AND DISPLAY SRMS REMOVAL CONFIGURATION] ***
ok: [P6] => 
  msg:
  - 'template: sr_only_remove_srms.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  no segment-routing prefix-sid-map advertise-local'
    - ' !'
    - '!'
    - root
    - ''
    - no segment-routing
    - '!'
    - ''
    - ''

TASK [lab_3_sr_ldp_interworking : 3.31 RENDER AND SAVE SRMS REMOVAL CONFIGURATION] ***
ok: [P6]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_3_sr_ldp_interworking : 1 secs PAUSE FOR CONVERGENCE] ****************
ok: [PE1]

TASK [lab_3_sr_ldp_interworking : 3.32 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P6] => 
  output.dest: xrcfg/P6.nosrms.xrcfg

TASK [lab_3_sr_ldp_interworking : 3.33 RENDER AND REMOVE SRMS CONFIGURATION FROM P6] ***
changed: [P6]
```

## TI-LFA (Topology Independent - LoopFree Alternate)

<figure markdown>
  ![sr_only.png](assets/images/sr_only.png){ loading=lazy }
  <figcaption>SR Only</figcaption>
</figure>

```ruby linenums="1"
PLAY [4. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - TOPOLOGY INDEPENDENT LOOPFREE ALTERNATE] ***

TASK [lab_4_tilfa : 4.0 RENDER AND DISPLAY THE TI-LFA CONFIGURATION] ***********
ok: [PE1] => 
  msg:
  - 'template: tilfa.j2'
  - - router isis IGP interface GigabitEthernet0/0/0/2 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/2 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - '!'
    - ''
    - ''
ok: [P4] => 
  msg:
  - 'template: tilfa.j2'
  - - router isis IGP interface GigabitEthernet0/0/0/0 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/0 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - router isis IGP interface GigabitEthernet0/0/0/1 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/1 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - router isis IGP interface GigabitEthernet0/0/0/2 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/2 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - router isis IGP interface GigabitEthernet0/0/0/4 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/4 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - '!'
    - ''
    - ''
ok: [P2] => 
  msg:
  - 'template: tilfa.j2'
  - - router isis IGP interface GigabitEthernet0/0/0/0 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/0 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - router isis IGP interface GigabitEthernet0/0/0/1 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/1 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - router isis IGP interface GigabitEthernet0/0/0/2 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/2 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - router isis IGP interface GigabitEthernet0/0/0/3 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/3 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - router isis IGP interface GigabitEthernet0/0/0/5 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/5 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - '!'
    - ''
    - ''
ok: [PE5] => 
  msg:
  - 'template: tilfa.j2'
  - - router isis IGP interface GigabitEthernet0/0/0/0 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/0 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - '!'
    - ''
    - ''
ok: [P6] => 
  msg:
  - 'template: tilfa.j2'
  - - router isis IGP interface GigabitEthernet0/0/0/0 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/0 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - router isis IGP interface GigabitEthernet0/0/0/1 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/1 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - '!'
    - ''
    - ''
ok: [P8] => 
  msg:
  - 'template: tilfa.j2'
  - - router isis IGP interface GigabitEthernet0/0/0/0 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/0 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - router isis IGP interface GigabitEthernet0/0/0/1 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/1 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - router isis IGP interface GigabitEthernet0/0/0/2 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/2 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - '!'
    - ''
    - ''
ok: [P7] => 
  msg:
  - 'template: tilfa.j2'
  - - router isis IGP interface GigabitEthernet0/0/0/0 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/0 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - router isis IGP interface GigabitEthernet0/0/0/1 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/1 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - router isis IGP interface GigabitEthernet0/0/0/2 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/2 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - router isis IGP interface GigabitEthernet0/0/0/3 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/3 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - router isis IGP interface GigabitEthernet0/0/0/4 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/4 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - '!'
    - ''
    - ''
ok: [P3] => 
  msg:
  - 'template: tilfa.j2'
  - - router isis IGP interface GigabitEthernet0/0/0/0 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/0 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - router isis IGP interface GigabitEthernet0/0/0/1 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/1 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - router isis IGP interface GigabitEthernet0/0/0/2 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/2 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - router isis IGP interface GigabitEthernet0/0/0/3 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/3 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - '!'
    - ''
    - ''

TASK [lab_4_tilfa : 4.1 RENDER AND SAVE THE TI-LFA CONFIGURATION] **************
ok: [P4]
ok: [PE1]
ok: [PE5]
ok: [P2]
ok: [P3]
ok: [P6]
ok: [P7]
ok: [P8]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_4_tilfa : 1 secs PAUSE FOR CONVERGENCE] ******************************
ok: [PE1]

TASK [lab_4_tilfa : 4.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ****
ok: [PE1] => 
  output.dest: xrcfg/PE1.tilfa.xrcfg
ok: [P2] => 
  output.dest: xrcfg/P2.tilfa.xrcfg
ok: [P3] => 
  output.dest: xrcfg/P3.tilfa.xrcfg
ok: [P4] => 
  output.dest: xrcfg/P4.tilfa.xrcfg
ok: [PE5] => 
  output.dest: xrcfg/PE5.tilfa.xrcfg
ok: [P6] => 
  output.dest: xrcfg/P6.tilfa.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.tilfa.xrcfg
ok: [P8] => 
  output.dest: xrcfg/P8.tilfa.xrcfg

TASK [lab_4_tilfa : 4.3 RENDER AND APPLY THE TI-LFA CONFIGURATION] *************
changed: [PE1]
changed: [PE5]
changed: [P6]
changed: [P8]
changed: [P3]
changed: [P4]
changed: [P7]
changed: [P2]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_4_tilfa : 1 minutes PAUSE FOR CONVERGENCE] ***************************
ok: [PE1]

TASK [lab_4_tilfa : 4.4 RUN COMMANDS TO VERIFY TI-LFA IS ENABLED] **************
ok: [P2] => (item=show isis interface GigabitEthernet 0/0/0/0)
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show route 5.5.5.5/32)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [lab_4_tilfa : 4.5 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ****
ok: [P2] => (item=show isis interface GigabitEthernet 0/0/0/0) => 
  msg:
  - - - GigabitEthernet0/0/0/0      Enabled
      - '  Adjacency Formation:      Enabled'
      - '  Prefix Advertisement:     Enabled'
      - '  IPv4 BFD:                 Disabled'
      - '  IPv6 BFD:                 Disabled'
      - '  BFD Min Interval:         150'
      - '  BFD Multiplier:           3'
      - '  RSI SRLG:                 Registered'
      - '  Bandwidth:                1000000'
      - '  '
      - '  Circuit Type:             level-2-only'
      - '  Media Type:               P2P'
      - '  Circuit Number:           0'
      - '  Measured Delay:           Min:- Avg:- Max:- usec'
      - '  Delay Normalization:      Interval:0 Offset:0'
      - '  Normalized Delay:         Min:- Avg:- Max:- usec'
      - '  Link Loss:                -'
      - '  Extended Circuit Number:  7'
      - '  Next P2P IIH in:          8 s'
      - '  LSP Rexmit Queue Size:    0'
      - '  '
      - '  Level-2                   '
      - '    Adjacency Count:        1'
      - '    LSP Pacing Interval:    33 ms'
      - '    PSNP Entry Queue Size:  0'
      - '    Hello Interval:         10 s'
      - '    Hello Multiplier:       3'
      - '  '
      - '  CLNS I/O'
      - '    Protocol State:         Up'
      - '    MTU:                    1497'
      - '    SNPA:                   5005.0004.0003'
      - '    Layer-2 MCast Groups Membership:'
      - '      All ISs:              Yes'
      - '  '
      - '  IPv4 Unicast Topology:    Enabled'
      - '    Adjacency Formation:    Running'
      - '    Prefix Advertisement:   Running'
      - '          Policy (L1/L2):   -/-'
      - '    Metric (L1/L2):         0/10'
      - '    Metric fallback:'
      - '      Bandwidth (L1/L2):    Inactive/Inactive'
      - '      Anomaly (L1/L2):      Inactive/Inactive'
      - '    Weight (L1/L2):         0/0'
      - '    MPLS Max Label Stack:   3/3/10/10 (PRI/BKP/SRTE/SRAT)'
      - '    MPLS LDP Sync (L1/L2):  Disabled/Disabled'
      - '    FRR (L1/L2):            L1 Enabled         L2 Enabled     '
      - '      FRR Type:             per-prefix         per-prefix     '
      - '      Direct LFA:           Enabled            Enabled        '
      - '      Remote LFA:           Not Enabled        Not Enabled    '
      - '       Tie Breaker          Default            Default        '
      - '       Line-card disjoint   30                 30             '
      - '       Lowest backup metric 20                 20             '
      - '       Node protecting      40                 40             '
      - '       Primary path         10                 10             '
      - '      TI LFA:               Enabled            Enabled        '
      - '       Tie Breaker          Default            Default        '
      - '       Link Protecting      Enabled            Enabled        '
      - '       Line-card disjoint   0                  0              '
      - '       Node protecting      0                  0              '
      - '       SRLG disjoint        0                  0              '
      - '  '
      - '  IPv4 Address Family:      Enabled'
      - '    Protocol State:         Up'
      - '    Forwarding Address(es): 23.0.0.2'
      - '    Global Prefix(es):      23.0.0.0/24'
      - '  '
      - '  LSP transmit timer expires in 0 ms'
      - '  LSP transmission is idle'
      - '  Can send up to 10 back-to-back LSPs in the next 0 ms'
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Apr 10 12:44:10.947 for 00:01:03'
      - '     via 23.0.0.3, GigabitEthernet0/0/0/0, Label: 16005, P3, SRGB Base: 16000, Weight: 0'
      - '       Backup path: LFA, via 27.0.0.7, GigabitEthernet0/0/0/3, Label: 16005, P7, SRGB Base: 16000, Weight: 0, Metric: 30'
      - '       P: Yes, TM: 30, LC: No, NP: Yes, D: Yes, SRLG: Yes'
      - '     via 27.0.0.7, GigabitEthernet0/0/0/3, Label: 16005, P7, SRGB Base: 16000, Weight: 0'
      - '       Backup path: LFA, via 23.0.0.3, GigabitEthernet0/0/0/0, Label: 16005, P3, SRGB Base: 16000, Weight: 0, Metric: 30'
      - '       P: Yes, TM: 30, LC: No, NP: Yes, D: Yes, SRLG: Yes'
      - '     src PE5.00-00, 5.5.5.5, prefix-SID index 5, R:0 N:1 P:0 E:0 V:0 L:0, Alg:0'
ok: [P2] => (item=show route 5.5.5.5/32) => 
  msg:
  - - - Routing entry for 5.5.5.5/32
      - '  Known via "isis IGP", distance 115, metric 30, labeled SR, type level-2'
      - '  Installed Apr 10 12:44:10.948 for 00:01:03'
      - '  Routing Descriptor Blocks'
      - '    23.0.0.3, from 5.5.5.5, via GigabitEthernet0/0/0/0, Protected, ECMP-Backup (Local-LFA)'
      - '      Route metric is 30'
      - '    27.0.0.7, from 5.5.5.5, via GigabitEthernet0/0/0/3, Protected, ECMP-Backup (Local-LFA)'
      - '      Route metric is 30'
      - '  No advertising protos.'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4177, labeled SR, internal 0x1000001 0x8310 (ptr 0xe7af8f8) [1], 0x600 (0xda60768), 0xa28 (0x224ea4c8)
      - ' Updated Apr 10 12:44:10.974 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xd8c9400) reference count 6, flags 0x400068, source rib (7), 1 backups'
      - '                [3 type 5 flags 0x8401 (0xec41e88) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xda60768, sh-ldi=0xec41e88]'
      - '  gateway array update type-time 1 Apr 10 12:44:10.974'
      - ' LDI Update time Apr 10 12:44:10.974'
      - ' LW-LDI-TS Apr 10 12:44:10.974'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 10 dependencies, weight 0, class 0, protected, ECMP-backup (Local-LFA) [flags 0x600]'
      - '    path-idx 0 bkup-idx 1 NHID 0x0 [0xd677450 0x0]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - '   via 27.0.0.7/32, GigabitEthernet0/0/0/3, 8 dependencies, weight 0, class 0, protected, ECMP-backup (Local-LFA) [flags 0x600]'
      - '    path-idx 1 bkup-idx 0 NHID 0x0 [0xd676370 0x0]'
      - '    next hop 27.0.0.7/32'
      - '     local label 16005      labels imposed {16005}'
      - ''
      - '    Load distribution: 0 1 (refcount 3)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote         '
      - '    1     Y   GigabitEthernet0/0/0/3    remote'
```

## Zero Segment TI-LFA

<figure markdown>
  ![zero_segment_tilfa.png](assets/images/zero_segment_tilfa.png){ loading=lazy }
  <figcaption>Zero Segment TI-LFA</figcaption>
</figure>

```ruby linenums="1"
PLAY [5. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - ZERO SEGMENT TI-LFA] ********

TASK [lab_5_zs_tilfa : 5.0 RENDER AND DISPLAY THE ZERO SEGMENT TI-LFA CONFIGURATION] ***
ok: [P6] => 
  msg:
  - 'template: zs_tilfa_p6.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/1'
    - '  address-family ipv4 unicast'
    - '   metric 100'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P7] => 
  msg:
  - 'template: zs_tilfa_p7.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/3'
    - '  address-family ipv4 unicast'
    - '   metric 100'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P2] => 
  msg:
  - 'template: zs_tilfa_p2.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/1'
    - '  address-family ipv4 unicast'
    - '   metric 100'
    - '  !'
    - ' !'
    - ' interface GigabitEthernet0/0/0/3'
    - '  address-family ipv4 unicast'
    - '   metric 100'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_5_zs_tilfa : 5.1 RENDER AND SAVE THE ZERO SEGMENT TI-LFA CONFIGURATION] ***
ok: [P2]
ok: [P7]
ok: [P6]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_5_zs_tilfa : 1 secs PAUSE FOR CONVERGENCE] ***************************
ok: [P2]

TASK [lab_5_zs_tilfa : 5.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P6] => 
  output.dest: xrcfg/P6.zs_tilfa.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.zs_tilfa.xrcfg
ok: [P2] => 
  output.dest: xrcfg/P2.zs_tilfa.xrcfg

TASK [lab_5_zs_tilfa : 5.3 RENDER AND APPLY THE ZERO SEGMENT TI-LFA CONFIGURATION] ***
changed: [P6]
changed: [P7]
changed: [P2]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_5_zs_tilfa : 1 minutes PAUSE FOR CONVERGENCE] ************************
ok: [P2]

TASK [lab_5_zs_tilfa : 5.4 RUN COMMANDS TO VERIFY ZERO SEGMENT TI-LFA SCENARIO] ***
ok: [P2] => (item=show isis route 5.5.5.5/32 detail)
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show route 5.5.5.5/32)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [lab_5_zs_tilfa : 5.5 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => (item=show isis route 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Apr 10 12:46:06.120 for 00:00:23'
      - '     via 23.0.0.3, GigabitEthernet0/0/0/0, Label: 16005, P3, SRGB Base: 16000, Weight: 0'
      - '     src PE5.00-00, 5.5.5.5, prefix-SID index 5, R:0 N:1 P:0 E:0 V:0 L:0, Alg:0'
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Apr 10 12:46:06.120 for 00:00:24'
      - '     via 23.0.0.3, GigabitEthernet0/0/0/0, Label: 16005, P3, SRGB Base: 16000, Weight: 0'
      - '       Backup path: LFA, via 27.0.0.7, GigabitEthernet0/0/0/3, Label: 16005, P7, SRGB Base: 16000, Weight: 0, Metric: 120'
      - '       P: No, TM: 120, LC: No, NP: Yes, D: Yes, SRLG: Yes'
      - '     src PE5.00-00, 5.5.5.5, prefix-SID index 5, R:0 N:1 P:0 E:0 V:0 L:0, Alg:0'
ok: [P2] => (item=show route 5.5.5.5/32) => 
  msg:
  - - - Routing entry for 5.5.5.5/32
      - '  Known via "isis IGP", distance 115, metric 30, labeled SR, type level-2'
      - '  Installed Apr 10 12:46:06.120 for 00:00:25'
      - '  Routing Descriptor Blocks'
      - '    23.0.0.3, from 5.5.5.5, via GigabitEthernet0/0/0/0, Protected'
      - '      Route metric is 30'
      - '    27.0.0.7, from 5.5.5.5, via GigabitEthernet0/0/0/3, Backup (Local-LFA)'
      - '      Route metric is 120'
      - '  No advertising protos.'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4308, labeled SR, internal 0x1000001 0x8310 (ptr 0xe7af8f8) [1], 0x600 (0xda60768), 0xa28 (0x224eaaf8)
      - ' Updated Apr 10 12:46:06.123 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xd8ca708) reference count 9, flags 0x500068, source rib (7), 1 backups'
      - '                [4 type 5 flags 0x8401 (0xec433e8) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xda60768, sh-ldi=0xec433e8]'
      - '  gateway array update type-time 1 Apr 10 12:45:29.876'
      - ' LDI Update time Apr 10 12:45:29.877'
      - ' LW-LDI-TS Apr 10 12:45:29.879'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 14 dependencies, weight 0, class 0, protected [flags 0x400]'
      - '    path-idx 0 bkup-idx 1 NHID 0x0 [0xd677450 0x0]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - '   via 27.0.0.7/32, GigabitEthernet0/0/0/3, 12 dependencies, weight 0, class 0, backup (Local-LFA) [flags 0x300]'
      - '    path-idx 1 NHID 0x0 [0x130e9330 0x0]'
      - '    next hop 27.0.0.7/32'
      - '    remote adjacency'
      - '     local label 16005      labels imposed {16005}'
      - ''
      - '    Load distribution: 0 (refcount 4)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'

TASK [lab_5_zs_tilfa : 5.6 RENDER AND DISPLAY THE ZERO SEGMENT TI-LFA REVERSAL CONFIGURATION] ***
ok: [P6] => 
  msg:
  - 'template: zs_tilfa_revert_p6.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/1'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P7] => 
  msg:
  - 'template: zs_tilfa_revert_p7.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/3'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P2] => 
  msg:
  - 'template: zs_tilfa_revert_p2.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/1'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - ' interface GigabitEthernet0/0/0/3'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_5_zs_tilfa : 5.7 RENDER AND SAVE THE ZERO SEGMENT TI-LFA REVARSAL CONFIGURATION] ***
ok: [P2]
ok: [P7]
ok: [P6]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_5_zs_tilfa : 1 secs PAUSE FOR CONVERGENCE] ***************************
ok: [P2]

TASK [lab_5_zs_tilfa : 5.8 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P6] => 
  output.dest: xrcfg/P6.zs_tilfa_revert.xrcfg
ok: [P2] => 
  output.dest: xrcfg/P2.zs_tilfa_revert.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.zs_tilfa_revert.xrcfg

TASK [lab_5_zs_tilfa : 5.9 RENDER AND REVERT ZERO SEGMENT TI-LFA SCENARIO CHANGES] ***
changed: [P7]
changed: [P6]
changed: [P2]
```

## Single Segment TI-LFA

<figure markdown>
  ![single_segment_tilfa.png](assets/images/single_segment_tilfa.png){ loading=lazy }
  <figcaption>Single Segment TI-LFA</figcaption>
</figure>

```ruby linenums="1"
PLAY [6. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - SINGLE SEGMENT TI-LFA] ******

TASK [lab_6_ss_tilfa : 6.0 RENDER AND DISPLAY THE SINGLE SEGMENT TI-LFA CONFIGURATION] ***
ok: [P7] => 
  msg:
  - 'template: ss_tilfa_p7.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/1'
    - '  shutdown'
    - ' !'
    - ' interface GigabitEthernet0/0/0/3'
    - '  shutdown'
    - ' !'
    - ' interface GigabitEthernet0/0/0/4'
    - '  shutdown'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_6_ss_tilfa : 6.1 RENDER AND SAVE THE SINGLE SEGMENT TI-LFA CONFIGURATION] ***
ok: [P7]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_6_ss_tilfa : 1 secs PAUSE FOR CONVERGENCE] ***************************
ok: [P2]

TASK [lab_6_ss_tilfa : 6.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P7] => 
  output.dest: xrcfg/P7.ss_tilfa.xrcfg

TASK [lab_6_ss_tilfa : 6.3 RENDER AND APPLY THE SINGLE SEGMENT TI-LFA CONFIGURATION] ***
changed: [P7]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_6_ss_tilfa : 1 minutes PAUSE FOR CONVERGENCE] ************************
ok: [P2]

TASK [lab_6_ss_tilfa : 6.4 RUN COMMANDS TO VERIFY SINGLE SEGMENT TI-LFA SCENARIO] ***
ok: [P2] => (item=show isis route 5.5.5.5/32 detail)
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show route 5.5.5.5/32)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [lab_6_ss_tilfa : 6.5 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => (item=show isis route 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Apr 10 12:46:52.944 for 00:01:04'
      - '     via 23.0.0.3, GigabitEthernet0/0/0/0, Label: 16005, P3, SRGB Base: 16000, Weight: 0'
      - '     src PE5.00-00, 5.5.5.5, prefix-SID index 5, R:0 N:1 P:0 E:0 V:0 L:0, Alg:0'
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Apr 10 12:46:52.944 for 00:01:05'
      - '     via 23.0.0.3, GigabitEthernet0/0/0/0, Label: 16005, P3, SRGB Base: 16000, Weight: 0'
      - '       Backup path: TI-LFA (link), via 26.0.0.6, GigabitEthernet0/0/0/1 P6, SRGB Base: 16000, Weight: 0, Metric: 50'
      - '         P node: P8.00 [8.8.8.8], Label: 16008'
      - '         Prefix label: 16005'
      - '         Backup-src: PE5.00'
      - '       P: No, TM: 50, LC: No, NP: No, D: No, SRLG: Yes'
      - '     src PE5.00-00, 5.5.5.5, prefix-SID index 5, R:0 N:1 P:0 E:0 V:0 L:0, Alg:0'
ok: [P2] => (item=show route 5.5.5.5/32) => 
  msg:
  - - - Routing entry for 5.5.5.5/32
      - '  Known via "isis IGP", distance 115, metric 30, labeled SR, type level-2'
      - '  Installed Apr 10 12:46:52.944 for 00:01:05'
      - '  Routing Descriptor Blocks'
      - '    23.0.0.3, from 5.5.5.5, via GigabitEthernet0/0/0/0, Protected'
      - '      Route metric is 30'
      - '    26.0.0.6, from 5.5.5.5, via GigabitEthernet0/0/0/1, Backup (TI-LFA)'
      - '      Repair Node(s): 8.8.8.8'
      - '      Route metric is 50'
      - '  No advertising protos.'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4416, labeled SR, internal 0x1000001 0x8310 (ptr 0xe7af8f8) [1], 0x600 (0xda60768), 0xa28 (0x224ea418)
      - ' Updated Apr 10 12:46:52.956 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xd8cc5d8) reference count 6, flags 0x500068, source rib (7), 1 backups'
      - '                [3 type 5 flags 0x8401 (0xec41fa8) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xda60768, sh-ldi=0xec41fa8]'
      - '  gateway array update type-time 1 Apr 10 12:46:52.956'
      - ' LDI Update time Apr 10 12:46:52.956'
      - ' LW-LDI-TS Apr 10 12:46:52.956'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 14 dependencies, weight 0, class 0, protected [flags 0x400]'
      - '    path-idx 0 bkup-idx 1 NHID 0x0 [0xd677ae0 0x0]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - '   via 26.0.0.6/32, GigabitEthernet0/0/0/1, 11 dependencies, weight 0, class 0, backup (TI-LFA) [flags 0xb00]'
      - '    path-idx 1 NHID 0x0 [0x130e98d0 0x0]'
      - '    next hop 26.0.0.6/32, Repair Node(s): 8.8.8.8'
      - '    remote adjacency'
      - '     local label 16005      labels imposed {16008 16005}'
      - ''
      - '    Load distribution: 0 (refcount 3)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'
```

## Double Segment TI-LFA

<figure markdown>
  ![double_segment_tilfa.png](assets/images/double_segment_tilfa.png){ loading=lazy }
  <figcaption>Double Segment TI-LFA</figcaption>
</figure>

```ruby linenums="1"
PLAY [7. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - DOUBLE SEGMENT TI-LFA] ******

TASK [lab_7_ds_tilfa : 7.0 RENDER AND DISPLAY THE DOUBLE SEGMENT TI-LFA CONFIGURATION] ***
ok: [P8] => 
  msg:
  - 'template: ds_tilfa.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/1'
    - '  address-family ipv4 unicast'
    - '   metric 100'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P4] => 
  msg:
  - 'template: ds_tilfa.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/1'
    - '  address-family ipv4 unicast'
    - '   metric 100'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_7_ds_tilfa : 7.1 RENDER AND SAVE THE DOUBLE SEGMENT TI-LFA CONFIGURATION] ***
ok: [P8]
ok: [P4]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_7_ds_tilfa : 1 secs PAUSE FOR CONVERGENCE] ***************************
ok: [P2]

TASK [lab_7_ds_tilfa : 7.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P4] => 
  output.dest: xrcfg/P4.ds_tilfa.xrcfg
ok: [P8] => 
  output.dest: xrcfg/P8.ds_tilfa.xrcfg

TASK [lab_7_ds_tilfa : 7.3 RENDER AND APPLY THE DOUBLE SEGMENT TI-LFA CONFIGURATION] ***
changed: [P4]
changed: [P8]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_7_ds_tilfa : 1 minutes PAUSE FOR CONVERGENCE] ************************
ok: [P2]

TASK [lab_7_ds_tilfa : 7.4 RUN COMMANDS TO VERIFY DOUBLE SEGMENT TI-LFA SCENARIO...(A)] ***
ok: [P8] => (item=traceroute sr-mpls 5.5.5.5/32)
ok: [P8] => (item=show isis adjacency Gi0/0/0/1 detail)

TASK [lab_7_ds_tilfa : 7.5 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P8] => (item=traceroute sr-mpls 5.5.5.5/32) => 
  msg:
  - - - Tracing MPLS Label Switched Path to 5.5.5.5/32, timeout is 2 seconds
      - ''
      - 'Codes: ''!'' - success, ''Q'' - request not sent, ''.'' - timeout,'
      - '  ''L'' - labeled output interface, ''B'' - unlabeled output interface, '
      - '  ''D'' - DS Map mismatch, ''F'' - no FEC mapping, ''f'' - FEC mismatch,'
      - '  ''M'' - malformed request, ''m'' - unsupported tlvs, ''N'' - no rx label, '
      - '  ''P'' - no rx intf label prot, ''p'' - premature termination of LSP, '
      - '  ''R'' - transit router, ''I'' - unknown upstream index,'
      - '  ''X'' - unknown return code, ''x'' - return code 0'
      - ''
      - Type escape sequence to abort.
      - ''
      - '  0 78.0.0.8 MRU 1500 [Labels: 16005 Exp: 0]'
      - 'L 1 78.0.0.7 MRU 1500 [Labels: 16005 Exp: 0] 18 ms'
      - . 2 *
      - . 3 *
      - 'L 4 23.0.0.3 MRU 1500 [Labels: 16005 Exp: 0] 23 ms'
      - 'L 5 34.0.0.4 MRU 1500 [Labels: implicit-null Exp: 0] 20 ms'
      - '! 6 45.0.0.5 24 ms'
ok: [P8] => (item=show isis adjacency Gi0/0/0/1 detail) => 
  msg:
  - - - 'IS-IS IGP Level-2 adjacencies:'
      - System Id      Interface                SNPA           State Hold Changed  NSF IPv4 IPv6
      - '                                                                               BFD  BFD '
      - P4             Gi0/0/0/1                *PtoP*         Up    27   00:13:33 Yes None None
      - '  Area Address:           49'
      - '  Neighbor IPv4 Address:  48.0.0.4*'
      - '  Adjacency SID:          24020 (protected)'
      - '   Backup label stack:    [16004]'
      - '   Backup stack size:     1'
      - '   Backup interface:      Gi0/0/0/2'
      - '   Backup nexthop:        78.0.0.7'
      - '   Backup node address:   4.4.4.4'
      - '  Non-FRR Adjacency SID:  24021'
      - '  Topology:               IPv4 Unicast'
      - '  BFD Status:             BFD Not Required, Neighbor Useable'
      - ''
      - 'Total adjacency count: 1'

TASK [lab_7_ds_tilfa : 7.6 RUN COMMANDS TO VERIFY DOUBLE SEGMENT TI-LFA SCENARIO...(B)] ***
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [lab_7_ds_tilfa : 7.7 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Apr 10 12:48:12.917 for 00:01:07'
      - '     via 23.0.0.3, GigabitEthernet0/0/0/0, Label: 16005, P3, SRGB Base: 16000, Weight: 0'
      - '       Backup path: TI-LFA (link), via 26.0.0.6, GigabitEthernet0/0/0/1 P6, SRGB Base: 16000, Weight: 0, Metric: 140'
      - '         P node: P8.00 [8.8.8.8], Label: 16008'
      - '         Q node: P4.00 [4.4.4.4], Label: 24021'
      - '         Prefix label: 16005'
      - '         Backup-src: PE5.00'
      - '       P: No, TM: 140, LC: No, NP: No, D: No, SRLG: Yes'
      - '     src PE5.00-00, 5.5.5.5, prefix-SID index 5, R:0 N:1 P:0 E:0 V:0 L:0, Alg:0'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4457, labeled SR, internal 0x1000001 0x8310 (ptr 0xe7af8f8) [1], 0x600 (0xda60768), 0xa28 (0x224ea6d8)
      - ' Updated Apr 10 12:48:12.927 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xd8cd458) reference count 6, flags 0x500068, source rib (7), 1 backups'
      - '                [3 type 5 flags 0x8401 (0xec42c08) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xda60768, sh-ldi=0xec42c08]'
      - '  gateway array update type-time 1 Apr 10 12:48:12.927'
      - ' LDI Update time Apr 10 12:48:12.927'
      - ' LW-LDI-TS Apr 10 12:48:12.927'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 10 dependencies, weight 0, class 0, protected [flags 0x400]'
      - '    path-idx 0 bkup-idx 1 NHID 0x0 [0xd677ae0 0x0]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - '   via 26.0.0.6/32, GigabitEthernet0/0/0/1, 11 dependencies, weight 0, class 0, backup (TI-LFA) [flags 0xb00]'
      - '    path-idx 1 NHID 0x0 [0x130e98d0 0x0]'
      - '    next hop 26.0.0.6/32, Repair Node(s): 8.8.8.8, 4.4.4.4'
      - '    remote adjacency'
      - '     local label 16005      labels imposed {16008 24021 16005}'
      - ''
      - '    Load distribution: 0 (refcount 3)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'

TASK [lab_7_ds_tilfa : 7.8 RENDER AND DISPLAY DOUBLE SEGMENT TI-LFA REVERSAL CONFIGURATION] ***
ok: [P4] => 
  msg:
  - 'template: ds_tilfa_revert.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/1'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P8] => 
  msg:
  - 'template: ds_tilfa_revert.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/1'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_7_ds_tilfa : 7.9 RENDER AND SAVE THE DOUBLE SEGMENT TI-LFA REVERSAL CONFIGURATION] ***
changed: [P4]
changed: [P8]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_7_ds_tilfa : 1 secs PAUSE FOR CONVERGENCE] ***************************
ok: [P2]

TASK [lab_7_ds_tilfa : 7.10 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P4] => 
  output.dest: xrcfg/P4.ds_tilfa_revert.xrcfg
ok: [P8] => 
  output.dest: xrcfg/P8.ds_tilfa_revert.xrcfg

TASK [lab_7_ds_tilfa : 7.11 RENDER AND APPLY THE DOUBLE SEGMENT TI-LFA REVERSAL CONFIGURATION] ***
changed: [P8]
changed: [P4]
```

## Microloop Avoidance

<figure markdown>
  ![microloop_avoidance.png](assets/images/microloop_avoidance.png){ loading=lazy }
  <figcaption>Microloop Avoidance</figcaption>
</figure>

```ruby linenums="1"
PLAY [8. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - MICROLOOP AVOIDANCE] ********

TASK [lab_8_microloop_avoidance : 8.0 RENDER AND DISPLAY THE PREPARATION CONFIGURATION] ***
ok: [P2] => 
  msg:
  - 'template: microloop_avoidance_p2.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/0'
    - '  address-family ipv4 unicast'
    - '   metric 100'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P8] => 
  msg:
  - 'template: microloop_avoidance_p8.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/1'
    - '  shutdown'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_8_microloop_avoidance : 8.1 RENDER AND SAVE THE PREPARATION CONFIGURATION] ***
ok: [P2]
changed: [P8]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_8_microloop_avoidance : 1 secs PAUSE FOR CONVERGENCE] ****************
ok: [P2]

TASK [lab_8_microloop_avoidance : 8.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P8] => 
  output.dest: xrcfg/P8.mlaprep.xrcfg
ok: [P2] => 
  output.dest: xrcfg/P2.mlaprep.xrcfg

TASK [lab_8_microloop_avoidance : 8.3 RENDER AND APPLY THE PREPARATION CONFIGURATION] ***
changed: [P2]
changed: [P8]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_8_microloop_avoidance : 1 minutes PAUSE FOR CONVERGENCE] *************
ok: [P2]

TASK [lab_8_microloop_avoidance : 8.4 RUN COMMANDS TO CHECK PATH to PE5 IS VIA P3] ***
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show route 5.5.5.5/32)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [lab_8_microloop_avoidance : 8.5 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [120/115] Label: 16005, medium priority'
      - '   Installed Apr 10 12:49:39.609 for 00:01:02'
      - '     via 23.0.0.3, GigabitEthernet0/0/0/0, Label: 16005, P3, SRGB Base: 16000, Weight: 0'
      - '       No FRR backup'
      - '     src PE5.00-00, 5.5.5.5, prefix-SID index 5, R:0 N:1 P:0 E:0 V:0 L:0, Alg:0'
ok: [P2] => (item=show route 5.5.5.5/32) => 
  msg:
  - - - Routing entry for 5.5.5.5/32
      - '  Known via "isis IGP", distance 115, metric 120, labeled SR, type level-2'
      - '  Installed Apr 10 12:49:39.609 for 00:01:02'
      - '  Routing Descriptor Blocks'
      - '    23.0.0.3, from 5.5.5.5, via GigabitEthernet0/0/0/0'
      - '      Route metric is 120'
      - '  No advertising protos.'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4518, labeled SR, internal 0x1000001 0x8310 (ptr 0xe7af748) [1], 0x600 (0xda611d0), 0xa28 (0xebfe468)
      - ' Updated Apr 10 12:49:39.613 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xd8ca198) reference count 6, flags 0x68, source rib (7), 1 backups'
      - '                [3 type 5 flags 0x8401 (0xec42d28) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xda611d0, sh-ldi=0xec42d28]'
      - '  gateway array update type-time 1 Apr 10 12:49:39.613'
      - ' LDI Update time Apr 10 12:49:39.613'
      - ' LW-LDI-TS Apr 10 12:49:39.613'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 8 dependencies, weight 0, class 0 [flags 0x0]'
      - '    path-idx 0 NHID 0x0 [0x130e9150 0x0]'
      - '    next hop 23.0.0.3/32'
      - '    remote adjacency'
      - '     local label 16005      labels imposed {16005}'
      - ''
      - '    Load distribution: 0 (refcount 3)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'

TASK [lab_8_microloop_avoidance : 8.6 RENDER AND DISPLAY THE MICROLOOP AVOIDANCE CONFIGURATION] ***
ok: [P2] => 
  msg:
  - 'template: microloop_avoidance_p2_enable.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  microloop avoidance segment-routing'
    - '  microloop avoidance rib-update-delay 60000'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_8_microloop_avoidance : 8.7 RENDER AND SAVE THE MICROLOOP AVOIDANCE CONFIGURATION] ***
ok: [P2]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_8_microloop_avoidance : 1 secs PAUSE FOR CONVERGENCE] ****************
ok: [P2]

TASK [lab_8_microloop_avoidance : 8.8 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => 
  output.dest: xrcfg/P2.mla.xrcfg

TASK [lab_8_microloop_avoidance : 8.9 RENDER AND APPLY THE MICROLOOP AVOIDANCE CONFIGURATION] ***
changed: [P2]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_8_microloop_avoidance : 1 minutes PAUSE FOR CONVERGENCE] *************
ok: [P2]

TASK [lab_8_microloop_avoidance : 8.10 RENDER AND DISPLAY THE MICROLOOP TRIGGER CONFIGURATION] ***
ok: [P8] => 
  msg:
  - 'template: microloop_avoidance_p8_trigger.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/1'
    - '  no shutdown'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_8_microloop_avoidance : 8.11 RENDER AND SAVE THE MICROLOOP TRIGGER CONFIGURATION] ***
changed: [P8]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_8_microloop_avoidance : 1 secs PAUSE FOR CONVERGENCE] ****************
ok: [P2]

TASK [lab_8_microloop_avoidance : 8.12 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P8] => 
  output.dest: xrcfg/P8.mlatrgr.xrcfg

TASK [lab_8_microloop_avoidance : 8.13 RENDER AND APPLY THE MICROLOOP TRIGGER CONFIGURATION] ***
changed: [P8]
Pausing for 15 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_8_microloop_avoidance : 15 seconds PAUSE FOR CONVERGENCE] ************
ok: [P2]

TASK [lab_8_microloop_avoidance : 8.14 RUN COMMANDS TO VERIFY MICROLOOP AVOIDANCE] ***
ok: [P2] => (item=show isis protocol | utility egrep -A2 Micro)
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show route 5.5.5.5/32)
ok: [P2] => (item=show route 5.5.5.5/32 detail)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [lab_8_microloop_avoidance : 8.15 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => (item=show isis protocol | utility egrep -A2 Micro) => 
  msg:
  - - - 'Microloop avoidance: Enabled'
      - '          Configuration: Type: Segment routing, RIB update delay: 60000 msec'
      - '          State: Active, Duration: 15434 ms, Event Link up, Near: P8.00 Far: P4.00'
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [50/115] Label: 16005, medium priority'
      - '   Installed Apr 10 12:52:03.572 for 00:00:16'
      - '     via 26.0.0.6, GigabitEthernet0/0/0/1, P6, SRGB Base: 16000, Weight: 0'
      - '       No FRR backup'
      - '     exp 26.0.0.6, GigabitEthernet0/0/0/1, P6, SRGB Base: 16000, Weight: 0'
      - '       via explicit path'
      - '         P node: P8.00 [8.8.8.8], Label: 16008'
      - '         Q node: P4.00 [4.4.4.4], Label: 24021'
      - '         Prefix label: 16005'
      - '     src PE5.00-00, 5.5.5.5, prefix-SID index 5, R:0 N:1 P:0 E:0 V:0 L:0, Alg:0'
ok: [P2] => (item=show route 5.5.5.5/32) => 
  msg:
  - - - Routing entry for 5.5.5.5/32
      - '  Known via "isis IGP", distance 115, metric 50, labeled SR, type level-2'
      - '  Installed Apr 10 12:52:03.572 for 00:00:17'
      - '  Routing Descriptor Blocks'
      - '    26.0.0.6, from 5.5.5.5, via GigabitEthernet0/0/0/1'
      - '      Route metric is 50'
      - '  No advertising protos.'
ok: [P2] => (item=show route 5.5.5.5/32 detail) => 
  msg:
  - - - Routing entry for 5.5.5.5/32
      - '  Known via "isis IGP", distance 115, metric 50, labeled SR, type level-2'
      - '  Installed Apr 10 12:52:03.572 for 00:00:18'
      - '  Routing Descriptor Blocks'
      - '    26.0.0.6, from 5.5.5.5, via GigabitEthernet0/0/0/1'
      - '      Route metric is 50'
      - '      Labels: 0x3e88 0x5dd5 0x3e85 (16008 24021 16005)'
      - '      Tunnel ID: None'
      - '      Binding Label: None'
      - '      Extended communities count: 0'
      - "      Path id:1\t      Path ref count:0"
      - '      NHID:0x7(Ref:16)'
      - '  Route version is 0x37 (55)'
      - '  Local Label: 0x3e85 (16005)'
      - '  IP Precedence: Not Set'
      - '  QoS Group ID: Not Set'
      - '  Flow-tag: Not Set'
      - '  Fwd-class: Not Set'
      - '  Route Priority: RIB_PRIORITY_NON_RECURSIVE_MEDIUM (7) SVD Type RIB_SVD_TYPE_LOCAL'
      - '  Download Priority 1, Download Version 4534'
      - '  No advertising protos.'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4534, labeled SR, internal 0x1000001 0x8310 (ptr 0xe7af748) [1], 0x600 (0xda611d0), 0xa28 (0xebfeaa8)
      - ' Updated Apr 10 12:52:03.585 '
      - ' remote adjacency to GigabitEthernet0/0/0/1'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xd8cba10) reference count 15, flags 0x68, source rib (7), 1 backups'
      - '                [6 type 5 flags 0x8401 (0xec42fc8) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xda611d0, sh-ldi=0xec42fc8]'
      - '  gateway array update type-time 1 Apr 10 12:49:37.530'
      - ' LDI Update time Apr 10 12:49:37.530'
      - ' LW-LDI-TS Apr 10 12:52:03.585'
      - '   via 26.0.0.6/32, GigabitEthernet0/0/0/1, 8 dependencies, weight 0, class 0 [flags 0x0]'
      - '    path-idx 0 NHID 0x0 [0x130e98d0 0x0]'
      - '    next hop 26.0.0.6/32'
      - '    remote adjacency'
      - '     local label 16005      labels imposed {16008 24021 16005}'
      - ''
      - '    Load distribution: 0 (refcount 6)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/1    remote'

TASK [lab_8_microloop_avoidance : 8.16 RENDER AND DISPLAY THE RESTORATION CONFIGURATION] ***
ok: [P2] => 
  msg:
  - 'template: microloop_avoidance_p2_restore.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/0'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P7] => 
  msg:
  - 'template: microloop_avoidance_p7_restore.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/1'
    - '  no shutdown'
    - ' !'
    - ' interface GigabitEthernet0/0/0/3'
    - '  no shutdown'
    - ' !'
    - ' interface GigabitEthernet0/0/0/4'
    - '  no shutdown'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_8_microloop_avoidance : 8.17 RENDER AND SAVE THE RESTORATION CONFIGURATION] ***
ok: [P2]
ok: [P7]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_8_microloop_avoidance : 1 secs PAUSE FOR CONVERGENCE] ****************
ok: [P2]

TASK [lab_8_microloop_avoidance : 8.18 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => 
  output.dest: xrcfg/P2.mlarestore.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.mlarestore.xrcfg

TASK [lab_8_microloop_avoidance : 8.19 RENDER AND APPLY THE RESTORATION CONFIGURATION] ***
changed: [P2]
changed: [P7]
```

## MPLS Traffic-Engineering

```ruby linenums="1"
PLAY [9. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - MPLS TRAFFIC-ENGINEERING] ***

TASK [lab_9_mpls_traffic_eng : 9.0 RENDER AND DISPLAY THE MPLS TRAFFIC-ENGINEERING CONFIGURATION] ***
ok: [P2] => 
  msg:
  - 'template: mpls_traff_eng.j2'
  - - ipv4 unnumbered mpls traffic-eng Loopback0
    - router isis IGP address-family ipv4 unicast mpls traffic-eng router-id Loopback0
    - mpls traffic-eng
    - '!'
    - ''
    - ''
ok: [P3] => 
  msg:
  - 'template: mpls_traff_eng.j2'
  - - ipv4 unnumbered mpls traffic-eng Loopback0
    - router isis IGP address-family ipv4 unicast mpls traffic-eng router-id Loopback0
    - mpls traffic-eng
    - '!'
    - ''
    - ''
ok: [PE1] => 
  msg:
  - 'template: mpls_traff_eng.j2'
  - - ipv4 unnumbered mpls traffic-eng Loopback0
    - router isis IGP address-family ipv4 unicast mpls traffic-eng router-id Loopback0
    - mpls traffic-eng
    - '!'
    - ''
    - ''
ok: [P4] => 
  msg:
  - 'template: mpls_traff_eng.j2'
  - - ipv4 unnumbered mpls traffic-eng Loopback0
    - router isis IGP address-family ipv4 unicast mpls traffic-eng router-id Loopback0
    - mpls traffic-eng
    - '!'
    - ''
    - ''
ok: [PE5] => 
  msg:
  - 'template: mpls_traff_eng.j2'
  - - ipv4 unnumbered mpls traffic-eng Loopback0
    - router isis IGP address-family ipv4 unicast mpls traffic-eng router-id Loopback0
    - mpls traffic-eng
    - '!'
    - ''
    - ''
ok: [P7] => 
  msg:
  - 'template: mpls_traff_eng.j2'
  - - ipv4 unnumbered mpls traffic-eng Loopback0
    - router isis IGP address-family ipv4 unicast mpls traffic-eng router-id Loopback0
    - mpls traffic-eng
    - '!'
    - ''
    - ''
ok: [P6] => 
  msg:
  - 'template: mpls_traff_eng.j2'
  - - ipv4 unnumbered mpls traffic-eng Loopback0
    - router isis IGP address-family ipv4 unicast mpls traffic-eng router-id Loopback0
    - mpls traffic-eng
    - '!'
    - ''
    - ''
ok: [P8] => 
  msg:
  - 'template: mpls_traff_eng.j2'
  - - ipv4 unnumbered mpls traffic-eng Loopback0
    - router isis IGP address-family ipv4 unicast mpls traffic-eng router-id Loopback0
    - mpls traffic-eng
    - '!'
    - ''
    - ''

TASK [lab_9_mpls_traffic_eng : 9.1 RENDER AND SAVE THE MPLS TRAFFIC-ENGINEERING CONFIGURATION] ***
changed: [P8]
ok: [PE5]
ok: [P3]
ok: [P2]
ok: [PE1]
changed: [P4]
ok: [P6]
ok: [P7]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_9_mpls_traffic_eng : 1 secs PAUSE FOR CONVERGENCE] *******************
ok: [PE1]

TASK [lab_9_mpls_traffic_eng : 9.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => 
  output.dest: xrcfg/P2.mpls_traffic_eng.xrcfg
ok: [P4] => 
  output.dest: xrcfg/P4.mpls_traffic_eng.xrcfg
ok: [PE5] => 
  output.dest: xrcfg/PE5.mpls_traffic_eng.xrcfg
ok: [P3] => 
  output.dest: xrcfg/P3.mpls_traffic_eng.xrcfg
ok: [P6] => 
  output.dest: xrcfg/P6.mpls_traffic_eng.xrcfg
ok: [P8] => 
  output.dest: xrcfg/P8.mpls_traffic_eng.xrcfg
ok: [PE1] => 
  output.dest: xrcfg/PE1.mpls_traffic_eng.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.mpls_traffic_eng.xrcfg

TASK [lab_9_mpls_traffic_eng : 9.3 RENDER AND APPLY THE MPLS TRAFFIC-ENGINEERING CONFIGURATION] ***
changed: [PE1]
changed: [P8]
changed: [P2]
changed: [PE5]
changed: [P3]
changed: [P6]
changed: [P4]
changed: [P7]
```


## TI-LFA Node + SRLG Preparation

<figure markdown>
  ![tilfa_prep.png](assets/images/tilfa_prep.png){ loading=lazy }
  <figcaption>TI-LFA Node and SRLG Protection Topology</figcaption>
</figure>

```ruby linenums="1"
PLAY [10. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - TI-LFA NODE + SRLG PROTECTION PREPARATION] ***

TASK [lab_10_tilfa_ns_prep : 10.0 RENDER AND DISPLAY THE TI-LFA NODE + SRLG PROTECTION PREPARATION CONFIGURATION] ***
ok: [P4] => 
  msg:
  - 'template: tilfa_ns_prep_p4.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/4'
    - '  address-family ipv4 unicast'
    - '   metric 100'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P6] => 
  msg:
  - 'template: tilfa_ns_prep_p6.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/0'
    - '  address-family ipv4 unicast'
    - '   metric 100'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P8] => 
  msg:
  - 'template: tilfa_ns_prep_p8.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/1'
    - '  shutdown'
    - ' !'
    - ' interface GigabitEthernet0/0/0/2'
    - '  shutdown'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P7] => 
  msg:
  - 'template: tilfa_ns_prep_p7.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/0'
    - '  address-family ipv4 unicast'
    - '   metric 100'
    - '  !'
    - ' !'
    - ' interface GigabitEthernet0/0/0/4'
    - '  address-family ipv4 unicast'
    - '   metric 100'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_10_tilfa_ns_prep : 10.1 RENDER AND SAVE THE TI-LFA NODE + SRLG PROTECTION PREPARATION CONFIGURATION] ***
changed: [P8]
changed: [P4]
ok: [P6]
ok: [P7]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_10_tilfa_ns_prep : 1 secs PAUSE FOR CONVERGENCE] *********************
ok: [P4]

TASK [lab_10_tilfa_ns_prep : 10.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P4] => 
  output.dest: xrcfg/P4.tilfa_ns_prep.xrcfg
ok: [P6] => 
  output.dest: xrcfg/P6.tilfa_ns_prep.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.tilfa_ns_prep.xrcfg
ok: [P8] => 
  output.dest: xrcfg/P8.tilfa_ns_prep.xrcfg

TASK [lab_10_tilfa_ns_prep : 10.3 RENDER AND APPLY THE TI-LFA NODE + SRLG PROTECTION PREPARATION CONFIGURATION] ***
changed: [P6]
changed: [P4]
changed: [P7]
changed: [P8]
```

## TI-LFA Node Protection

<figure markdown>
  ![node_protection.png](assets/images/node_protection.png){ loading=lazy }
  <figcaption>TI-LFA Node Protection</figcaption>
</figure>

```ruby linenums="1"

PLAY [11. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - TI-LFA NODE PROTECTION] ****

TASK [lab_11_tilfa_ns_node : 11.0 RENDER AND DISPLAY THE TI-LFA NODE PROTECTION CONFIGURATION] ***
ok: [P2] => 
  msg:
  - 'template: tilfa_ns_node.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  fast-reroute per-prefix tiebreaker node-protecting index 200'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_11_tilfa_ns_node : 11.1 RENDER AND SAVE THE TI-LFA NODE PROTECTION CONFIGURATION] ***
ok: [P2]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_11_tilfa_ns_node : 1 secs PAUSE FOR CONVERGENCE] *********************
ok: [P2]

TASK [lab_11_tilfa_ns_node : 11.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => 
  output.dest: xrcfg/P2.tilfa_ns_node.xrcfg

TASK [lab_11_tilfa_ns_node : 11.3 RENDER AND APPLY THE TI-LFA NODE PROTECTION CONFIGURATION] ***
changed: [P2]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_11_tilfa_ns_node : 1 seconds PAUSE FOR CONVERGENCE] ******************
ok: [P2]

TASK [lab_11_tilfa_ns_node : 11.4 RUN COMMANDS TO VERIFY TI-LFA NODE PROTECTION] ***
ok: [P2] => (item=sh isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [lab_11_tilfa_ns_node : 11.5 DISPLAY OUTPUT FOR THE COMMANDS RUN IN THE PREVIOUS TASK] ***
ok: [P2] => (item=sh isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Apr 10 12:53:26.493 for 00:00:42'
      - '     via 23.0.0.3, GigabitEthernet0/0/0/0, Label: 16005, P3, SRGB Base: 16000, Weight: 0'
      - '       Backup path: TI-LFA (node), via 27.0.0.7, GigabitEthernet0/0/0/3 P7, SRGB Base: 16000, Weight: 0, Metric: 120'
      - '         P node: P7.00 [7.7.7.7], Label: ImpNull'
      - '         Q node: P4.00 [4.4.4.4], Label: 24023'
      - '         Prefix label: 16005'
      - '         Backup-src: PE5.00'
      - '       P: No, TM: 120, LC: No, NP: Yes, D: No, SRLG: Yes'
      - '     src PE5.00-00, 5.5.5.5, prefix-SID index 5, R:0 N:1 P:0 E:0 V:0 L:0, Alg:0'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4698, labeled SR, internal 0x1000001 0x8310 (ptr 0xe7af748) [1], 0x600 (0xda61890), 0xa28 (0x223e0230)
      - ' Updated Apr 10 12:53:26.497 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xd8ccb48) reference count 6, flags 0x500068, source rib (7), 1 backups'
      - '                [5 type 4 flags 0x8401 (0xec42f68) ext 0x0 (0x0)]'
      - '  LW-LDI[type=1, refc=1, ptr=0xda61890, sh-ldi=0xec42f68]'
      - '  gateway array update type-time 1 Apr 10 12:53:26.496'
      - ' LDI Update time Apr 10 12:53:26.500'
      - ' LW-LDI-TS Apr 10 12:53:26.500'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 14 dependencies, weight 0, class 0, protected [flags 0x400]'
      - '    path-idx 0 bkup-idx 1 NHID 0x0 [0xd677720 0xd677720]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - '   via 27.0.0.7/32, GigabitEthernet0/0/0/3, 16 dependencies, weight 0, class 0, backup (TI-LFA) [flags 0xb00]'
      - '    path-idx 1 NHID 0x0 [0x130e9330 0x0]'
      - '    next hop 27.0.0.7/32, Repair Node(s): 7.7.7.7, 4.4.4.4'
      - '    remote adjacency'
      - '     local label 16005      labels imposed {ImplNull 24023 16005}'
      - ''
      - '    Load distribution: 0 (refcount 5)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'

TASK [lab_11_tilfa_ns_node : 11.6 RENDER AND DISPLAY THE TI-LFA NODE PROTECTION REVERSAL CONFIGURATION] ***
ok: [P2] => 
  msg:
  - 'template: tilfa_ns_node_revert.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  no fast-reroute per-prefix tiebreaker node-protecting index 200'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_11_tilfa_ns_node : 11.7 RENDER AND SAVE THE TI-LFA NODE PROTECTION REVERSAL CONFIGURATION] ***
ok: [P2]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_11_tilfa_ns_node : 1 secs PAUSE FOR CONVERGENCE] *********************
ok: [P2]

TASK [lab_11_tilfa_ns_node : 11.8 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => 
  output.dest: xrcfg/P2.tilfa_ns_node_revert.xrcfg

TASK [lab_11_tilfa_ns_node : 11.9 RENDER AND APPLY THE TI-LFA NODE PROTECTION REVERSAL CONFIGURATION] ***
changed: [P2]
```

## TI-LFA Local SRLG Disjoint Protection

<figure markdown>
  ![srlg.png](assets/images/srlg.png){ loading=lazy }
  <figcaption>TI-LFA Local SRLG Disjoint Protection</figcaption>
</figure>

```ruby linenums="1"
PLAY [12. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - TI-LFA LOCAL SRLG-DISJOINT PROTECTION] ***

TASK [lab_12_tilfa_ns_local_srlg : 12.0 RENDER AND DISPLAY THE TI-LFA LOCAL SRLG-DISJOINT PROTECTION CONFIGURATION] ***
ok: [P2] => 
  msg:
  - 'template: tilfa_ns_local_srlg.j2'
  - - srlg
    - ' interface GigabitEthernet0/0/0/0'
    - '  name SRLG-100'
    - ' !'
    - ' interface GigabitEthernet0/0/0/3'
    - '  name SRLG-100'
    - ' !'
    - ' name SRLG-100 value 100'
    - '!'
    - router isis IGP
    - ' address-family ipv4 unicast'
    - '  fast-reroute per-prefix tiebreaker srlg-disjoint index 100'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_12_tilfa_ns_local_srlg : 12.1 RENDER AND SAVE THE TI-LFA LOCAL SRLG-DISJOINT PROTECTION CONFIGURATION] ***
ok: [P2]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_12_tilfa_ns_local_srlg : 1 secs PAUSE FOR CONVERGENCE] ***************
ok: [P2]

TASK [lab_12_tilfa_ns_local_srlg : 12.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => 
  output.dest: xrcfg/P2.tilfa_ns_local_srlg.xrcfg

TASK [lab_12_tilfa_ns_local_srlg : 12.3 RENDER AND APPLY THE TI-LFA LOCAL SRLG-DISJOINT PROTECTION CONFIGURATION] ***
changed: [P2]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_12_tilfa_ns_local_srlg : 1 seconds PAUSE FOR CONVERGENCE] ************
ok: [P2]

TASK [lab_12_tilfa_ns_local_srlg : 12.4 RUN COMMANDS TO VERIFY TI-LFA LOCAL SRLG-DISJOINT PROTECTION] ***
ok: [P2] => (item=sh isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [lab_12_tilfa_ns_local_srlg : 12.5 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => (item=sh isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Apr 10 12:54:27.922 for 00:01:02'
      - '     via 23.0.0.3, GigabitEthernet0/0/0/0, Label: 16005, P3, SRGB Base: 16000, Weight: 0'
      - '       Backup path: TI-LFA (srlg), via 26.0.0.6, GigabitEthernet0/0/0/1 P6, SRGB Base: 16000, Weight: 0, Metric: 140'
      - '         P node: P6.00 [6.6.6.6], Label: ImpNull'
      - '         Q node: P7.00 [7.7.7.7], Label: 24023'
      - '         Prefix label: 16005'
      - '         Backup-src: PE5.00'
      - '       P: No, TM: 140, LC: No, NP: No, D: No, SRLG: Yes'
      - '     src PE5.00-00, 5.5.5.5, prefix-SID index 5, R:0 N:1 P:0 E:0 V:0 L:0, Alg:0'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4732, labeled SR, internal 0x1000001 0x8310 (ptr 0xe7af748) [1], 0x600 (0xda60d98), 0xa28 (0x223e00d0)
      - ' Updated Apr 10 12:54:27.931 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xd8c8bd8) reference count 6, flags 0x500068, source rib (7), 1 backups'
      - '                [5 type 4 flags 0x8401 (0xec42128) ext 0x0 (0x0)]'
      - '  LW-LDI[type=1, refc=1, ptr=0xda60d98, sh-ldi=0xec42128]'
      - '  gateway array update type-time 1 Apr 10 12:54:27.931'
      - ' LDI Update time Apr 10 12:54:27.932'
      - ' LW-LDI-TS Apr 10 12:54:27.932'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 14 dependencies, weight 0, class 0, protected [flags 0x400]'
      - '    path-idx 0 bkup-idx 1 NHID 0x0 [0xd676dc0 0xd676dc0]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - '   via 26.0.0.6/32, GigabitEthernet0/0/0/1, 18 dependencies, weight 0, class 0, backup (TI-LFA) [flags 0xb00]'
      - '    path-idx 1 NHID 0x0 [0x130e98d0 0x0]'
      - '    next hop 26.0.0.6/32, Repair Node(s): 6.6.6.6, 7.7.7.7'
      - '    remote adjacency'
      - '     local label 16005      labels imposed {ImplNull 24023 16005}'
      - ''
      - '    Load distribution: 0 (refcount 5)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'
```

## TI-LFA Global Weighted SRLG Protection

<figure markdown>
  ![gw_srlg.png](assets/images/gw_srlg.png){ loading=lazy }
  <figcaption>TI-LFA Global Weighted SRLG Protection</figcaption>
</figure>

```ruby linenums="1"
PLAY [13. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - TI-LFA GLOBAL WEIGHTED SRLG PROTECTION] ***

TASK [lab_13_tilfa_ns_global_srlg : 13.0 RENDER AND DISPLAY THE TI-LFA GLOBAL WEIGHTED SRLG PROTECTION CONFIGURATION] ***
ok: [P2] => 
  msg:
  - 'template: tilfa_ns_global_srlg_p2.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  fast-reroute per-prefix srlg-protection weighted-global'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P7] => 
  msg:
  - 'template: tilfa_ns_global_srlg_p7.j2'
  - - srlg
    - ' interface GigabitEthernet0/0/0/1'
    - '  name SRLG-100'
    - ' !'
    - ' name SRLG-100'
    - '  value 100'
    - ' !'
    - '!'
    - router isis IGP address-family ipv4 unicast advertise application lfa link-attributes srlg
    - '!'
    - ''
    - ''

TASK [lab_13_tilfa_ns_global_srlg : 13.1 RENDER AND SAVE THE TI-LFA GLOBAL WEIGHTED SRLG PROTECTION CONFIGURATION] ***
ok: [P2]
ok: [P7]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_13_tilfa_ns_global_srlg : 1 secs PAUSE FOR CONVERGENCE] **************
ok: [P2]

TASK [lab_13_tilfa_ns_global_srlg : 13.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P7] => 
  output.dest: xrcfg/P7.tilfa_ns_gw_srlg.xrcfg
ok: [P2] => 
  output.dest: xrcfg/P2.tilfa_ns_gw_srlg.xrcfg

TASK [lab_13_tilfa_ns_global_srlg : 13.3 RENDER AND APPLY THE TI-LFA GLOBAL WEIGHTED SRLG PROTECTION CONFIGURATION] ***
changed: [P2]
changed: [P7]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_13_tilfa_ns_global_srlg : 1 seconds PAUSE FOR CONVERGENCE] ***********
ok: [P2]

TASK [lab_13_tilfa_ns_global_srlg : 13.4 RUN COMMANDS TO VERIFY TI-LFA GLOBAL WEIGHTED SRLG PROTECTION] ***
ok: [P2] => (item=show isis database verbose internal P7 | utility egrep -A10 SRLG)
ok: [P2] => (item=sh isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [lab_13_tilfa_ns_global_srlg : 13.5 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => (item=show isis database verbose internal P7 | utility egrep -A10 SRLG) => 
  msg:
  - - - 'MPLS SRLG:      P3.00'
      - '      Local Interface ID: 8'
      - '      Remote Interface ID: 8'
      - '      Flags: 0x0'
      - '      SRLGs: '
      - '        [0]: 100'
      - '  TLV code:238 length:26'
      - '    Application Specific SRLG: P3.00'
      - '      L flag: 0, SA-Length 1, UDA-Length 1'
      - '      Standard Applications: 0x20 LFA'
      - '      User Defined Applications: 0x20 LFA'
      - '      Sub-TLV Length: 10'
      - '        SubTLV code:4 length:8'
      - '          Local Interface ID: 8, Remote Interface ID: 8'
      - '      SRLGs:'
      - '        [0]: 100'
      - ''
      - ' Total Level-2 LSP count: 1     Local Level-2 LSP count: 0'
ok: [P2] => (item=sh isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Apr 10 12:55:44.510 for 00:01:00'
      - '     via 23.0.0.3, GigabitEthernet0/0/0/0, Label: 16005, P3, SRGB Base: 16000, Weight: 0'
      - '       Backup path: TI-LFA (srlg), via 26.0.0.6, GigabitEthernet0/0/0/1 P6, SRGB Base: 16000, Weight: 0, Metric: 220'
      - '       Backup tunnel: tunnel-te32769'
      - '         P node: P6.00 [6.6.6.6], Label: ImpNull'
      - '         Q node: P7.00 [7.7.7.7], Label: 24023'
      - '         Q node: P4.00 [4.4.4.4], Label: 24023'
      - '         Prefix label: 16005'
      - '         Backup-src: PE5.00'
      - '       P: No, TM: 220, LC: No, NP: No, D: No, SRLG: Yes'
      - '     src PE5.00-00, 5.5.5.5, prefix-SID index 5, R:0 N:1 P:0 E:0 V:0 L:0, Alg:0'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4744, labeled SR, internal 0x1000001 0x8310 (ptr 0xe7af748) [1], 0x600 (0xda611d0), 0xa28 (0x223dfc58)
      - ' Updated Apr 10 12:55:44.513 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xd8ccd18) reference count 3, flags 0x500068, source rib (7), 1 backups'
      - '                [2 type 5 flags 0x8401 (0xec43088) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xda611d0, sh-ldi=0xec43088]'
      - '  gateway array update type-time 1 Apr 10 12:55:44.513'
      - ' LDI Update time Apr 10 12:55:44.514'
      - ' LW-LDI-TS Apr 10 12:55:44.514'
      - '   via 0.0.0.0/32, tunnel-te32769, 9 dependencies, weight 0, class 0, backup (Local-LFA) [flags 0x300]'
      - '    path-idx 0 NHID 0x0 [0x130ea410 0x0]'
      - '    next hop 0.0.0.0/32'
      - '    local adjacency'
      - '     local label 16005      labels imposed {16005}'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 8 dependencies, weight 0, class 0, protected [flags 0x400]'
      - '    path-idx 1 bkup-idx 0 NHID 0x0 [0xd676cd0 0x0]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - ''
      - '    Load distribution: 0 (refcount 2)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'

TASK [lab_13_tilfa_ns_global_srlg : 13.6 RENDER AND DISPLAY THE TI-LFA GLOBAL WEIGHTED SRLG REVERSAL CONFIGURATION] ***
ok: [P2] => 
  msg:
  - 'template: tilfa_ns_global_srlg_revert_p2.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  no fast-reroute per-prefix srlg-protection weighted-global'
    - ' !'
    - '!'
    - ''
    - ''
ok: [P7] => 
  msg:
  - 'template: tilfa_ns_global_srlg_revert_p7.j2'
  - - no router isis IGP address-family ipv4 unicast advertise application lfa link-attributes srlg
    - '!'
    - ''
    - ''

TASK [lab_13_tilfa_ns_global_srlg : 13.7 RENDER AND SAVE THE TI-LFA GLOBAL WEIGHTED SRLG REVERSAL CONFIGURATION] ***
ok: [P2]
ok: [P7]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_13_tilfa_ns_global_srlg : 1 secs PAUSE FOR CONVERGENCE] **************
ok: [P2]

TASK [lab_13_tilfa_ns_global_srlg : 13.8 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P7] => 
  output.dest: xrcfg/P7.tilfa_ns_gw_srlg_revert.xrcfg
ok: [P2] => 
  output.dest: xrcfg/P2.tilfa_ns_gw_srlg_revert.xrcfg

TASK [lab_13_tilfa_ns_global_srlg : 13.9 RENDER AND APPLY THE TI-LFA GLOBAL WEIGHTED SRLG REVERSAL CONFIGURATION] ***
changed: [P2]
changed: [P7]
```

## TI-LFA Node + SRLG Protection

<figure markdown>
  ![node_plus_srlg.png](assets/images/node_plus_srlg.png){ loading=lazy }
  <figcaption>TI-LFA Node + SRLG Protection</figcaption>
</figure>

```ruby linenums="1"
PLAY [14. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - TI-LFA NODE + SRLG PROTECTION] ***

TASK [lab_14_tilfa_ns_node_plus_srlg : 14.0 RENDER AND DISPLAY THE TI-LFA NODE + SRLG PROTECTION CONFIGURATION] ***
ok: [P2] => 
  msg:
  - 'template: tilfa_ns_node.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  fast-reroute per-prefix tiebreaker node-protecting index 200'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_14_tilfa_ns_node_plus_srlg : 14.1 RENDER AND SAVE THE TI-LFA NODE + SRLG PROTECTION CONFIGURATION] ***
ok: [P2]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_14_tilfa_ns_node_plus_srlg : 1 secs PAUSE FOR CONVERGENCE] ***********
ok: [P2]

TASK [lab_14_tilfa_ns_node_plus_srlg : 14.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => 
  output.dest: xrcfg/P2.tilfa_ns_node_plus_srlg.xrcfg

TASK [lab_14_tilfa_ns_node_plus_srlg : 14.3 RENDER AND APPLY THE TI-LFA NODE + SRLG PROTECTION CONFIGURATION] ***
changed: [P2]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_14_tilfa_ns_node_plus_srlg : 1 seconds PAUSE FOR CONVERGENCE] ********
ok: [P2]

TASK [lab_14_tilfa_ns_node_plus_srlg : 14.4 RUN COMMANDS TO VERIFY TI-LFA NODE + SRLG PROTECTION] ***
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [lab_14_tilfa_ns_node_plus_srlg : 14.5 DISPLAY OUTPUT FOR THE COMMANDS RUN IN THE PREVIOUS TASK] ***
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Apr 10 12:57:03.990 for 00:01:03'
      - '     via 23.0.0.3, GigabitEthernet0/0/0/0, Label: 16005, P3, SRGB Base: 16000, Weight: 0'
      - '       Backup path: TI-LFA (node+srlg), via 26.0.0.6, GigabitEthernet0/0/0/1 P6, SRGB Base: 16000, Weight: 0, Metric: 220'
      - '       Backup tunnel: tunnel-te32769'
      - '         P node: P6.00 [6.6.6.6], Label: ImpNull'
      - '         Q node: P7.00 [7.7.7.7], Label: 24023'
      - '         Q node: P4.00 [4.4.4.4], Label: 24023'
      - '         Prefix label: 16005'
      - '         Backup-src: PE5.00'
      - '       P: No, TM: 220, LC: No, NP: Yes, D: No, SRLG: Yes'
      - '     src PE5.00-00, 5.5.5.5, prefix-SID index 5, R:0 N:1 P:0 E:0 V:0 L:0, Alg:0'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4772, labeled SR, internal 0x1000001 0x8310 (ptr 0xe7af748) [1], 0x600 (0xda611d0), 0xa28 (0x223dfcb0)
      - ' Updated Apr 10 12:57:03.994 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xd8c82c8) reference count 3, flags 0x500068, source rib (7), 1 backups'
      - '                [2 type 5 flags 0x8401 (0xec42728) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xda611d0, sh-ldi=0xec42728]'
      - '  gateway array update type-time 1 Apr 10 12:57:03.994'
      - ' LDI Update time Apr 10 12:57:03.994'
      - ' LW-LDI-TS Apr 10 12:57:03.994'
      - '   via 0.0.0.0/32, tunnel-te32769, 9 dependencies, weight 0, class 0, backup (Local-LFA) [flags 0x300]'
      - '    path-idx 0 NHID 0x0 [0x130ea410 0x0]'
      - '    next hop 0.0.0.0/32'
      - '    local adjacency'
      - '     local label 16005      labels imposed {16005}'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 8 dependencies, weight 0, class 0, protected [flags 0x400]'
      - '    path-idx 1 bkup-idx 0 NHID 0x0 [0xd676fa0 0x0]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - ''
      - '    Load distribution: 0 (refcount 2)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'

TASK [lab_14_tilfa_ns_node_plus_srlg : 14.6 RUN AND PARSE WITH TTP(TEMPLATE TEXT PARSER) TO CAPTURE TUNNEL-ID] ***
ok: [P2]

TASK [lab_14_tilfa_ns_node_plus_srlg : 14.7 DISPLAY OUTPUT FOR THE COMMANDS RUN IN THE PREVIOUS TASK] ***
ok: [P2] => 
  msg:
  - show cef 5.5.5.5/32
  - - - tunnelid: '32769'

TASK [lab_14_tilfa_ns_node_plus_srlg : 14.8 USE THE CAPTURED TUNNEL-ID TO VERIFY LABEL STACK] ***
ok: [P2]

TASK [lab_14_tilfa_ns_node_plus_srlg : 14.9 DISPLAY OUTPUT FOR THE COMMANDS RUN IN THE PREVIOUS TASK] ***
ok: [P2] => 
  msg:
  - show mpls traffic-eng tunnels 32769
  - - 'Name: tunnel-te32769  Destination: 0.0.0.0  Ifhandle:0x9c (auto-tunnel for ISIS IGP)'
    - '  Signalled-Name: auto_P2_t32769'
    - '  Status:'
    - '    Admin:    up Oper:   up   Path:  valid   Signalling: connected'
    - ''
    - '    path option (_te32769), preference 10, (verbatim Segment-Routing) type explicit (_te32769) (Basis for Setup)'
    - '    G-PID: 0x0800 (derived from egress interface properties)'
    - '    Bandwidth Requested: 0 kbps  CT0'
    - '    Creation Time: Mon Apr 10 12:55:43 2023 (00:02:27 ago)'
    - '  Config Parameters:'
    - '    Bandwidth:        0 kbps (CT0) Priority:  7  7 Affinity: 0x0/0xffff'
    - '    Metric Type: TE (global)'
    - '    Path Selection:'
    - '      Tiebreaker: Min-fill (default)'
    - '      Protection: any (default)'
    - '    Hop-limit: disabled'
    - '    Cost-limit: disabled'
    - '    Delay-limit: disabled'
    - '    Delay-measurement: disabled'
    - '    Path-invalidation timeout: 10000 msec (default), Action: Tear (default)'
    - '    AutoRoute: disabled  LockDown: disabled   Policy class: not set'
    - '    Forward class: 0 (not enabled)'
    - '    Forwarding-Adjacency: disabled'
    - '    Autoroute Destinations: 0'
    - '    Loadshare:          0 equal loadshares'
    - '    Auto-bw: disabled'
    - '    Auto-Capacity: Disabled:'
    - '    Path Protection: Not Enabled'
    - '    BFD Fast Detection: Disabled'
    - '    Reoptimization after affinity failure: Enabled'
    - '    SRLG discovery: Disabled'
    - '  History:'
    - '    Tunnel has been up for: 00:02:26 (since Mon Apr 10 12:55:44 UTC 2023)'
    - '    Current LSP:'
    - '      Uptime: 00:02:26 (since Mon Apr 10 12:55:44 UTC 2023)'
    - ''
    - '  Segment-Routing Path Info (IGP information is not used)'
    - '    Segment0[First Hop]: 26.0.0.6, Label: -'
    - '    Segment1[ - ]: Label: 24023'
    - '    Segment2[ - ]: Label: 24023'
    - ''
    - Displayed 1 (of 1) heads, 0 (of 0) midpoints, 0 (of 0) tails
    - Displayed 1 up, 0 down, 0 recovering, 0 recovered heads
```

## TI-LFA Tiebreaker (Link vs SRLG vs Node)

<figure markdown>
  ![tiebreaker_base_topology.png](assets/images/tiebreaker_base_topology.png){ loading=lazy }
  <figcaption>SR + TI-LFA Base Topology</figcaption>
</figure>

```ruby linenums="1"
PLAY [15. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - TI-LFA TIEBREAKER LINK vs NODE vs SRLG PROTECTION] ***

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.0 RENDER AND DISPLAY P9 PREP CONFIGURATION] ***
ok: [P9] => 
  msg:
  - 'template: prep_p9.j2'
  - - ''
    - hostname P9
    - root
    - ''
    - interface Loopback0
    - ' ipv4 address 9.9.9.9/32'
    - ' description System_Loopback_Interface'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/3
    - ' ipv4 address 39.0.0.9/24'
    - ' description P9_to_P3'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - interface GigabitEthernet0/0/0/5
    - ' ipv4 address 29.0.0.9/24'
    - ' description P9_to_P2'
    - ' no shutdown'
    - '!'
    - root
    - ''
    - router isis IGP
    - ' is-type level-2-only'
    - ' net 49.0000.0000.0009.00'
    - ' log adjacency changes'
    - ' address-family ipv4 unicast'
    - '  mpls ldp auto-config'
    - '  metric-style wide level 2'
    - ' !'
    - ' interface Loopback0'
    - '  passive'
    - '  address-family ipv4 unicast'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/3'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  interface GigabitEthernet0/0/0/5'
    - '  circuit-type level-2-only'
    - '  point-to-point'
    - '  hello-padding disable'
    - '  address-family ipv4 unicast'
    - '   metric 10'
    - '  !'
    - ' !'
    - '  !'
    - root
    - ''
    - mpls oam
    - '!'
    - mpls ldp
    - ' log'
    - '  neighbor'
    - ' !'
    - '!'
    - root
    - '!'
    - ''
    - router isis IGP
    - ' address-family ipv4 unicast'
    - '  segment-routing mpls'
    - ' !'
    - ' interface Loopback0'
    - '  address-family ipv4 unicast'
    - '   prefix-sid index 9'
    - '  !'
    - ' !'
    - '!'
    - ''
    - router isis IGP
    - ' address-family ipv4 unicast'
    - '  no mpls ldp auto-config'
    - ' !'
    - '!'
    - ''
    - router isis IGP
    - ' address-family ipv4 unicast'
    - '  segment-routing mpls sr-prefer'
    - ' !'
    - '!'
    - ''
    - router isis IGP interface GigabitEthernet0/0/0/3 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/3 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - router isis IGP interface GigabitEthernet0/0/0/5 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/5 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
    - '!'
    - '!'
    - ''
    - ''

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.1 RENDER AND SAVE P9 PREP CONFIGURATION] ***
ok: [P9]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 1 secs PAUSE FOR CONVERGENCE] ******
ok: [P2]

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P9] => 
  output.dest: xrcfg/P9.prep.xrcfg

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.3 RENDER AND APPLY P9 PREP CONFIGURATION] ***
changed: [P9]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 1 seconds PAUSE FOR CONVERGENCE] ***
ok: [P2]
```

### Link Protection Prefer
<figure markdown>
  ![tiebreaker_link_prefer.png](assets/images/tiebreaker_link_prefer.png){ loading=lazy }
  <figcaption>TI-LFA Link Protection Path Preferred</figcaption>
</figure>

```ruby linenums="1"
TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.4 RENDER AND DISPLAY THE TI-LFA LINK PROTECTION PREFER CONFIGURATION] ***
ok: [P2] => 
  msg:
  - 'template: tilfa_tiebrkr_prefer_link.j2'
  - - srlg
    - ' interface GigabitEthernet0/0/0/1'
    - '  name SRLG-100'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.5 RENDER AND SAVE THE TI-LFA LINK PROTECTION PREFER CONFIGURATION] ***
ok: [P2]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 1 secs PAUSE FOR CONVERGENCE] ******
ok: [P2]

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.6 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => 
  output.dest: xrcfg/P2.tilfa_tiebrkr_prefer_link.xrcfg

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.7 RENDER AND APPLY THE TI-LFA LINK PROTECTION PREFER CONFIGURATION] ***
changed: [P2]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 1 seconds PAUSE FOR CONVERGENCE] ***
ok: [P2]

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.8 RUN COMMANDS TO VERIFY TI-LFA LINK PROTECTION PREFER] ***
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show route 5.5.5.5/32)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.9 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Apr 10 12:59:45.135 for 00:00:55'
      - '     via 23.0.0.3, GigabitEthernet0/0/0/0, Label: 16005, P3, SRGB Base: 16000, Weight: 0'
      - '       Backup path: LFA, via 29.0.0.9, GigabitEthernet0/0/0/5, Label: 16005, P9, SRGB Base: 16000, Weight: 0, Metric: 40'
      - '       P: No, TM: 40, LC: No, NP: No, D: No, SRLG: Yes'
      - '     src PE5.00-00, 5.5.5.5, prefix-SID index 5, R:0 N:1 P:0 E:0 V:0 L:0, Alg:0'
ok: [P2] => (item=show route 5.5.5.5/32) => 
  msg:
  - - - Routing entry for 5.5.5.5/32
      - '  Known via "isis IGP", distance 115, metric 30, labeled SR, type level-2'
      - '  Installed Apr 10 12:59:45.136 for 00:00:56'
      - '  Routing Descriptor Blocks'
      - '    23.0.0.3, from 5.5.5.5, via GigabitEthernet0/0/0/0, Protected'
      - '      Route metric is 30'
      - '    29.0.0.9, from 5.5.5.5, via GigabitEthernet0/0/0/5, Backup (Local-LFA)'
      - '      Route metric is 40'
      - '  No advertising protos.'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4806, labeled SR, internal 0x1000001 0x8310 (ptr 0xe7af748) [1], 0x600 (0xda611d0), 0xa28 (0x223df6d8)
      - ' Updated Apr 10 12:59:45.157 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xd8cb018) reference count 6, flags 0x500068, source rib (7), 1 backups'
      - '                [3 type 5 flags 0x8401 (0xec43088) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xda611d0, sh-ldi=0xec43088]'
      - '  gateway array update type-time 1 Apr 10 12:59:45.157'
      - ' LDI Update time Apr 10 12:59:45.157'
      - ' LW-LDI-TS Apr 10 12:59:45.157'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 10 dependencies, weight 0, class 0, protected [flags 0x400]'
      - '    path-idx 0 bkup-idx 1 NHID 0x0 [0xd677cc0 0x0]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - '   via 29.0.0.9/32, GigabitEthernet0/0/0/5, 21 dependencies, weight 0, class 0, backup (Local-LFA) [flags 0x300]'
      - '    path-idx 1 NHID 0x0 [0x130ea190 0x0]'
      - '    next hop 29.0.0.9/32'
      - '    remote adjacency'
      - '     local label 16005      labels imposed {16005}'
      - ''
      - '    Load distribution: 0 (refcount 3)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'
```

### SRLG Protection Preferred
<figure markdown>
  ![tiebreaker_srlg_prefer.png](assets/images/tiebreaker_srlg_prefer.png){ loading=lazy }
  <figcaption>TI-LFA SRLG Protection Path Preferred</figcaption>
</figure>

```ruby linenums="1" 
TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.10 RENDER AND DISPLAY THE TI-LFA SRLG PROTECTION PREFER CONFIGURATION] ***
ok: [P9] => 
  msg:
  - 'template: tilfa_tiebrkr_prefer_srlg.j2'
  - - router isis IGP
    - ' interface GigabitEthernet0/0/0/3'
    - '  address-family ipv4 unicast'
    - '   metric 100'
    - '  !'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.11 RENDER AND SAVE THE TI-LFA SRLG PROTECTION PREFER CONFIGURATION] ***
ok: [P9]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 1 secs PAUSE FOR CONVERGENCE] ******
ok: [P2]

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.12 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P9] => 
  output.dest: xrcfg/P9.tilfa_tiebrkr_prefer_srlg.xrcfg

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.13 RENDER AND APPLY THE TI-LFA SRLG PROTECTION PREFER CONFIGURATION] ***
changed: [P9]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 1 seconds PAUSE FOR CONVERGENCE] ***
ok: [P2]

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.14 RUN COMMANDS TO VERIFY TI-LFA SRLG PROTECTION PREFER] ***
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show route 5.5.5.5/32)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.15 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Apr 10 13:00:55.179 for 00:01:00'
      - '     via 23.0.0.3, GigabitEthernet0/0/0/0, Label: 16005, P3, SRGB Base: 16000, Weight: 0'
      - '       Backup path: TI-LFA (srlg), via 29.0.0.9, GigabitEthernet0/0/0/5 P9, SRGB Base: 16000, Weight: 0, Metric: 130'
      - '         P node: P9.00 [9.9.9.9], Label: ImpNull'
      - '         Q node: P3.00 [3.3.3.3], Label: 24003'
      - '         Prefix label: 16005'
      - '         Backup-src: PE5.00'
      - '       P: No, TM: 130, LC: No, NP: No, D: No, SRLG: Yes'
      - '     src PE5.00-00, 5.5.5.5, prefix-SID index 5, R:0 N:1 P:0 E:0 V:0 L:0, Alg:0'
ok: [P2] => (item=show route 5.5.5.5/32) => 
  msg:
  - - - Routing entry for 5.5.5.5/32
      - '  Known via "isis IGP", distance 115, metric 30, labeled SR, type level-2'
      - '  Installed Apr 10 13:00:55.180 for 00:01:01'
      - '  Routing Descriptor Blocks'
      - '    23.0.0.3, from 5.5.5.5, via GigabitEthernet0/0/0/0, Protected'
      - '      Route metric is 30'
      - '    29.0.0.9, from 5.5.5.5, via GigabitEthernet0/0/0/5, Backup (TI-LFA)'
      - '      Repair Node(s): 9.9.9.9, 3.3.3.3'
      - '      Route metric is 130'
      - '  No advertising protos.'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4837, labeled SR, internal 0x1000001 0x8310 (ptr 0xe7af748) [1], 0x600 (0xda60720), 0xa28 (0x223e0548)
      - ' Updated Apr 10 13:00:55.186 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xd8cd540) reference count 6, flags 0x500068, source rib (7), 1 backups'
      - '                [5 type 4 flags 0x8401 (0xec418e8) ext 0x0 (0x0)]'
      - '  LW-LDI[type=1, refc=1, ptr=0xda60720, sh-ldi=0xec418e8]'
      - '  gateway array update type-time 1 Apr 10 13:00:55.186'
      - ' LDI Update time Apr 10 13:00:55.186'
      - ' LW-LDI-TS Apr 10 13:00:55.186'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 14 dependencies, weight 0, class 0, protected [flags 0x400]'
      - '    path-idx 0 bkup-idx 1 NHID 0x0 [0xd677cc0 0xd677cc0]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - '   via 29.0.0.9/32, GigabitEthernet0/0/0/5, 22 dependencies, weight 0, class 0, backup (TI-LFA) [flags 0xb00]'
      - '    path-idx 1 NHID 0x0 [0x130ea190 0x0]'
      - '    next hop 29.0.0.9/32, Repair Node(s): 9.9.9.9, 3.3.3.3'
      - '    remote adjacency'
      - '     local label 16005      labels imposed {ImplNull 24003 16005}'
      - ''
      - '    Load distribution: 0 (refcount 5)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'
```

### Node Protection Preferred
<figure markdown>
  ![tiebreaker_srlg_prefer.png](assets/images/tiebreaker_srlg_prefer.png){ loading=lazy }
  <figcaption>TI-LFA NODE Protection Path Preferred</figcaption>
</figure>

```ruby linenums="1"
TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.16 RENDER AND DISPLAY TI-LFA NODE PROTECTION PREFER CONFIGURATION] ***
ok: [P2] => 
  msg:
  - 'template: tilfa_tiebrkr_prefer_node.j2'
  - - router isis IGP
    - ' address-family ipv4 unicast'
    - '  fast-reroute per-prefix tiebreaker srlg-disjoint index 255'
    - ' !'
    - '!'
    - ''
    - ''

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.17 RENDER AND SAVE TI-LFA NODE PROTECTION PREFERCONFIGURATION] ***
ok: [P2]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 1 secs PAUSE FOR CONVERGENCE] ******
ok: [P2]

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.18 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => 
  output.dest: xrcfg/P2.prep.xrcfg

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.19 RENDER AND APPLY TI-LFA NODE PROTECTION PREFER CONFIGURATION] ***
changed: [P2]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 1 seconds PAUSE FOR CONVERGENCE] ***
ok: [P2]

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.20 RUN COMMANDS TO VERIFY TI-LFA NODE PROTECTION PREFER] ***
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show route 5.5.5.5/32)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [lab_15_tilfa_tiebrkr_link_node_srlg : 15.21 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ***
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Apr 10 13:02:05.971 for 00:01:02'
      - '     via 23.0.0.3, GigabitEthernet0/0/0/0, Label: 16005, P3, SRGB Base: 16000, Weight: 0'
      - '       Backup path: TI-LFA (node), via 27.0.0.7, GigabitEthernet0/0/0/3 P7, SRGB Base: 16000, Weight: 0, Metric: 120'
      - '         P node: P7.00 [7.7.7.7], Label: ImpNull'
      - '         Q node: P4.00 [4.4.4.4], Label: 24023'
      - '         Prefix label: 16005'
      - '         Backup-src: PE5.00'
      - '       P: No, TM: 120, LC: No, NP: Yes, D: No, SRLG: No'
      - '     src PE5.00-00, 5.5.5.5, prefix-SID index 5, R:0 N:1 P:0 E:0 V:0 L:0, Alg:0'
ok: [P2] => (item=show route 5.5.5.5/32) => 
  msg:
  - - - Routing entry for 5.5.5.5/32
      - '  Known via "isis IGP", distance 115, metric 30, labeled SR, type level-2'
      - '  Installed Apr 10 13:02:05.971 for 00:01:02'
      - '  Routing Descriptor Blocks'
      - '    23.0.0.3, from 5.5.5.5, via GigabitEthernet0/0/0/0, Protected'
      - '      Route metric is 30'
      - '    27.0.0.7, from 5.5.5.5, via GigabitEthernet0/0/0/3, Backup (TI-LFA)'
      - '      Repair Node(s): 7.7.7.7, 4.4.4.4'
      - '      Route metric is 120'
      - '  No advertising protos.'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4854, labeled SR, internal 0x1000001 0x8310 (ptr 0xe7af748) [1], 0x600 (0xda60720), 0xa28 (0x223dfdb8)
      - ' Updated Apr 10 13:02:05.977 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xd8c8da8) reference count 6, flags 0x500068, source rib (7), 1 backups'
      - '                [5 type 4 flags 0x8401 (0xec43028) ext 0x0 (0x0)]'
      - '  LW-LDI[type=1, refc=1, ptr=0xda60720, sh-ldi=0xec43028]'
      - '  gateway array update type-time 1 Apr 10 13:02:05.977'
      - ' LDI Update time Apr 10 13:02:05.978'
      - ' LW-LDI-TS Apr 10 13:02:05.978'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 8 dependencies, weight 0, class 0, protected [flags 0x400]'
      - '    path-idx 0 bkup-idx 1 NHID 0x0 [0xd678170 0xd678170]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - '   via 27.0.0.7/32, GigabitEthernet0/0/0/3, 8 dependencies, weight 0, class 0, backup (TI-LFA) [flags 0xb00]'
      - '    path-idx 1 NHID 0x0 [0x130e9330 0x0]'
      - '    next hop 27.0.0.7/32, Repair Node(s): 7.7.7.7, 4.4.4.4'
      - '    remote adjacency'
      - '     local label 16005      labels imposed {ImplNull 24023 16005}'
      - ''
      - '    Load distribution: 0 (refcount 5)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'

PLAY RECAP *********************************************************************
P2                         : ok=149  changed=23   unreachable=0    failed=0    skipped=58   rescued=0    ignored=0   
P3                         : ok=38   changed=7    unreachable=0    failed=0    skipped=52   rescued=0    ignored=0   
P4                         : ok=39   changed=12   unreachable=0    failed=0    skipped=34   rescued=0    ignored=0   
P6                         : ok=52   changed=15   unreachable=0    failed=0    skipped=29   rescued=0    ignored=0   
P7                         : ok=58   changed=14   unreachable=0    failed=0    skipped=60   rescued=0    ignored=0   
P8                         : ok=46   changed=16   unreachable=0    failed=0    skipped=45   rescued=0    ignored=0   
P9                         : ok=12   changed=3    unreachable=0    failed=0    skipped=14   rescued=0    ignored=0   
PE1                        : ok=61   changed=10   unreachable=0    failed=0    skipped=24   rescued=0    ignored=0   
PE5                        : ok=26   changed=6    unreachable=0    failed=0    skipped=29   rescued=0    ignored=0   
```

