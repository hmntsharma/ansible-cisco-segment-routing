<figure markdown>
  ![base_topology.png](assets/images/base_topology.png){ loading=lazy }
  <figcaption>Base Topology</figcaption>
</figure>

## Revert to Base Topology

```java
PLAY [0. RESTORE BASE TOPOLOGY] ************************************************

TASK [0.0 RENDER AND DISPLAY THE BASE CONFIGURATION] ***************************
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
    - interface GigabitEthernet0/0/0/0
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/1
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/2
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/3
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/4
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/5
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/6
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/7
    - ' shutdown'
    - '!'
    - ''
    - ssh client source-interface MgmtEth0/RP0/CPU0/0
    - ssh server vrf default
    - ''
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
    - interface GigabitEthernet0/0/0/0
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/1
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/2
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/3
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/4
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/5
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/6
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/7
    - ' shutdown'
    - '!'
    - ''
    - ssh client source-interface MgmtEth0/RP0/CPU0/0
    - ssh server vrf default
    - ''
    - root
    - '!'
    - ''
    - ''
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
    - interface GigabitEthernet0/0/0/0
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/1
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/2
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/3
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/4
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/5
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/6
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/7
    - ' shutdown'
    - '!'
    - ''
    - ssh client source-interface MgmtEth0/RP0/CPU0/0
    - ssh server vrf default
    - ''
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
    - interface GigabitEthernet0/0/0/0
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/1
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/2
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/3
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/4
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/5
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/6
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/7
    - ' shutdown'
    - '!'
    - ''
    - ssh client source-interface MgmtEth0/RP0/CPU0/0
    - ssh server vrf default
    - ''
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
    - interface GigabitEthernet0/0/0/0
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/1
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/2
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/3
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/4
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/5
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/6
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/7
    - ' shutdown'
    - '!'
    - ''
    - ssh client source-interface MgmtEth0/RP0/CPU0/0
    - ssh server vrf default
    - ''
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
    - interface GigabitEthernet0/0/0/0
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/1
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/2
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/3
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/4
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/5
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/6
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/7
    - ' shutdown'
    - '!'
    - ''
    - ssh client source-interface MgmtEth0/RP0/CPU0/0
    - ssh server vrf default
    - ''
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
    - interface GigabitEthernet0/0/0/0
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/1
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/2
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/3
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/4
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/5
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/6
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/7
    - ' shutdown'
    - '!'
    - ''
    - ssh client source-interface MgmtEth0/RP0/CPU0/0
    - ssh server vrf default
    - ''
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
    - interface GigabitEthernet0/0/0/0
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/1
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/2
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/3
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/4
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/5
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/6
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/7
    - ' shutdown'
    - '!'
    - ''
    - ssh client source-interface MgmtEth0/RP0/CPU0/0
    - ssh server vrf default
    - ''
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
    - interface GigabitEthernet0/0/0/0
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/1
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/2
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/3
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/4
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/5
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/6
    - ' shutdown'
    - '!'
    - interface GigabitEthernet0/0/0/7
    - ' shutdown'
    - '!'
    - ''
    - ssh client source-interface MgmtEth0/RP0/CPU0/0
    - ssh server vrf default
    - ''
    - root
    - '!'
    - ''
    - ''

TASK [0.1 RENDER AND SAVE THE BASE CONFIGURATION] ******************************
changed: [P4]
changed: [P9]
changed: [P6]
changed: [PE1]
changed: [P3]
changed: [P8]
changed: [PE5]
changed: [P2]
changed: [P7]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [PE1]

TASK [0.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
ok: [PE1] => 
  output.dest: xrcfg/PE1.base.xrcfg
ok: [P3] => 
  output.dest: xrcfg/P3.base.xrcfg
ok: [P6] => 
  output.dest: xrcfg/P6.base.xrcfg
ok: [P4] => 
  output.dest: xrcfg/P4.base.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.base.xrcfg
ok: [P2] => 
  output.dest: xrcfg/P2.base.xrcfg
ok: [P8] => 
  output.dest: xrcfg/P8.base.xrcfg
ok: [P9] => 
  output.dest: xrcfg/P9.base.xrcfg
ok: [PE5] => 
  output.dest: xrcfg/PE5.base.xrcfg

TASK [0.3 RENDER AND APPLY THE BASE CONFIGURATION] *****************************
changed: [P9]
changed: [PE5]
changed: [P7]
changed: [P6]
changed: [P3]
changed: [PE1]
changed: [P4]
changed: [P8]
changed: [P2]
```

## Getting Started with IP, ISIS and LDP
<figure markdown>
  ![base_topology.png](assets/images/base_topology.png){ loading=lazy }
  <figcaption>Base Topology</figcaption>
</figure>

```java
PLAY [1. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - GETTING STARTED] ************

TASK [1.0 RENDER AND DISPLAY THE IP, ISIS & LDP CONFIGURATION] *****************
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

TASK [1.1 RENDER AND SAVE THE IP, ISIS & LDP CONFIGURATION] ********************
changed: [PE1]
changed: [P3]
changed: [P2]
changed: [PE5]
changed: [P6]
changed: [P8]
changed: [P4]
changed: [P7]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [PE1]

TASK [1.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
ok: [PE1] => 
  output.dest: xrcfg/PE1.ip_mpls.xrcfg
ok: [PE5] => 
  output.dest: xrcfg/PE5.ip_mpls.xrcfg
ok: [P2] => 
  output.dest: xrcfg/P2.ip_mpls.xrcfg
ok: [P6] => 
  output.dest: xrcfg/P6.ip_mpls.xrcfg
ok: [P4] => 
  output.dest: xrcfg/P4.ip_mpls.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.ip_mpls.xrcfg
ok: [P3] => 
  output.dest: xrcfg/P3.ip_mpls.xrcfg
ok: [P8] => 
  output.dest: xrcfg/P8.ip_mpls.xrcfg

TASK [1.3 RENDER AND APPLY THE IP, ISIS & LDP CONFIGURATION] *******************
changed: [PE1]
changed: [PE5]
changed: [P6]
changed: [P8]
changed: [P3]
changed: [P4]
changed: [P2]
changed: [P7]
Pausing for 120 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [2 mins PAUSE FOR CONVERGENCE] ********************************************
ok: [PE1]

TASK [1.4 RUN COMMANDS TO CAPTURE IP, ISIS & LDP STATE] ************************
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

TASK [1.5 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
ok: [PE1] => (item=show ipv4 interface brief) => 
  msg:
  - - - Interface                      IP-Address      Status          Protocol Vrf-Name
      - 'Loopback0                      1.1.1.1         Up              Up       default '
      - 'MgmtEth0/RP0/CPU0/0            192.168.18.1    Up              Up       default '
      - 'GigabitEthernet0/0/0/0         unassigned      Shutdown        Down     default '
      - 'GigabitEthernet0/0/0/1         unassigned      Shutdown        Down     default '
      - 'GigabitEthernet0/0/0/2         12.0.0.1        Up              Up       default '
      - 'GigabitEthernet0/0/0/3         unassigned      Shutdown        Down     default '
      - 'GigabitEthernet0/0/0/4         unassigned      Shutdown        Down     default '
      - 'GigabitEthernet0/0/0/5         unassigned      Shutdown        Down     default '
      - 'GigabitEthernet0/0/0/6         unassigned      Shutdown        Down     default '
      - GigabitEthernet0/0/0/7         unassigned      Shutdown        Down     default
ok: [PE1] => (item=ping 12.0.0.2) => 
  msg:
  - - - Type escape sequence to abort.
      - 'Sending 5, 100-byte ICMP Echos to 12.0.0.2, timeout is 2 seconds:'
      - '!!!!!'
      - Success rate is 100 percent (5/5), round-trip min/avg/max = 2/3/11 ms
ok: [PE1] => (item=show isis adjacency) => 
  msg:
  - - - 'IS-IS IGP Level-2 adjacencies:'
      - System Id      Interface                SNPA           State Hold Changed  NSF IPv4 IPv6
      - '                                                                               BFD  BFD '
      - P2             Gi0/0/0/2                *PtoP*         Up    23   00:02:06 Yes None None
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
      - i L2 2.2.2.2/32 [115/10] via 12.0.0.2, 00:01:56, GigabitEthernet0/0/0/2
      - i L2 3.3.3.3/32 [115/20] via 12.0.0.2, 00:01:42, GigabitEthernet0/0/0/2
      - i L2 4.4.4.4/32 [115/30] via 12.0.0.2, 00:01:42, GigabitEthernet0/0/0/2
      - i L2 5.5.5.5/32 [115/40] via 12.0.0.2, 00:01:42, GigabitEthernet0/0/0/2
      - i L2 6.6.6.6/32 [115/20] via 12.0.0.2, 00:01:42, GigabitEthernet0/0/0/2
      - i L2 7.7.7.7/32 [115/20] via 12.0.0.2, 00:01:42, GigabitEthernet0/0/0/2
      - i L2 8.8.8.8/32 [115/30] via 12.0.0.2, 00:01:42, GigabitEthernet0/0/0/2
      - C    12.0.0.0/24 is directly connected, 00:02:12, GigabitEthernet0/0/0/2
      - L    12.0.0.1/32 is directly connected, 00:02:12, GigabitEthernet0/0/0/2
      - i L2 23.0.0.0/24 [115/20] via 12.0.0.2, 00:01:56, GigabitEthernet0/0/0/2
      - i L2 26.0.0.0/24 [115/20] via 12.0.0.2, 00:01:56, GigabitEthernet0/0/0/2
      - i L2 27.0.0.0/24 [115/20] via 12.0.0.2, 00:01:56, GigabitEthernet0/0/0/2
      - i L2 29.0.0.0/24 [115/20] via 12.0.0.2, 00:01:56, GigabitEthernet0/0/0/2
      - i L2 34.0.0.0/24 [115/30] via 12.0.0.2, 00:01:42, GigabitEthernet0/0/0/2
      - i L2 37.0.0.0/24 [115/30] via 12.0.0.2, 00:01:42, GigabitEthernet0/0/0/2
      - i L2 39.0.0.0/24 [115/30] via 12.0.0.2, 00:01:42, GigabitEthernet0/0/0/2
      - i L2 45.0.0.0/24 [115/40] via 12.0.0.2, 00:01:42, GigabitEthernet0/0/0/2
      - i L2 47.0.0.0/24 [115/30] via 12.0.0.2, 00:01:42, GigabitEthernet0/0/0/2
      - i L2 48.0.0.0/24 [115/40] via 12.0.0.2, 00:01:42, GigabitEthernet0/0/0/2
      - i L2 67.0.0.0/24 [115/30] via 12.0.0.2, 00:01:42, GigabitEthernet0/0/0/2
      - i L2 78.0.0.0/24 [115/30] via 12.0.0.2, 00:01:42, GigabitEthernet0/0/0/2
      - L    127.0.0.0/8 [0/0] via 0.0.0.0, 00:02:13
      - C    192.168.18.0/24 is directly connected, 03:46:39, MgmtEth0/RP0/CPU0/0
      - L    192.168.18.1/32 is directly connected, 03:46:39, MgmtEth0/RP0/CPU0/0
ok: [PE1] => (item=show isis route 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [40/115] Label: None, medium priority'
      - '   Installed Mar 05 13:17:05.656 for 00:01:43'
      - '     via 12.0.0.2, GigabitEthernet0/0/0/2, P2, Weight: 0'
      - '     src PE5.00-00, 5.5.5.5'
ok: [PE1] => (item=show route 5.5.5.5/32 detail) => 
  msg:
  - - - Routing entry for 5.5.5.5/32
      - '  Known via "isis IGP", distance 115, metric 40, type level-2'
      - '  Installed Mar  5 13:17:05.657 for 00:01:43'
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
      - '  Download Priority 1, Download Version 2183'
      - '  No advertising protos.'
ok: [PE1] => (item=show mpls ldp neighbor brief) => 
  msg:
  - - - 'Peer               GR  NSR  Up Time     Discovery   Addresses     Labels    '
      - '                                        ipv4  ipv6  ipv4  ipv6  ipv4   ipv6 '
      - '-----------------  --  ---  ----------  ----------  ----------  ------------'
      - 2.2.2.2:0          N   N    00:01:31    1     0     7     0     22     0
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
      - 0     24022   LDP(A)                          InUse  Yes
ok: [PE1] => (item=show mpls forwarding) => 
  msg:
  - - - 'Local  Outgoing    Prefix             Outgoing     Next Hop        Bytes       '
      - 'Label  Label       or ID              Interface                    Switched    '
      - '------ ----------- ------------------ ------------ --------------- ------------'
      - '24000  Pop         2.2.2.2/32         Gi0/0/0/2    12.0.0.2        138         '
      - '24001  24001       3.3.3.3/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24002  24002       6.6.6.6/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24003  24003       7.7.7.7/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24004  24004       4.4.4.4/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24006  24006       5.5.5.5/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24007  Pop         29.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24008  24007       39.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24009  Pop         23.0.0.0/24        Gi0/0/0/2    12.0.0.2        847         '
      - '24010  Pop         26.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24011  24008       67.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24012  24009       37.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24013  Pop         27.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24014  24010       47.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24015  24011       34.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24016  24012       78.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24017  24013       48.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24018  24014       45.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - 24022  24030       8.8.8.8/32         Gi0/0/0/2    12.0.0.2        0
ok: [PE1] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 1470, internal 0x1000001 0x30 (ptr 0xe831de0) [1], 0x600 (0xe1a0578), 0xa28 (0xebfe9b8)
      - ' Updated Mar  5 13:17:18.750 '
      - ' remote adjacency to GigabitEthernet0/0/0/2'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 3'
      - '  gateway array (0xe007da8) reference count 42, flags 0x68, source lsd (5), 1 backups'
      - '                [15 type 5 flags 0x8401 (0xec41528) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xe1a0578, sh-ldi=0xec41528]'
      - '  gateway array update type-time 1 Mar  5 13:17:18.749'
      - ' LDI Update time Mar  5 13:17:18.749'
      - ' LW-LDI-TS Mar  5 13:17:18.750'
      - '   via 12.0.0.2/32, GigabitEthernet0/0/0/2, 4 dependencies, weight 0, class 0 [flags 0x0]'
      - '    path-idx 0 NHID 0x0 [0xf3a8790 0x0]'
      - '    next hop 12.0.0.2/32'
      - '    remote adjacency'
      - '     local label 24006      labels imposed {24006}'
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
      - '  0 12.0.0.1 MRU 1500 [Labels: 24006 Exp: 0]'
      - 'L 1 12.0.0.2 MRU 1500 [Labels: 24009 Exp: 0] 19 ms'
      - 'L 2 27.0.0.7 MRU 1500 [Labels: 24001 Exp: 0] 13 ms'
      - 'L 3 47.0.0.4 MRU 1500 [Labels: implicit-null Exp: 0] 15 ms'
      - '! 4 45.0.0.5 13 ms'
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
      - '  0 12.0.0.1 12.0.0.2 MRU 1500 [Labels: 24006 Exp: 0] multipaths 0'
      - 'L 1 12.0.0.2 23.0.0.3 MRU 1500 [Labels: 24010 Exp: 0] ret code 8 multipaths 2'
      - 'L 2 23.0.0.3 34.0.0.4 MRU 1500 [Labels: 24001 Exp: 0] ret code 8 multipaths 1'
      - 'L 3 34.0.0.4 45.0.0.5 MRU 1500 [Labels: implicit-null Exp: 0] ret code 8 multipaths 1'
      - '! 4 45.0.0.5, ret code 3 multipaths 0'
      - LL!
      - 'Path 1 found, '
      - ' output interface GigabitEthernet0/0/0/2 nexthop 12.0.0.2'
      - ' source 12.0.0.1 destination 127.0.0.0'
      - '  0 12.0.0.1 12.0.0.2 MRU 1500 [Labels: 24006 Exp: 0] multipaths 0'
      - 'L 1 12.0.0.2 27.0.0.7 MRU 1500 [Labels: 24009 Exp: 0] ret code 8 multipaths 2'
      - 'L 2 27.0.0.7 47.0.0.4 MRU 1500 [Labels: 24001 Exp: 0] ret code 8 multipaths 1'
      - 'L 3 47.0.0.4 45.0.0.5 MRU 1500 [Labels: implicit-null Exp: 0] ret code 8 multipaths 1'
      - '! 4 45.0.0.5, ret code 3 multipaths 0'
      - ''
      - Paths (found/broken/unexplored) (2/0/0)
      - ' Echo Request (sent/fail) (7/0)'
      - ' Echo Reply (received/timeout) (7/0)'
      - ' Total Time Elapsed 61 ms'

TASK [1.6 RUN COMMANDS TO TRACE LABELS FROM PE1 TO PE5] ************************
ok: [PE1]
ok: [P4]
ok: [P3]
ok: [P2]
ok: [P7]

PLAY [1.x CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - GETTING STARTED] ***********

TASK [DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] **********************
ok: [PE1] => 
  msg:
  - show mpls forwarding prefix 5.5.5.5/32
  - - 'Local  Outgoing    Prefix             Outgoing     Next Hop        Bytes       '
    - 'Label  Label       or ID              Interface                    Switched    '
    - '------ ----------- ------------------ ------------ --------------- ------------'
    - 24006  24006       5.5.5.5/32         Gi0/0/0/2    12.0.0.2        0

PLAY [1.x CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - GETTING STARTED] ***********
ok: [P2] => 
  msg:
  - show mpls forwarding prefix 5.5.5.5/32
  - - 'Local  Outgoing    Prefix             Outgoing     Next Hop        Bytes       '
    - 'Label  Label       or ID              Interface                    Switched    '
    - '------ ----------- ------------------ ------------ --------------- ------------'
    - '24006  24010       5.5.5.5/32         Gi0/0/0/0    23.0.0.3        384         '
    - '       24009       5.5.5.5/32         Gi0/0/0/3    27.0.0.7        744'

PLAY [1.x CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - GETTING STARTED] ***********
ok: [P3] => 
  msg:
  - show mpls forwarding prefix 5.5.5.5/32
  - - 'Local  Outgoing    Prefix             Outgoing     Next Hop        Bytes       '
    - 'Label  Label       or ID              Interface                    Switched    '
    - '------ ----------- ------------------ ------------ --------------- ------------'
    - 24010  24001       5.5.5.5/32         Gi0/0/0/2    34.0.0.4        256

PLAY [1.x CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - GETTING STARTED] ***********
ok: [P7] => 
  msg:
  - show mpls forwarding prefix 5.5.5.5/32
  - - 'Local  Outgoing    Prefix             Outgoing     Next Hop        Bytes       '
    - 'Label  Label       or ID              Interface                    Switched    '
    - '------ ----------- ------------------ ------------ --------------- ------------'
    - 24009  24001       5.5.5.5/32         Gi0/0/0/4    47.0.0.4        496

PLAY [1.x CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - GETTING STARTED] ***********
ok: [P4] => 
  msg:
  - show mpls forwarding prefix 5.5.5.5/32
  - - 'Local  Outgoing    Prefix             Outgoing     Next Hop        Bytes       '
    - 'Label  Label       or ID              Interface                    Switched    '
    - '------ ----------- ------------------ ------------ --------------- ------------'
    - 24001  Pop         5.5.5.5/32         Gi0/0/0/0    45.0.0.5        382
```

## Introducing Segment Routing (SR)

<figure markdown>
  ![sr_intro.png](assets/images/sr_intro.png){ loading=lazy }
  <figcaption>Segment Routing + LDP</figcaption>
</figure>

```java
PLAY [2. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - INTRODUCE SEGMENT ROUTING] ***

TASK [2.0 RENDER AND DISPLAY SEGMENT ROUTING CONFIGURATION] ********************
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

TASK [2.1 RENDER AND SAVE THE SEGMENT ROUTING CONFIGURATION] *******************
changed: [PE1]
changed: [P6]
changed: [P7]
changed: [P3]
changed: [P2]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [PE1]

TASK [2.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
ok: [PE1] => 
  output.dest: xrcfg/PE1.sr.xrcfg
ok: [P3] => 
  output.dest: xrcfg/P3.sr.xrcfg
ok: [P6] => 
  output.dest: xrcfg/P6.sr.xrcfg
ok: [P2] => 
  output.dest: xrcfg/P2.sr.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.sr.xrcfg

TASK [2.3 RENDER AND APPLY THE SEGMENT ROUTING CONFIGURATION] ******************
changed: [P3]
changed: [PE1]
changed: [P6]
changed: [P7]
changed: [P2]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 minutes PAUSE FOR CONVERGENCE] *****************************************
ok: [PE1]

TASK [2.4 RUN COMMANDS TO VERIFY SR AND LDP STATE] *****************************
ok: [PE1] => (item=show mpls label table detail)
ok: [PE1] => (item=show isis adjacency detail)
ok: [PE1] => (item=show isis database verbose PE1)
ok: [PE1] => (item=show isis segment-routing label table)
ok: [PE1] => (item=show route 7.7.7.7/32 detail)
ok: [PE1] => (item=show mpls forwarding)
ok: [PE1] => (item=show cef 7.7.7.7/32)
ok: [PE1] => (item=traceroute mpls ipv4 7.7.7.7/32)
ok: [PE1] => (item=traceroute sr-mpls 7.7.7.7/32)

TASK [2.5 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
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
      - '  (IPv4, vers:0, ''default'':4U, 3.3.3.3/32)'
      - 0     24002   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 6.6.6.6/32)'
      - 0     24003   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 7.7.7.7/32)'
      - 0     24004   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 4.4.4.4/32)'
      - 0     24006   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 5.5.5.5/32)'
      - 0     24007   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 29.0.0.0/24)'
      - 0     24008   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 39.0.0.0/24)'
      - 0     24009   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 23.0.0.0/24)'
      - 0     24010   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 26.0.0.0/24)'
      - 0     24011   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 67.0.0.0/24)'
      - 0     24012   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 37.0.0.0/24)'
      - 0     24013   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 27.0.0.0/24)'
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
      - 0     24022   LDP(A)                          InUse  Yes
      - '  (IPv4, vers:0, ''default'':4U, 8.8.8.8/32)'
ok: [PE1] => (item=show isis adjacency detail) => 
  msg:
  - - - 'IS-IS IGP Level-2 adjacencies:'
      - System Id      Interface                SNPA           State Hold Changed  NSF IPv4 IPv6
      - '                                                                               BFD  BFD '
      - P2             Gi0/0/0/2                *PtoP*         Up    20   00:03:40 Yes None None
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
      - PE1.00-00           * 0x00000008   0x1448        1143 /*            0/0/0
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
      - '  Installed Mar  5 13:19:27.527 for 00:00:56'
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
      - '  Download Priority 1, Download Version 2317'
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
      - '24001  24001       3.3.3.3/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24002  24002       6.6.6.6/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24003  24003       7.7.7.7/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24004  24004       4.4.4.4/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24006  24006       5.5.5.5/32         Gi0/0/0/2    12.0.0.2        0           '
      - '24007  Pop         29.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24008  24007       39.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24009  Pop         23.0.0.0/24        Gi0/0/0/2    12.0.0.2        847         '
      - '24010  Pop         26.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24011  24008       67.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24012  24009       37.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24013  Pop         27.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24014  24010       47.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24015  24011       34.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24016  24012       78.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24017  24013       48.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24018  24014       45.0.0.0/24        Gi0/0/0/2    12.0.0.2        0           '
      - '24020  Pop         SR Adj (idx 1)     Gi0/0/0/2    12.0.0.2        0           '
      - '24021  Pop         SR Adj (idx 3)     Gi0/0/0/2    12.0.0.2        0           '
      - 24022  24030       8.8.8.8/32         Gi0/0/0/2    12.0.0.2        0
ok: [PE1] => (item=show cef 7.7.7.7/32) => 
  msg:
  - - - 7.7.7.7/32, version 1544, labeled SR, internal 0x1000001 0x8130 (ptr 0xe832068) [1], 0x600 (0xe19f960), 0xa28 (0xebfe418)
      - ' Updated Mar  5 13:19:27.534 '
      - ' remote adjacency to GigabitEthernet0/0/0/2'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 3'
      - ' Extensions: context-label:16007'
      - '  gateway array (0xe007750) reference count 9, flags 0x68, source lsd (5), 1 backups'
      - '                [4 type 5 flags 0x8401 (0xec414c8) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xe19f960, sh-ldi=0xec414c8]'
      - '  gateway array update type-time 1 Mar  5 13:19:25.931'
      - ' LDI Update time Mar  5 13:19:25.931'
      - ' LW-LDI-TS Mar  5 13:19:27.534'
      - '   via 12.0.0.2/32, GigabitEthernet0/0/0/2, 14 dependencies, weight 0, class 0 [flags 0x0]'
      - '    path-idx 0 NHID 0x0 [0xf3a8790 0x0]'
      - '    next hop 12.0.0.2/32'
      - '    remote adjacency'
      - '     local label 24003      labels imposed {24003}'
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
      - '  0 12.0.0.1 MRU 1500 [Labels: 24003 Exp: 0]'
      - 'L 1 12.0.0.2 MRU 1500 [Labels: implicit-null Exp: 0] 11 ms'
      - '! 2 27.0.0.7 10 ms'
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
      - 'L 1 12.0.0.2 MRU 1500 [Labels: implicit-null Exp: 0] 9 ms'
      - '! 2 27.0.0.7 7 ms'

TASK [2.6 RENDER AND DISPLAY THE SR-PREFER CONFIGURATION] **********************
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

TASK [2.7 RENDER AND SAVE THE SR-PREFER CONFIGURATION] *************************
changed: [P2]
changed: [P6]
changed: [P7]
changed: [PE1]
changed: [P3]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [PE1]

TASK [2.8 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
ok: [PE1] => 
  output.dest: xrcfg/PE1.srprefer.xrcfg
ok: [P3] => 
  output.dest: xrcfg/P3.srprefer.xrcfg
ok: [P2] => 
  output.dest: xrcfg/P2.srprefer.xrcfg
ok: [P6] => 
  output.dest: xrcfg/P6.srprefer.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.srprefer.xrcfg

TASK [2.9 RENDER AND APPLY THE SR-PREFER CONFIGURATION] ************************
changed: [P3]
changed: [PE1]
changed: [P2]
changed: [P6]
changed: [P7]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 minutes PAUSE FOR CONVERGENCE] *****************************************
ok: [PE1]

TASK [2.10 RUN COMMANDS TO VERIFY SR-PREFER STATE] *****************************
ok: [PE1] => (item=traceroute mpls ipv4 7.7.7.7/32)
ok: [PE1] => (item=traceroute mpls ipv4 5.5.5.5/32)

TASK [2.11 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
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
      - 'L 1 12.0.0.2 MRU 1500 [Labels: implicit-null Exp: 0] 14 ms'
      - '! 2 27.0.0.7 13 ms'
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
      - '  0 12.0.0.1 MRU 1500 [Labels: 24006 Exp: 0]'
      - 'L 1 12.0.0.2 MRU 1500 [Labels: 24009 Exp: 0] 6 ms'
      - 'L 2 27.0.0.7 MRU 1500 [Labels: 24001 Exp: 0] 8 ms'
      - 'L 3 47.0.0.4 MRU 1500 [Labels: implicit-null Exp: 0] 13 ms'
      - '! 4 45.0.0.5 16 ms'

```
## SR - LDP Interworking

<figure markdown>
  ![sr_ldp_interworking.png](assets/images/sr_ldp_interworking.png){ loading=lazy }
  <figcaption>SR - LDP Interworking</figcaption>
</figure>

```java

PLAY [3. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - SR <-> LDP INTERWORKING] ****

TASK [3.0 RENDER AND DISPLAY THE LDP REMOVAL CONFIGURATION] ********************
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

TASK [3.1 RENDER AND SAVE THE LDP REMOVAL CONFIGURATION] ***********************
changed: [PE1]
changed: [P2]
changed: [P6]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [PE1]

TASK [3.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
ok: [P2] => 
  output.dest: xrcfg/P2.noldp.xrcfg
ok: [PE1] => 
  output.dest: xrcfg/PE1.noldp.xrcfg
ok: [P6] => 
  output.dest: xrcfg/P6.noldp.xrcfg

TASK [3.3 RENDER AND APPLY THE LDP REMOVAL CONFIGURATION] **********************
changed: [P2]
changed: [PE1]
changed: [P6]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 minutes PAUSE FOR CONVERGENCE] *****************************************
ok: [PE1]

TASK [3.4 TRACEOUTE MPLS 5.5.5.5/32] *******************************************
ok: [PE1]

TASK [3.5 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
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

TASK [3.6 STITCH LDP TO SR (works automatically) TRACEROUTE MPLS 1.1.1.1/32] ***
ok: [PE5] => (item=traceroute mpls ipv4 1.1.1.1/32)
ok: [PE5] => (item=traceroute mpls multipath ipv4 1.1.1.1/32 verbose)

TASK [3.7 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
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
      - '  0 45.0.0.5 MRU 1500 [Labels: 24013 Exp: 0]'
      - 'L 1 45.0.0.4 MRU 1500 [Labels: 24013 Exp: 0] 21 ms'
      - 'L 2 34.0.0.3 MRU 1500 [Labels: 16001 Exp: 0] 15 ms'
      - 'L 3 23.0.0.2 MRU 1500 [Labels: implicit-null Exp: 0] 13 ms'
      - '! 4 12.0.0.1 16 ms'
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
      - '  0 45.0.0.5 45.0.0.4 MRU 1500 [Labels: 24013 Exp: 0] multipaths 0'
      - 'L 1 45.0.0.4 47.0.0.7 MRU 1500 [Labels: 24012 Exp: 0] ret code 8 multipaths 2'
      - 'L 2 47.0.0.7 27.0.0.2 MRU 1500 [Labels: 16001 Exp: 0] ret code 8 multipaths 1'
      - 'L 3 27.0.0.2 12.0.0.1 MRU 1500 [Labels: implicit-null Exp: 0] ret code 8 multipaths 1'
      - '! 4 12.0.0.1, ret code 3 multipaths 0'
      - LL!
      - 'Path 1 found, '
      - ' output interface GigabitEthernet0/0/0/0 nexthop 45.0.0.4'
      - ' source 45.0.0.5 destination 127.0.0.1'
      - '  0 45.0.0.5 45.0.0.4 MRU 1500 [Labels: 24013 Exp: 0] multipaths 0'
      - 'L 1 45.0.0.4 34.0.0.3 MRU 1500 [Labels: 24013 Exp: 0] ret code 8 multipaths 2'
      - 'L 2 34.0.0.3 23.0.0.2 MRU 1500 [Labels: 16001 Exp: 0] ret code 8 multipaths 1'
      - 'L 3 23.0.0.2 12.0.0.1 MRU 1500 [Labels: implicit-null Exp: 0] ret code 8 multipaths 1'
      - '! 4 12.0.0.1, ret code 3 multipaths 0'
      - ''
      - Paths (found/broken/unexplored) (2/0/0)
      - ' Echo Request (sent/fail) (7/0)'
      - ' Echo Reply (received/timeout) (7/0)'
      - ' Total Time Elapsed 84 ms'

TASK [3.8 RUN COMMANDS TO VERIFY LDP TO SR LABEL STITCHING] ********************
ok: [P3] => (item=show cef 1.1.1.1/32)
ok: [P3] => (item=show mpls forwarding prefix 1.1.1.1/32)
ok: [P3] => (item=show mpls ldp forwarding 1.1.1.1/32)

TASK [3.9 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
ok: [P3] => (item=show cef 1.1.1.1/32) => 
  msg:
  - - - 1.1.1.1/32, version 3303, labeled SR, internal 0x1000001 0x8310 (ptr 0xe82ef98) [1], 0x600 (0xe19fa38), 0xa28 (0xebfebe8)
      - ' Updated Mar  5 13:20:40.204 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xe009e48) reference count 3, flags 0x68, source rib (7), 1 backups'
      - '                [2 type 5 flags 0x8401 (0xec42c08) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xe19fa38, sh-ldi=0xec42c08]'
      - '  gateway array update type-time 1 Mar  5 13:20:40.204'
      - ' LDI Update time Mar  5 13:20:40.204'
      - ' LW-LDI-TS Mar  5 13:20:40.204'
      - '   via 23.0.0.2/32, GigabitEthernet0/0/0/0, 12 dependencies, weight 0, class 0 [flags 0x0]'
      - '    path-idx 0 NHID 0x0 [0xf399c90 0x0]'
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
      - 1.1.1.1/32      24013   Unlabelled     Gi0/0/0/0    23.0.0.2

TASK [3.10 RUN AND PARSE WITH TTP(TEMPLATE TEXT PARSER) TO CAPTURE LOCAL LDP LABEL] ***
ok: [P3]

TASK [3.11 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [P3] => 
  msg:
  - show mpls ldp forwarding 1.1.1.1/32
  - - - in_label: '24013'
        out_label: Unlabelled

TASK [3.12 USE THE CAPTURED LOCAL/IN LABEL TO VERIFY STITCHED SR LABEL] ********
ok: [P3] => (item=show mpls forwarding labels 24013)
ok: [P3] => (item=show cef mpls local-label 24013 eOS detail)

TASK [3.13 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [P3] => (item=show mpls forwarding labels 24013) => 
  msg:
  - - - 'Local  Outgoing    Prefix             Outgoing     Next Hop        Bytes       '
      - 'Label  Label       or ID              Interface                    Switched    '
      - '------ ----------- ------------------ ------------ --------------- ------------'
      - 24013  16001       1.1.1.1/32         Gi0/0/0/0    23.0.0.2        496
ok: [P3] => (item=show cef mpls local-label 24013 eOS detail) => 
  msg:
  - - - Label/EOS 24013/1, Label-type Unknown, version 2241, labeled SR, internal 0x1000001 0x87f0 (ptr 0xe37b860) [1], 0x600 (0xe19fe70), 0xa28 (0xebfe4b8)
      - ' Updated Mar  5 13:21:54.559 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 21, traffic index 0, precedence n/a, priority 15'
      - ' Extensions: context-label:16001'
      - '  gateway array (0xe00abe0) reference count 2, flags 0x48, source lsd (5), 0 backups'
      - '                [2 type 6 flags 0x8401 (0xec42188) ext 0x0 (0x0)]'
      - '  LW-LDI[type=6, refc=2, ptr=0xe19fe70, sh-ldi=0xec42188]'
      - '  gateway array update type-time 1 Mar  5 13:19:26.967'
      - ' LDI Update time Mar  5 13:20:40.205'
      - ' LW-LDI-TS Mar  5 13:21:54.560'
      - '   via 23.0.0.2/32, GigabitEthernet0/0/0/0, 12 dependencies, weight 0, class 0 [flags 0x0]'
      - '    path-idx 0 NHID 0x0 [0xf399c90 0x0]'
      - '    next hop 23.0.0.2/32'
      - '    remote adjacency'
      - '     local label 24013      labels imposed {16001}'
      - ''
      - '    Load distribution: 0 (refcount 2)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'

TASK [3.14 RENDER AND DISPLAY SRMS [SEGMENT ROUTING MAPPING SERVER] CONFIGURATION] ***
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

TASK [3.15 RENDER AND SAVE SRMS [SEGMENT ROUTING MAPPING SERVER] CONFIGURATION] ***
changed: [P6]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [PE1]

TASK [3.16 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [P6] => 
  output.dest: xrcfg/P6.srms.xrcfg

TASK [3.17 STITCH SR TO LDP (RENDER AND CONFIGURE SRMS [SEGMENT ROUTING MAPPING SERVER])] ***
changed: [P6]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 minutes PAUSE FOR CONVERGENCE] *****************************************
ok: [PE1]

TASK [3.18 RUN COMMANDS TO VERIFY SR TO LDP LABEL STITCHING] *******************
ok: [P3]

TASK [3.19 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [P3] => 
  msg:
  - show cef 5.5.5.5/32
  - - - 5.5.5.5/32, version 3328, labeled SR, internal 0x1000001 0x87f0 (ptr 0xe82f258) [1], 0x600 (0xe19fd98), 0xa28 (0xebfe3c8)
      - ' Updated Mar  5 13:23:28.487 '
      - ' remote adjacency to GigabitEthernet0/0/0/2'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 15'
      - '  gateway array (0xe00aa10) reference count 3, flags 0x68, source rib (7), 2 backups'
      - '                [2 type 5 flags 0x8401 (0xec42248) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xe19fd98, sh-ldi=0xec42248]'
      - '  gateway array update type-time 1 Mar  5 13:23:28.486'
      - ' LDI Update time Mar  5 13:23:28.493'
      - ' LW-LDI-TS Mar  5 13:23:28.493'
      - '   via 34.0.0.4/32, GigabitEthernet0/0/0/2, 16 dependencies, weight 0, class 0 [flags 0x0]'
      - '    path-idx 0 NHID 0x0 [0xf399d30 0x0]'
      - '    next hop 34.0.0.4/32'
      - '    remote adjacency'
      - '     local label 16005      labels imposed {24001}'
      - ''
      - '    Load distribution: 0 (refcount 2)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/2    remote'

TASK [3.20 TRACEOUTE MPLS 5.5.5.5/32] ******************************************
ok: [PE1]

TASK [3.21 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
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
      - 'L 1 12.0.0.2 MRU 1500 [Labels: 16005 Exp: 0] 26 ms'
      - 'L 2 27.0.0.7 MRU 1500 [Labels: 24001 Exp: 0] 19 ms'
      - 'L 3 47.0.0.4 MRU 1500 [Labels: implicit-null Exp: 0] 15 ms'
      - '! 4 45.0.0.5 12 ms'

TASK [3.22 RENDER AND DISPLAY SR-PREFER CONFIGURATION] *************************
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

TASK [3.23 RENDER AND SAVE THE SR-PREFER CONFIGURATION] ************************
changed: [PE5]
changed: [P8]
changed: [P4]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [PE1]

TASK [3.24 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [PE5] => 
  output.dest: xrcfg/PE5.sronly_p1.xrcfg
ok: [P4] => 
  output.dest: xrcfg/P4.sronly_p1.xrcfg
ok: [P8] => 
  output.dest: xrcfg/P8.sronly_p1.xrcfg

TASK [3.25 CONFIGURE SR WITH SR-PREFER ON REMAINING ROUTERS] *******************
changed: [PE5]
changed: [P8]
changed: [P4]

TASK [3.26 RENDER AND DISPLAY REMOVE LDP CONFIGURATION] ************************
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

TASK [3.27 RENDER AND SAVE REMOVE LDP CONFIGURATION] ***************************
changed: [PE1]
changed: [P2]
changed: [P6]
changed: [P4]
changed: [P7]
changed: [P8]
changed: [P3]
changed: [PE5]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [PE1]

TASK [3.28 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [PE1] => 
  output.dest: xrcfg/PE1.noldp.xrcfg
ok: [P2] => 
  output.dest: xrcfg/P2.noldp.xrcfg
ok: [P3] => 
  output.dest: xrcfg/P3.noldp.xrcfg
ok: [PE5] => 
  output.dest: xrcfg/PE5.noldp.xrcfg
ok: [P8] => 
  output.dest: xrcfg/P8.noldp.xrcfg
ok: [P6] => 
  output.dest: xrcfg/P6.noldp.xrcfg
ok: [P4] => 
  output.dest: xrcfg/P4.noldp.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.noldp.xrcfg

TASK [3.29 REMOVE LDP FROM ALL ROUTERS] ****************************************
changed: [P4]
changed: [P3]
changed: [PE1]
changed: [P6]
changed: [P8]
changed: [PE5]
changed: [P2]
changed: [P7]

TASK [3.30 RENDER AND DISPLAY SRMS REMOVAL CONFIGURATION] **********************
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

TASK [3.31 RENDER AND SAVE SRMS REMOVAL CONFIGURATION] *************************
changed: [P6]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [PE1]

TASK [3.32 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [P6] => 
  output.dest: xrcfg/P6.nosrms.xrcfg

TASK [3.33 RENDER AND REMOVE SRMS CONFIGURATION FROM P6] ***********************
changed: [P6]
```

## TI-LFA (Topology Independent - LoopFree Alternate)

<figure markdown>
  ![sr_only.png](assets/images/sr_only.png){ loading=lazy }
  <figcaption>SR Only</figcaption>
</figure>

```java
PLAY [4. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - TOPOLOGY INDEPENDENT LOOPFREE ALTERNATE] ***

TASK [4.0 RENDER AND DISPLAY THE TI-LFA CONFIGURATION] *************************
ok: [PE1] => 
  msg:
  - 'template: tilfa.j2'
  - - router isis IGP interface GigabitEthernet0/0/0/2 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/2 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
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
ok: [PE5] => 
  msg:
  - 'template: tilfa.j2'
  - - router isis IGP interface GigabitEthernet0/0/0/0 address-family ipv4 unicast fast-reroute per-prefix
    - router isis IGP interface GigabitEthernet0/0/0/0 address-family ipv4 unicast fast-reroute per-prefix ti-lfa
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

TASK [4.1 RENDER AND SAVE THE TI-LFA CONFIGURATION] ****************************
changed: [P3]
changed: [PE1]
changed: [P7]
changed: [PE5]
changed: [P4]
changed: [P8]
changed: [P2]
changed: [P6]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [PE1]

TASK [4.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
ok: [PE1] => 
  output.dest: xrcfg/PE1.tilfa.xrcfg
ok: [P2] => 
  output.dest: xrcfg/P2.tilfa.xrcfg
ok: [P6] => 
  output.dest: xrcfg/P6.tilfa.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.tilfa.xrcfg
ok: [P8] => 
  output.dest: xrcfg/P8.tilfa.xrcfg
ok: [P4] => 
  output.dest: xrcfg/P4.tilfa.xrcfg
ok: [PE5] => 
  output.dest: xrcfg/PE5.tilfa.xrcfg
ok: [P3] => 
  output.dest: xrcfg/P3.tilfa.xrcfg

TASK [4.3 RENDER AND APPLY THE TI-LFA CONFIGURATION] ***************************
changed: [PE5]
changed: [PE1]
changed: [P6]
changed: [P3]
changed: [P4]
changed: [P2]
changed: [P7]
changed: [P8]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 minutes PAUSE FOR CONVERGENCE] *****************************************
ok: [PE1]

TASK [4.4 RUN COMMANDS TO VERIFY TI-LFA IS ENABLED] ****************************
ok: [P2] => (item=show isis interface GigabitEthernet 0/0/0/0)
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show route 5.5.5.5/32)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [4.5 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
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
      - '  Next P2P IIH in:          1 s'
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
      - '  Can send up to 8 back-to-back LSPs in the next 0 ms'
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Mar 05 13:25:10.107 for 00:01:02'
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
      - '  Installed Mar  5 13:25:10.107 for 00:01:03'
      - '  Routing Descriptor Blocks'
      - '    23.0.0.3, from 5.5.5.5, via GigabitEthernet0/0/0/0, Protected, ECMP-Backup (Local-LFA)'
      - '      Route metric is 30'
      - '    27.0.0.7, from 5.5.5.5, via GigabitEthernet0/0/0/3, Protected, ECMP-Backup (Local-LFA)'
      - '      Route metric is 30'
      - '  No advertising protos.'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4150, labeled SR, internal 0x1000001 0x8310 (ptr 0xe831808) [1], 0x600 (0xe1a0c80), 0xa28 (0xf6564c8)
      - ' Updated Mar  5 13:25:10.137 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xe00b238) reference count 6, flags 0x400068, source rib (7), 1 backups'
      - '                [3 type 5 flags 0x8401 (0xec245a8) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xe1a0c80, sh-ldi=0xec245a8]'
      - '  gateway array update type-time 1 Mar  5 13:25:10.137'
      - ' LDI Update time Mar  5 13:25:10.137'
      - ' LW-LDI-TS Mar  5 13:25:10.137'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 10 dependencies, weight 0, class 0, protected, ECMP-backup (Local-LFA) [flags 0x600]'
      - '    path-idx 0 bkup-idx 1 NHID 0x0 [0xddb6810 0x0]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - '   via 27.0.0.7/32, GigabitEthernet0/0/0/3, 8 dependencies, weight 0, class 0, protected, ECMP-backup (Local-LFA) [flags 0x600]'
      - '    path-idx 1 bkup-idx 0 NHID 0x0 [0xddb5280 0x0]'
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

```java

PLAY [5. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - ZERO SEGMENT TI-LFA] ********

TASK [5.0 RENDER AND DISPLAY THE ZERO SEGMENT TI-LFA CONFIGURATION] ************
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

TASK [5.1 RENDER AND SAVE THE ZERO SEGMENT TI-LFA CONFIGURATION] ***************
changed: [P7]
changed: [P2]
changed: [P6]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [P2]

TASK [5.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
ok: [P2] => 
  output.dest: xrcfg/P2.zs_tilfa.xrcfg
ok: [P6] => 
  output.dest: xrcfg/P6.zs_tilfa.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.zs_tilfa.xrcfg

TASK [5.3 RENDER AND APPLY THE ZERO SEGMENT TI-LFA CONFIGURATION] **************
changed: [P6]
changed: [P7]
changed: [P2]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 minutes PAUSE FOR CONVERGENCE] *****************************************
ok: [P2]

TASK [5.4 RUN COMMANDS TO VERIFY ZERO SEGMENT TI-LFA SCENARIO] *****************
ok: [P2] => (item=show isis route 5.5.5.5/32 detail)
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show route 5.5.5.5/32)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [5.5 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
ok: [P2] => (item=show isis route 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Mar 05 13:26:28.810 for 00:01:00'
      - '     via 23.0.0.3, GigabitEthernet0/0/0/0, Label: 16005, P3, SRGB Base: 16000, Weight: 0'
      - '     src PE5.00-00, 5.5.5.5, prefix-SID index 5, R:0 N:1 P:0 E:0 V:0 L:0, Alg:0'
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Mar 05 13:26:28.810 for 00:01:01'
      - '     via 23.0.0.3, GigabitEthernet0/0/0/0, Label: 16005, P3, SRGB Base: 16000, Weight: 0'
      - '       Backup path: LFA, via 27.0.0.7, GigabitEthernet0/0/0/3, Label: 16005, P7, SRGB Base: 16000, Weight: 0, Metric: 120'
      - '       P: No, TM: 120, LC: No, NP: Yes, D: Yes, SRLG: Yes'
      - '     src PE5.00-00, 5.5.5.5, prefix-SID index 5, R:0 N:1 P:0 E:0 V:0 L:0, Alg:0'
ok: [P2] => (item=show route 5.5.5.5/32) => 
  msg:
  - - - Routing entry for 5.5.5.5/32
      - '  Known via "isis IGP", distance 115, metric 30, labeled SR, type level-2'
      - '  Installed Mar  5 13:26:28.811 for 00:01:01'
      - '  Routing Descriptor Blocks'
      - '    23.0.0.3, from 5.5.5.5, via GigabitEthernet0/0/0/0, Protected'
      - '      Route metric is 30'
      - '    27.0.0.7, from 5.5.5.5, via GigabitEthernet0/0/0/3, Backup (Local-LFA)'
      - '      Route metric is 120'
      - '  No advertising protos.'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4231, labeled SR, internal 0x1000001 0x8310 (ptr 0xe831808) [1], 0x600 (0xe1a0c80), 0xa28 (0xf656a48)
      - ' Updated Mar  5 13:26:28.819 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xe00a3b8) reference count 9, flags 0x500068, source rib (7), 1 backups'
      - '                [4 type 5 flags 0x8401 (0xec237c8) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xe1a0c80, sh-ldi=0xec237c8]'
      - '  gateway array update type-time 1 Mar  5 13:26:28.816'
      - ' LDI Update time Mar  5 13:26:28.816'
      - ' LW-LDI-TS Mar  5 13:26:28.820'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 14 dependencies, weight 0, class 0, protected [flags 0x400]'
      - '    path-idx 0 bkup-idx 1 NHID 0x0 [0xddb6810 0x0]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - '   via 27.0.0.7/32, GigabitEthernet0/0/0/3, 12 dependencies, weight 0, class 0, backup (Local-LFA) [flags 0x300]'
      - '    path-idx 1 NHID 0x0 [0xf399970 0x0]'
      - '    next hop 27.0.0.7/32'
      - '    remote adjacency'
      - '     local label 16005      labels imposed {16005}'
      - ''
      - '    Load distribution: 0 (refcount 4)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'

TASK [5.6 RENDER AND DISPLAY THE ZERO SEGMENT TI-LFA REVERSAL CONFIGURATION] ***
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

TASK [5.7 RENDER AND SAVE THE ZERO SEGMENT TI-LFA REVARSAL CONFIGURATION] ******
changed: [P2]
changed: [P6]
changed: [P7]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [P2]

TASK [5.8 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
ok: [P6] => 
  output.dest: xrcfg/P6.zs_tilfa_revert.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.zs_tilfa_revert.xrcfg
ok: [P2] => 
  output.dest: xrcfg/P2.zs_tilfa_revert.xrcfg

TASK [5.9 RENDER AND REVERT ZERO SEGMENT TI-LFA SCENARIO CHANGES] **************
changed: [P6]
changed: [P7]
changed: [P2]
```

## Single Segment TI-LFA

<figure markdown>
  ![single_segment_tilfa.png](assets/images/single_segment_tilfa.png){ loading=lazy }
  <figcaption>Single Segment TI-LFA</figcaption>
</figure>

```java
PLAY [6. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - SINGLE SEGMENT TI-LFA] ******

TASK [6.0 RENDER AND DISPLAY THE SINGLE SEGMENT TI-LFA CONFIGURATION] **********
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

TASK [6.1 RENDER AND SAVE THE SINGLE SEGMENT TI-LFA CONFIGURATION] *************
changed: [P7]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [P2]

TASK [6.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
ok: [P7] => 
  output.dest: xrcfg/P7.ss_tilfa.xrcfg

TASK [6.3 RENDER AND APPLY THE SINGLE SEGMENT TI-LFA CONFIGURATION] ************
changed: [P7]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 minutes PAUSE FOR CONVERGENCE] *****************************************
ok: [P2]

TASK [6.4 RUN COMMANDS TO VERIFY SINGLE SEGMENT TI-LFA SCENARIO] ***************
ok: [P2] => (item=show isis route 5.5.5.5/32 detail)
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show route 5.5.5.5/32)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [6.5 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
ok: [P2] => (item=show isis route 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Mar 05 13:27:51.734 for 00:01:04'
      - '     via 23.0.0.3, GigabitEthernet0/0/0/0, Label: 16005, P3, SRGB Base: 16000, Weight: 0'
      - '     src PE5.00-00, 5.5.5.5, prefix-SID index 5, R:0 N:1 P:0 E:0 V:0 L:0, Alg:0'
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Mar 05 13:27:51.734 for 00:01:05'
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
      - '  Installed Mar  5 13:27:51.735 for 00:01:05'
      - '  Routing Descriptor Blocks'
      - '    23.0.0.3, from 5.5.5.5, via GigabitEthernet0/0/0/0, Protected'
      - '      Route metric is 30'
      - '    26.0.0.6, from 5.5.5.5, via GigabitEthernet0/0/0/1, Backup (TI-LFA)'
      - '      Repair Node(s): 8.8.8.8'
      - '      Route metric is 50'
      - '  No advertising protos.'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4333, labeled SR, internal 0x1000001 0x8310 (ptr 0xe831808) [1], 0x600 (0xe1a0c80), 0xa28 (0xf656520)
      - ' Updated Mar  5 13:27:51.742 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xe00bee8) reference count 6, flags 0x500068, source rib (7), 1 backups'
      - '                [3 type 5 flags 0x8401 (0xec236a8) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xe1a0c80, sh-ldi=0xec236a8]'
      - '  gateway array update type-time 1 Mar  5 13:27:51.742'
      - ' LDI Update time Mar  5 13:27:51.742'
      - ' LW-LDI-TS Mar  5 13:27:51.742'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 14 dependencies, weight 0, class 0, protected [flags 0x400]'
      - '    path-idx 0 bkup-idx 1 NHID 0x0 [0xddb6540 0x0]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - '   via 26.0.0.6/32, GigabitEthernet0/0/0/1, 11 dependencies, weight 0, class 0, backup (TI-LFA) [flags 0xb00]'
      - '    path-idx 1 NHID 0x0 [0xf399fb0 0x0]'
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

```java
PLAY [7. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - DOUBLE SEGMENT TI-LFA] ******

TASK [7.0 RENDER AND DISPLAY THE DOUBLE SEGMENT TI-LFA CONFIGURATION] **********
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

TASK [7.1 RENDER AND SAVE THE DOUBLE SEGMENT TI-LFA CONFIGURATION] *************
changed: [P4]
changed: [P8]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [P2]

TASK [7.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
ok: [P4] => 
  output.dest: xrcfg/P4.ds_tilfa.xrcfg
ok: [P8] => 
  output.dest: xrcfg/P8.ds_tilfa.xrcfg

TASK [7.3 RENDER AND APPLY THE DOUBLE SEGMENT TI-LFA CONFIGURATION] ************
changed: [P8]
changed: [P4]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 minutes PAUSE FOR CONVERGENCE] *****************************************
ok: [P2]

TASK [7.4 RUN COMMANDS TO VERIFY DOUBLE SEGMENT TI-LFA SCENARIO...(A)] *********
ok: [P8] => (item=traceroute sr-mpls 5.5.5.5/32)
ok: [P8] => (item=show isis adjacency Gi0/0/0/1 detail)

TASK [7.5 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
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
      - 'L 1 78.0.0.7 MRU 1500 [Labels: 16005 Exp: 0] 17 ms'
      - 'L 2 67.0.0.6 MRU 1500 [Labels: 16005 Exp: 0] 19 ms'
      - 'L 3 26.0.0.2 MRU 1500 [Labels: 16005 Exp: 0] 15 ms'
      - 'L 4 23.0.0.3 MRU 1500 [Labels: 16005 Exp: 0] 22 ms'
      - 'L 5 34.0.0.4 MRU 1500 [Labels: implicit-null Exp: 0] 15 ms'
      - '! 6 45.0.0.5 17 ms'
ok: [P8] => (item=show isis adjacency Gi0/0/0/1 detail) => 
  msg:
  - - - 'IS-IS IGP Level-2 adjacencies:'
      - System Id      Interface                SNPA           State Hold Changed  NSF IPv4 IPv6
      - '                                                                               BFD  BFD '
      - P4             Gi0/0/0/1                *PtoP*         Up    28   00:13:32 Yes None None
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

TASK [7.6 RUN COMMANDS TO VERIFY DOUBLE SEGMENT TI-LFA SCENARIO...(B)] *********
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [7.7 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Mar 05 13:29:11.309 for 00:01:03'
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
  - - - 5.5.5.5/32, version 4372, labeled SR, internal 0x1000001 0x8310 (ptr 0xe831808) [1], 0x600 (0xe1a0c80), 0xa28 (0xf6566d8)
      - ' Updated Mar  5 13:29:11.316 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xe008970) reference count 6, flags 0x500068, source rib (7), 1 backups'
      - '                [3 type 5 flags 0x8401 (0xec23d68) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xe1a0c80, sh-ldi=0xec23d68]'
      - '  gateway array update type-time 1 Mar  5 13:29:11.316'
      - ' LDI Update time Mar  5 13:29:11.316'
      - ' LW-LDI-TS Mar  5 13:29:11.316'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 10 dependencies, weight 0, class 0, protected [flags 0x400]'
      - '    path-idx 0 bkup-idx 1 NHID 0x0 [0xddb6540 0x0]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - '   via 26.0.0.6/32, GigabitEthernet0/0/0/1, 11 dependencies, weight 0, class 0, backup (TI-LFA) [flags 0xb00]'
      - '    path-idx 1 NHID 0x0 [0xf399fb0 0x0]'
      - '    next hop 26.0.0.6/32, Repair Node(s): 8.8.8.8, 4.4.4.4'
      - '    remote adjacency'
      - '     local label 16005      labels imposed {16008 24021 16005}'
      - ''
      - '    Load distribution: 0 (refcount 3)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'

TASK [7.8 RENDER AND DISPLAY DOUBLE SEGMENT TI-LFA REVERSAL CONFIGURATION] *****
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

TASK [7.9 RENDER AND SAVE THE DOUBLE SEGMENT TI-LFA REVERSAL CONFIGURATION] ****
changed: [P8]
changed: [P4]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [P2]

TASK [7.10 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [P8] => 
  output.dest: xrcfg/P8.ds_tilfa_revert.xrcfg
ok: [P4] => 
  output.dest: xrcfg/P4.ds_tilfa_revert.xrcfg

TASK [7.11 RENDER AND APPLY THE DOUBLE SEGMENT TI-LFA REVERSAL CONFIGURATION] ***
changed: [P4]
changed: [P8]
```

## Microloop Avoidance

<figure markdown>
  ![microloop_avoidance.png](assets/images/microloop_avoidance.png){ loading=lazy }
  <figcaption>Microloop Avoidance</figcaption>
</figure>

```java
PLAY [8. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - MICROLOOP AVOIDANCE] ********

TASK [8.0 RENDER AND DISPLAY THE PREPARATION CONFIGURATION] ********************
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

TASK [8.1 RENDER AND SAVE THE PREPARATION CONFIGURATION] ***********************
changed: [P2]
changed: [P8]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [P2]

TASK [8.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
ok: [P2] => 
  output.dest: xrcfg/P2.mlaprep.xrcfg
ok: [P8] => 
  output.dest: xrcfg/P8.mlaprep.xrcfg

TASK [8.3 RENDER AND APPLY THE PREPARATION CONFIGURATION] **********************
changed: [P2]
changed: [P8]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 minutes PAUSE FOR CONVERGENCE] *****************************************
ok: [P2]

TASK [8.4 RUN COMMANDS TO CHECK PATH to PE5 IS VIA P3] *************************
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show route 5.5.5.5/32)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [8.5 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [120/115] Label: 16005, medium priority'
      - '   Installed Mar 05 13:30:33.226 for 00:01:01'
      - '     via 23.0.0.3, GigabitEthernet0/0/0/0, Label: 16005, P3, SRGB Base: 16000, Weight: 0'
      - '       No FRR backup'
      - '     src PE5.00-00, 5.5.5.5, prefix-SID index 5, R:0 N:1 P:0 E:0 V:0 L:0, Alg:0'
ok: [P2] => (item=show route 5.5.5.5/32) => 
  msg:
  - - - Routing entry for 5.5.5.5/32
      - '  Known via "isis IGP", distance 115, metric 120, labeled SR, type level-2'
      - '  Installed Mar  5 13:30:33.226 for 00:01:02'
      - '  Routing Descriptor Blocks'
      - '    23.0.0.3, from 5.5.5.5, via GigabitEthernet0/0/0/0'
      - '      Route metric is 120'
      - '  No advertising protos.'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4433, labeled SR, internal 0x1000001 0x8310 (ptr 0xe831138) [1], 0x600 (0xe1a0020), 0xa28 (0xebe0f58)
      - ' Updated Mar  5 13:30:33.231 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xe00aaf8) reference count 6, flags 0x68, source rib (7), 1 backups'
      - '                [3 type 5 flags 0x8401 (0xec24e48) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xe1a0020, sh-ldi=0xec24e48]'
      - '  gateway array update type-time 1 Mar  5 13:30:33.230'
      - ' LDI Update time Mar  5 13:30:33.230'
      - ' LW-LDI-TS Mar  5 13:30:33.231'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 8 dependencies, weight 0, class 0 [flags 0x0]'
      - '    path-idx 0 NHID 0x0 [0xf399f10 0x0]'
      - '    next hop 23.0.0.3/32'
      - '    remote adjacency'
      - '     local label 16005      labels imposed {16005}'
      - ''
      - '    Load distribution: 0 (refcount 3)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'

TASK [8.6 RENDER AND DISPLAY THE MICROLOOP AVOIDANCE CONFIGURATION] ************
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

TASK [8.7 RENDER AND SAVE THE MICROLOOP AVOIDANCE CONFIGURATION] ***************
changed: [P2]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [P2]

TASK [8.8 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
ok: [P2] => 
  output.dest: xrcfg/P2.mla.xrcfg

TASK [8.9 RENDER AND APPLY THE MICROLOOP AVOIDANCE CONFIGURATION] **************
changed: [P2]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 minutes PAUSE FOR CONVERGENCE] *****************************************
ok: [P2]

TASK [8.10 RENDER AND DISPLAY THE MICROLOOP TRIGGER CONFIGURATION] *************
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

TASK [8.11 RENDER AND SAVE THE MICROLOOP TRIGGER CONFIGURATION] ****************
changed: [P8]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [P2]

TASK [8.12 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [P8] => 
  output.dest: xrcfg/P8.mlatrgr.xrcfg

TASK [8.13 RENDER AND APPLY THE MICROLOOP TRIGGER CONFIGURATION] ***************
changed: [P8]
Pausing for 15 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [15 seconds PAUSE FOR CONVERGENCE] ****************************************
ok: [P2]

TASK [8.14 RUN COMMANDS TO VERIFY MICROLOOP AVOIDANCE] *************************
ok: [P2] => (item=show isis protocol | utility egrep -A2 Micro)
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show route 5.5.5.5/32)
ok: [P2] => (item=show route 5.5.5.5/32 detail)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [8.15 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [P2] => (item=show isis protocol | utility egrep -A2 Micro) => 
  msg:
  - - - 'Microloop avoidance: Enabled'
      - '          Configuration: Type: Segment routing, RIB update delay: 60000 msec'
      - '          State: Active, Duration: 15222 ms, Event Link up, Near: P8.00 Far: P4.00'
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [50/115] Label: 16005, medium priority'
      - '   Installed Mar 05 13:32:57.267 for 00:00:16'
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
      - '  Installed Mar  5 13:32:57.267 for 00:00:16'
      - '  Routing Descriptor Blocks'
      - '    26.0.0.6, from 5.5.5.5, via GigabitEthernet0/0/0/1'
      - '      Route metric is 50'
      - '  No advertising protos.'
ok: [P2] => (item=show route 5.5.5.5/32 detail) => 
  msg:
  - - - Routing entry for 5.5.5.5/32
      - '  Known via "isis IGP", distance 115, metric 50, labeled SR, type level-2'
      - '  Installed Mar  5 13:32:57.267 for 00:00:17'
      - '  Routing Descriptor Blocks'
      - '    26.0.0.6, from 5.5.5.5, via GigabitEthernet0/0/0/1'
      - '      Route metric is 50'
      - '      Labels: 0x3e88 0x5dd5 0x3e85 (16008 24021 16005)'
      - '      Tunnel ID: None'
      - '      Binding Label: None'
      - '      Extended communities count: 0'
      - "      Path id:1\t      Path ref count:0"
      - '      NHID:0xc(Ref:16)'
      - '  Route version is 0x34 (52)'
      - '  Local Label: 0x3e85 (16005)'
      - '  IP Precedence: Not Set'
      - '  QoS Group ID: Not Set'
      - '  Flow-tag: Not Set'
      - '  Fwd-class: Not Set'
      - '  Route Priority: RIB_PRIORITY_NON_RECURSIVE_MEDIUM (7) SVD Type RIB_SVD_TYPE_LOCAL'
      - '  Download Priority 1, Download Version 4449'
      - '  No advertising protos.'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4449, labeled SR, internal 0x1000001 0x8310 (ptr 0xe831138) [1], 0x600 (0xe1a0020), 0xa28 (0xebe04b8)
      - ' Updated Mar  5 13:32:57.279 '
      - ' remote adjacency to GigabitEthernet0/0/0/1'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xe00c0b8) reference count 15, flags 0x68, source rib (7), 1 backups'
      - '                [6 type 5 flags 0x8401 (0xec233a8) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xe1a0020, sh-ldi=0xec233a8]'
      - '  gateway array update type-time 1 Mar  5 13:30:31.322'
      - ' LDI Update time Mar  5 13:30:31.322'
      - ' LW-LDI-TS Mar  5 13:32:57.279'
      - '   via 26.0.0.6/32, GigabitEthernet0/0/0/1, 8 dependencies, weight 0, class 0 [flags 0x0]'
      - '    path-idx 0 NHID 0x0 [0xf399fb0 0x0]'
      - '    next hop 26.0.0.6/32'
      - '    remote adjacency'
      - '     local label 16005      labels imposed {16008 24021 16005}'
      - ''
      - '    Load distribution: 0 (refcount 6)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/1    remote'

TASK [8.16 RENDER AND DISPLAY THE RESTORATION CONFIGURATION] *******************
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

TASK [8.17 RENDER AND SAVE THE RESTORATION CONFIGURATION] **********************
changed: [P2]
changed: [P7]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [P2]

TASK [8.18 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [P2] => 
  output.dest: xrcfg/P2.mlarestore.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.mlarestore.xrcfg

TASK [8.19 RENDER AND APPLY THE RESTORATION CONFIGURATION] *********************
changed: [P2]
changed: [P7]
```

## MPLS Traffic-Engineering

```java
PLAY [9. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - MPLS TRAFFIC-ENGINEERING] ***

TASK [9.0 RENDER AND DISPLAY THE MPLS TRAFFIC-ENGINEERING CONFIGURATION] *******
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
ok: [P2] => 
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
ok: [P4] => 
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

TASK [9.1 RENDER AND SAVE THE MPLS TRAFFIC-ENGINEERING CONFIGURATION] **********
changed: [P2]
changed: [P3]
changed: [P4]
changed: [P7]
changed: [P8]
changed: [P6]
changed: [PE1]
changed: [PE5]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [PE1]

TASK [9.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ******************
ok: [P2] => 
  output.dest: xrcfg/P2.mpls_traffic_eng.xrcfg
ok: [PE1] => 
  output.dest: xrcfg/PE1.mpls_traffic_eng.xrcfg
ok: [P4] => 
  output.dest: xrcfg/P4.mpls_traffic_eng.xrcfg
ok: [P6] => 
  output.dest: xrcfg/P6.mpls_traffic_eng.xrcfg
ok: [P8] => 
  output.dest: xrcfg/P8.mpls_traffic_eng.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.mpls_traffic_eng.xrcfg
ok: [P3] => 
  output.dest: xrcfg/P3.mpls_traffic_eng.xrcfg
ok: [PE5] => 
  output.dest: xrcfg/PE5.mpls_traffic_eng.xrcfg

TASK [9.3 RENDER AND APPLY THE MPLS TRAFFIC-ENGINEERING CONFIGURATION] *********
changed: [PE1]
changed: [P6]
changed: [P8]
changed: [P4]
changed: [P2]
changed: [P7]
changed: [PE5]
changed: [P3]
```


## TI-LFA Node + SRLG Preparation

<figure markdown>
  ![tilfa_prep.png](assets/images/tilfa_prep.png){ loading=lazy }
  <figcaption>TI-LFA Node and SRLG Protection Topology</figcaption>
</figure>

```java
PLAY [10. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - TI-LFA NODE + SRLG PROTECTION PREPARATION] ***

TASK [10.0 RENDER AND DISPLAY THE TI-LFA NODE + SRLG PROTECTION PREPARATION CONFIGURATION] ***
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

TASK [10.1 RENDER AND SAVE THE TI-LFA NODE + SRLG PROTECTION PREPARATION CONFIGURATION] ***
changed: [P4]
changed: [P6]
changed: [P7]
changed: [P8]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [P4]

TASK [10.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [P4] => 
  output.dest: xrcfg/P4.tilfa_ns_prep.xrcfg
ok: [P6] => 
  output.dest: xrcfg/P6.tilfa_ns_prep.xrcfg
ok: [P8] => 
  output.dest: xrcfg/P8.tilfa_ns_prep.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.tilfa_ns_prep.xrcfg

TASK [10.3 RENDER AND APPLY THE TI-LFA NODE + SRLG PROTECTION PREPARATION CONFIGURATION] ***
changed: [P4]
changed: [P6]
changed: [P8]
changed: [P7]
```

## TI-LFA Node Protection

<figure markdown>
  ![node_protection.png](assets/images/node_protection.png){ loading=lazy }
  <figcaption>TI-LFA Node Protection</figcaption>
</figure>

```java
PLAY [11. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - TI-LFA NODE PROTECTION] ****

TASK [11.0 RENDER AND DISPLAY THE TI-LFA NODE PROTECTION CONFIGURATION] ********
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

TASK [11.1 RENDER AND SAVE THE TI-LFA NODE PROTECTION CONFIGURATION] ***********
changed: [P2]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [P2]

TASK [11.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [P2] => 
  output.dest: xrcfg/P2.tilfa_ns_node.xrcfg

TASK [11.3 RENDER AND APPLY THE TI-LFA NODE PROTECTION CONFIGURATION] **********
changed: [P2]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 seconds PAUSE FOR CONVERGENCE] *****************************************
ok: [P2]

TASK [11.4 RUN COMMANDS TO VERIFY TI-LFA NODE PROTECTION] **********************
ok: [P2] => (item=sh isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [11.5 DISPLAY OUTPUT FOR THE COMMANDS RUN IN THE PREVIOUS TASK] ***********
ok: [P2] => (item=sh isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Mar 05 13:34:17.063 for 00:00:44'
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
  - - - 5.5.5.5/32, version 4640, labeled SR, internal 0x1000001 0x8310 (ptr 0xe831138) [1], 0x600 (0xe19fde0), 0xa28 (0xf4b4288)
      - ' Updated Mar  5 13:34:17.067 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xe00c8e0) reference count 6, flags 0x500068, source rib (7), 1 backups'
      - '                [5 type 4 flags 0x8401 (0xec24d88) ext 0x0 (0x0)]'
      - '  LW-LDI[type=1, refc=1, ptr=0xe19fde0, sh-ldi=0xec24d88]'
      - '  gateway array update type-time 1 Mar  5 13:34:17.067'
      - ' LDI Update time Mar  5 13:34:17.069'
      - ' LW-LDI-TS Mar  5 13:34:17.069'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 14 dependencies, weight 0, class 0, protected [flags 0x400]'
      - '    path-idx 0 bkup-idx 1 NHID 0x0 [0xddb6f90 0xddb6f90]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - '   via 27.0.0.7/32, GigabitEthernet0/0/0/3, 16 dependencies, weight 0, class 0, backup (TI-LFA) [flags 0xb00]'
      - '    path-idx 1 NHID 0x0 [0xf399970 0x0]'
      - '    next hop 27.0.0.7/32, Repair Node(s): 7.7.7.7, 4.4.4.4'
      - '    remote adjacency'
      - '     local label 16005      labels imposed {ImplNull 24023 16005}'
      - ''
      - '    Load distribution: 0 (refcount 5)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'

TASK [11.6 RENDER AND DISPLAY THE TI-LFA NODE PROTECTION REVERSAL CONFIGURATION] ***
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

TASK [11.7 RENDER AND SAVE THE TI-LFA NODE PROTECTION REVERSAL CONFIGURATION] ***
changed: [P2]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [P2]

TASK [11.8 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [P2] => 
  output.dest: xrcfg/P2.tilfa_ns_node_revert.xrcfg

TASK [11.9 RENDER AND APPLY THE TI-LFA NODE PROTECTION REVERSAL CONFIGURATION] ***
changed: [P2]
```

## TI-LFA Local SRLG Disjoint Protection

<figure markdown>
  ![srlg.png](assets/images/srlg.png){ loading=lazy }
  <figcaption>TI-LFA Local SRLG Disjoint Protection</figcaption>
</figure>

```java
PLAY [12. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - TI-LFA LOCAL SRLG-DISJOINT PROTECTION] ***

TASK [12.0 RENDER AND DISPLAY THE TI-LFA LOCAL SRLG-DISJOINT PROTECTION CONFIGURATION] ***
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

TASK [12.1 RENDER AND SAVE THE TI-LFA LOCAL SRLG-DISJOINT PROTECTION CONFIGURATION] ***
changed: [P2]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [P2]

TASK [12.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [P2] => 
  output.dest: xrcfg/P2.tilfa_ns_local_srlg.xrcfg

TASK [12.3 RENDER AND APPLY THE TI-LFA LOCAL SRLG-DISJOINT PROTECTION CONFIGURATION] ***
changed: [P2]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 seconds PAUSE FOR CONVERGENCE] *****************************************
ok: [P2]

TASK [12.4 RUN COMMANDS TO VERIFY TI-LFA LOCAL SRLG-DISJOINT PROTECTION] *******
ok: [P2] => (item=sh isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [12.5 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [P2] => (item=sh isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Mar 05 13:35:19.631 for 00:01:02'
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
  - - - 5.5.5.5/32, version 4674, labeled SR, internal 0x1000001 0x8310 (ptr 0xe831138) [1], 0x600 (0xe1a14f0), 0xa28 (0xf4b41d8)
      - ' Updated Mar  5 13:35:19.641 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xe00c7f8) reference count 6, flags 0x500068, source rib (7), 1 backups'
      - '                [5 type 4 flags 0x8401 (0xec25808) ext 0x0 (0x0)]'
      - '  LW-LDI[type=1, refc=1, ptr=0xe1a14f0, sh-ldi=0xec25808]'
      - '  gateway array update type-time 1 Mar  5 13:35:19.641'
      - ' LDI Update time Mar  5 13:35:19.643'
      - ' LW-LDI-TS Mar  5 13:35:19.643'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 14 dependencies, weight 0, class 0, protected [flags 0x400]'
      - '    path-idx 0 bkup-idx 1 NHID 0x0 [0xddb6db0 0xddb6db0]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - '   via 26.0.0.6/32, GigabitEthernet0/0/0/1, 18 dependencies, weight 0, class 0, backup (TI-LFA) [flags 0xb00]'
      - '    path-idx 1 NHID 0x0 [0xf399fb0 0x0]'
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

```java
PLAY [13. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - TI-LFA GLOBAL WEIGHTED SRLG PROTECTION] ***

TASK [13.0 RENDER AND DISPLAY THE TI-LFA GLOBAL WEIGHTED SRLG PROTECTION CONFIGURATION] ***
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

TASK [13.1 RENDER AND SAVE THE TI-LFA GLOBAL WEIGHTED SRLG PROTECTION CONFIGURATION] ***
changed: [P2]
changed: [P7]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [P2]

TASK [13.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [P2] => 
  output.dest: xrcfg/P2.tilfa_ns_gw_srlg.xrcfg
ok: [P7] => 
  output.dest: xrcfg/P7.tilfa_ns_gw_srlg.xrcfg

TASK [13.3 RENDER AND APPLY THE TI-LFA GLOBAL WEIGHTED SRLG PROTECTION CONFIGURATION] ***
changed: [P2]
changed: [P7]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 seconds PAUSE FOR CONVERGENCE] *****************************************
ok: [P2]

TASK [13.4 RUN COMMANDS TO VERIFY TI-LFA GLOBAL WEIGHTED SRLG PROTECTION] ******
ok: [P2] => (item=show isis database verbose internal P7 | utility egrep -A10 SRLG)
ok: [P2] => (item=sh isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [13.5 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
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
      - '   Installed Mar 05 13:36:36.156 for 00:01:00'
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
  - - - 5.5.5.5/32, version 4686, labeled SR, internal 0x1000001 0x8310 (ptr 0xe831138) [1], 0x600 (0xe1a0020), 0xa28 (0xf4b4650)
      - ' Updated Mar  5 13:36:36.160 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xe008a58) reference count 3, flags 0x500068, source rib (7), 1 backups'
      - '                [2 type 5 flags 0x8401 (0xec24308) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xe1a0020, sh-ldi=0xec24308]'
      - '  gateway array update type-time 1 Mar  5 13:36:36.160'
      - ' LDI Update time Mar  5 13:36:36.160'
      - ' LW-LDI-TS Mar  5 13:36:36.160'
      - '   via 0.0.0.0/32, tunnel-te32769, 9 dependencies, weight 0, class 0, backup (Local-LFA) [flags 0x300]'
      - '    path-idx 0 NHID 0x0 [0xf399a10 0x0]'
      - '    next hop 0.0.0.0/32'
      - '    local adjacency'
      - '     local label 16005      labels imposed {16005}'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 8 dependencies, weight 0, class 0, protected [flags 0x400]'
      - '    path-idx 1 bkup-idx 0 NHID 0x0 [0xddb7260 0x0]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - ''
      - '    Load distribution: 0 (refcount 2)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'

TASK [13.6 RENDER AND DISPLAY THE TI-LFA GLOBAL WEIGHTED SRLG REVERSAL CONFIGURATION] ***
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

TASK [13.7 RENDER AND SAVE THE TI-LFA GLOBAL WEIGHTED SRLG REVERSAL CONFIGURATION] ***
ok: [P2]
ok: [P7]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [P2]

TASK [13.8 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [P7] => 
  output.dest: xrcfg/P7.tilfa_ns_gw_srlg_revert.xrcfg
ok: [P2] => 
  output.dest: xrcfg/P2.tilfa_ns_gw_srlg_revert.xrcfg

TASK [13.9 RENDER AND APPLY THE TI-LFA GLOBAL WEIGHTED SRLG REVERSAL CONFIGURATION] ***
changed: [P7]
changed: [P2]
```

## TI-LFA Node + SRLG Protection

<figure markdown>
  ![node_plus_srlg.png](assets/images/node_plus_srlg.png){ loading=lazy }
  <figcaption>TI-LFA Node + SRLG Protection</figcaption>
</figure>

```java
PLAY [14. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - TI-LFA NODE + SRLG PROTECTION] ***

TASK [14.0 RENDER AND DISPLAY THE TI-LFA NODE + SRLG PROTECTION CONFIGURATION] ***
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

TASK [14.1 RENDER AND SAVE THE TI-LFA NODE + SRLG PROTECTION CONFIGURATION] ****
ok: [P2]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [P2]

TASK [14.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [P2] => 
  output.dest: xrcfg/P2.tilfa_ns_node_plus_srlg.xrcfg

TASK [14.3 RENDER AND APPLY THE TI-LFA NODE + SRLG PROTECTION CONFIGURATION] ***
changed: [P2]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 seconds PAUSE FOR CONVERGENCE] *****************************************
ok: [P2]

TASK [14.4 RUN COMMANDS TO VERIFY TI-LFA NODE + SRLG PROTECTION] ***************
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [14.5 DISPLAY OUTPUT FOR THE COMMANDS RUN IN THE PREVIOUS TASK] ***********
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Mar 05 13:37:54.963 for 00:01:02'
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
  - - - 5.5.5.5/32, version 4714, labeled SR, internal 0x1000001 0x8310 (ptr 0xe831138) [1], 0x600 (0xe1a0020), 0xa28 (0xf4b4180)
      - ' Updated Mar  5 13:37:54.966 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xe009e48) reference count 3, flags 0x500068, source rib (7), 1 backups'
      - '                [2 type 5 flags 0x8401 (0xec24a88) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xe1a0020, sh-ldi=0xec24a88]'
      - '  gateway array update type-time 1 Mar  5 13:37:54.966'
      - ' LDI Update time Mar  5 13:37:54.966'
      - ' LW-LDI-TS Mar  5 13:37:54.966'
      - '   via 0.0.0.0/32, tunnel-te32769, 9 dependencies, weight 0, class 0, backup (Local-LFA) [flags 0x300]'
      - '    path-idx 0 NHID 0x0 [0xf399a10 0x0]'
      - '    next hop 0.0.0.0/32'
      - '    local adjacency'
      - '     local label 16005      labels imposed {16005}'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 8 dependencies, weight 0, class 0, protected [flags 0x400]'
      - '    path-idx 1 bkup-idx 0 NHID 0x0 [0xddb6720 0x0]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - ''
      - '    Load distribution: 0 (refcount 2)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'

TASK [14.6 RUN AND PARSE WITH TTP(TEMPLATE TEXT PARSER) TO CAPTURE TUNNEL-ID] ***
ok: [P2]

TASK [14.7 DISPLAY OUTPUT FOR THE COMMANDS RUN IN THE PREVIOUS TASK] ***********
ok: [P2] => 
  msg:
  - show cef 5.5.5.5/32
  - - - tunnelid: '32769'

TASK [14.8 USE THE CAPTURED TUNNEL-ID TO VERIFY LABEL STACK] *******************
ok: [P2]

TASK [14.9 DISPLAY OUTPUT FOR THE COMMANDS RUN IN THE PREVIOUS TASK] ***********
ok: [P2] => 
  msg:
  - show mpls traffic-eng tunnels 32769
  - - 'Name: tunnel-te32769  Destination: 0.0.0.0  Ifhandle:0x94 (auto-tunnel for ISIS IGP)'
    - '  Signalled-Name: auto_P2_t32769'
    - '  Status:'
    - '    Admin:    up Oper:   up   Path:  valid   Signalling: connected'
    - ''
    - '    path option (_te32769), preference 10, (verbatim Segment-Routing) type explicit (_te32769) (Basis for Setup)'
    - '    G-PID: 0x0800 (derived from egress interface properties)'
    - '    Bandwidth Requested: 0 kbps  CT0'
    - '    Creation Time: Sun Mar  5 13:36:35 2023 (00:02:26 ago)'
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
    - '    Tunnel has been up for: 00:02:26 (since Sun Mar 05 13:36:35 UTC 2023)'
    - '    Current LSP:'
    - '      Uptime: 00:02:26 (since Sun Mar 05 13:36:35 UTC 2023)'
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

```java
PLAY [15. CISCO XRV9K SR WITH TI-LFA LAB PLAYBOOK - TI-LFA TIEBREAKER LINK vs NODE vs SRLG PROTECTION] ***

TASK [15.0 RENDER AND DISPLAY P9 PREP CONFIGURATION] ***************************
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

TASK [15.1 RENDER AND SAVE P9 PREP CONFIGURATION] ******************************
ok: [P9]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [P2]

TASK [15.2 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [P9] => 
  output.dest: xrcfg/P9.prep.xrcfg

TASK [15.3 RENDER AND APPLY P9 PREP CONFIGURATION] *****************************
changed: [P9]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 seconds PAUSE FOR CONVERGENCE] *****************************************
ok: [P2]
```

### Link Protection Prefer
<figure markdown>
  ![tiebreaker_link_prefer.png](assets/images/tiebreaker_link_prefer.png){ loading=lazy }
  <figcaption>TI-LFA Link Protection Path Preferred</figcaption>
</figure>

```java

TASK [15.4 RENDER AND DISPLAY THE TI-LFA LINK PROTECTION PREFER CONFIGURATION] ***
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

TASK [15.5 RENDER AND SAVE THE TI-LFA LINK PROTECTION PREFER CONFIGURATION] ****
ok: [P2]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [P2]

TASK [15.6 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [P2] => 
  output.dest: xrcfg/P2.tilfa_tiebrkr_prefer_link.xrcfg

TASK [15.7 RENDER AND APPLY THE TI-LFA LINK PROTECTION PREFER CONFIGURATION] ***
changed: [P2]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 seconds PAUSE FOR CONVERGENCE] *****************************************
ok: [P2]

TASK [15.8 RUN COMMANDS TO VERIFY TI-LFA LINK PROTECTION PREFER] ***************
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show route 5.5.5.5/32)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [15.9 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] *****************
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Mar 05 13:40:27.929 for 00:01:02'
      - '     via 23.0.0.3, GigabitEthernet0/0/0/0, Label: 16005, P3, SRGB Base: 16000, Weight: 0'
      - '       Backup path: LFA, via 29.0.0.9, GigabitEthernet0/0/0/5, Label: 16005, P9, SRGB Base: 16000, Weight: 0, Metric: 40'
      - '       P: No, TM: 40, LC: No, NP: No, D: No, SRLG: Yes'
      - '     src PE5.00-00, 5.5.5.5, prefix-SID index 5, R:0 N:1 P:0 E:0 V:0 L:0, Alg:0'
ok: [P2] => (item=show route 5.5.5.5/32) => 
  msg:
  - - - Routing entry for 5.5.5.5/32
      - '  Known via "isis IGP", distance 115, metric 30, labeled SR, type level-2'
      - '  Installed Mar  5 13:40:27.930 for 00:01:02'
      - '  Routing Descriptor Blocks'
      - '    23.0.0.3, from 5.5.5.5, via GigabitEthernet0/0/0/0, Protected'
      - '      Route metric is 30'
      - '    29.0.0.9, from 5.5.5.5, via GigabitEthernet0/0/0/5, Backup (Local-LFA)'
      - '      Route metric is 40'
      - '  No advertising protos.'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4795, labeled SR, internal 0x1000001 0x8310 (ptr 0xe831138) [1], 0x600 (0xe1a0020), 0xa28 (0xf4b4700)
      - ' Updated Mar  5 13:40:27.966 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xe008888) reference count 6, flags 0x500068, source rib (7), 1 backups'
      - '                [3 type 5 flags 0x8401 (0xec23d08) ext 0x0 (0x0)]'
      - '  LW-LDI[type=5, refc=3, ptr=0xe1a0020, sh-ldi=0xec23d08]'
      - '  gateway array update type-time 1 Mar  5 13:40:27.966'
      - ' LDI Update time Mar  5 13:40:27.966'
      - ' LW-LDI-TS Mar  5 13:40:27.966'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 10 dependencies, weight 0, class 0, protected [flags 0x400]'
      - '    path-idx 0 bkup-idx 1 NHID 0x0 [0xddb6900 0x0]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - '   via 29.0.0.9/32, GigabitEthernet0/0/0/5, 21 dependencies, weight 0, class 0, backup (Local-LFA) [flags 0x300]'
      - '    path-idx 1 NHID 0x0 [0xf3998d0 0x0]'
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

```java
TASK [15.10 RENDER AND DISPLAY THE TI-LFA SRLG PROTECTION PREFER CONFIGURATION] ***
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

TASK [15.11 RENDER AND SAVE THE TI-LFA SRLG PROTECTION PREFER CONFIGURATION] ***
ok: [P9]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [P2]

TASK [15.12 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ****************
ok: [P9] => 
  output.dest: xrcfg/P9.tilfa_tiebrkr_prefer_srlg.xrcfg

TASK [15.13 RENDER AND APPLY THE TI-LFA SRLG PROTECTION PREFER CONFIGURATION] ***
changed: [P9]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 seconds PAUSE FOR CONVERGENCE] *****************************************
ok: [P2]

TASK [15.14 RUN COMMANDS TO VERIFY TI-LFA SRLG PROTECTION PREFER] **************
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show route 5.5.5.5/32)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [15.15 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ****************
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Mar 05 13:41:44.286 for 00:00:59'
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
      - '  Installed Mar  5 13:41:44.286 for 00:01:00'
      - '  Routing Descriptor Blocks'
      - '    23.0.0.3, from 5.5.5.5, via GigabitEthernet0/0/0/0, Protected'
      - '      Route metric is 30'
      - '    29.0.0.9, from 5.5.5.5, via GigabitEthernet0/0/0/5, Backup (TI-LFA)'
      - '      Repair Node(s): 9.9.9.9, 3.3.3.3'
      - '      Route metric is 130'
      - '  No advertising protos.'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4824, labeled SR, internal 0x1000001 0x8310 (ptr 0xe831138) [1], 0x600 (0xe1a0578), 0xa28 (0xf4b4758)
      - ' Updated Mar  5 13:41:44.297 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xe006d58) reference count 6, flags 0x500068, source rib (7), 1 backups'
      - '                [5 type 4 flags 0x8401 (0xec24d28) ext 0x0 (0x0)]'
      - '  LW-LDI[type=1, refc=1, ptr=0xe1a0578, sh-ldi=0xec24d28]'
      - '  gateway array update type-time 1 Mar  5 13:41:44.297'
      - ' LDI Update time Mar  5 13:41:44.297'
      - ' LW-LDI-TS Mar  5 13:41:44.297'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 14 dependencies, weight 0, class 0, protected [flags 0x400]'
      - '    path-idx 0 bkup-idx 1 NHID 0x0 [0xddb6900 0xddb6900]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - '   via 29.0.0.9/32, GigabitEthernet0/0/0/5, 22 dependencies, weight 0, class 0, backup (TI-LFA) [flags 0xb00]'
      - '    path-idx 1 NHID 0x0 [0xf3998d0 0x0]'
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
  <figcaption>TI-LFA SRLG Protection Path Preferred</figcaption>
</figure>

```java
TASK [15.16 RENDER AND DISPLAY TI-LFA NODE PROTECTION PREFER CONFIGURATION] ****
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

TASK [15.17 RENDER AND SAVE TI-LFA NODE PROTECTION PREFERCONFIGURATION] ********
changed: [P2]
Pausing for 1 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 secs PAUSE FOR CONVERGENCE] ********************************************
ok: [P2]

TASK [15.18 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ****************
ok: [P2] => 
  output.dest: xrcfg/P2.prep.xrcfg

TASK [15.19 RENDER AND APPLY TI-LFA NODE PROTECTION PREFER CONFIGURATION] ******
changed: [P2]
Pausing for 60 seconds
(ctrl+C then 'C' = continue early, ctrl+C then 'A' = abort)

TASK [1 seconds PAUSE FOR CONVERGENCE] *****************************************
ok: [P2]

TASK [15.20 RUN COMMANDS TO VERIFY TI-LFA NODE PROTECTION PREFER] **************
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail)
ok: [P2] => (item=show route 5.5.5.5/32)
ok: [P2] => (item=show cef 5.5.5.5/32)

TASK [15.21 DISPLAY THE OUTPUT REGISTERED IN THE PREVIOUS TASK] ****************
ok: [P2] => (item=show isis fast-reroute 5.5.5.5/32 detail) => 
  msg:
  - - - 'L2 5.5.5.5/32 [30/115] Label: 16005, medium priority'
      - '   Installed Mar 05 13:42:54.152 for 00:01:02'
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
      - '  Installed Mar  5 13:42:54.152 for 00:01:02'
      - '  Routing Descriptor Blocks'
      - '    23.0.0.3, from 5.5.5.5, via GigabitEthernet0/0/0/0, Protected'
      - '      Route metric is 30'
      - '    27.0.0.7, from 5.5.5.5, via GigabitEthernet0/0/0/3, Backup (TI-LFA)'
      - '      Repair Node(s): 7.7.7.7, 4.4.4.4'
      - '      Route metric is 120'
      - '  No advertising protos.'
ok: [P2] => (item=show cef 5.5.5.5/32) => 
  msg:
  - - - 5.5.5.5/32, version 4841, labeled SR, internal 0x1000001 0x8310 (ptr 0xe831138) [1], 0x600 (0xe1a0578), 0xa28 (0xf4b3c00)
      - ' Updated Mar  5 13:42:54.158 '
      - ' remote adjacency to GigabitEthernet0/0/0/0'
      - ' Prefix Len 32, traffic index 0, precedence n/a, priority 1'
      - '  gateway array (0xe0099c0) reference count 6, flags 0x500068, source rib (7), 1 backups'
      - '                [5 type 4 flags 0x8401 (0xec258c8) ext 0x0 (0x0)]'
      - '  LW-LDI[type=1, refc=1, ptr=0xe1a0578, sh-ldi=0xec258c8]'
      - '  gateway array update type-time 1 Mar  5 13:42:54.158'
      - ' LDI Update time Mar  5 13:42:54.159'
      - ' LW-LDI-TS Mar  5 13:42:54.159'
      - '   via 23.0.0.3/32, GigabitEthernet0/0/0/0, 8 dependencies, weight 0, class 0, protected [flags 0x400]'
      - '    path-idx 0 bkup-idx 1 NHID 0x0 [0xddb6bd0 0xddb6bd0]'
      - '    next hop 23.0.0.3/32'
      - '     local label 16005      labels imposed {16005}'
      - '   via 27.0.0.7/32, GigabitEthernet0/0/0/3, 8 dependencies, weight 0, class 0, backup (TI-LFA) [flags 0xb00]'
      - '    path-idx 1 NHID 0x0 [0xf399970 0x0]'
      - '    next hop 27.0.0.7/32, Repair Node(s): 7.7.7.7, 4.4.4.4'
      - '    remote adjacency'
      - '     local label 16005      labels imposed {ImplNull 24023 16005}'
      - ''
      - '    Load distribution: 0 (refcount 5)'
      - ''
      - '    Hash  OK  Interface                 Address'
      - '    0     Y   GigabitEthernet0/0/0/0    remote'

PLAY RECAP *********************************************************************
P2                         : ok=149  changed=39   unreachable=0    failed=0    skipped=58   rescued=0    ignored=0   
P3                         : ok=38   changed=14   unreachable=0    failed=0    skipped=52   rescued=0    ignored=0   
P4                         : ok=39   changed=18   unreachable=0    failed=0    skipped=34   rescued=0    ignored=0   
P6                         : ok=52   changed=26   unreachable=0    failed=0    skipped=29   rescued=0    ignored=0   
P7                         : ok=58   changed=27   unreachable=0    failed=0    skipped=60   rescued=0    ignored=0   
P8                         : ok=46   changed=22   unreachable=0    failed=0    skipped=45   rescued=0    ignored=0   
P9                         : ok=12   changed=4    unreachable=0    failed=0    skipped=14   rescued=0    ignored=0   
PE1                        : ok=61   changed=16   unreachable=0    failed=0    skipped=24   rescued=0    ignored=0   
PE5                        : ok=26   changed=12   unreachable=0    failed=0    skipped=29   rescued=0    ignored=0   
```

