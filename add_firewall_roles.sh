#!/bin/bash
#
#
# Linux

firewall basic
# fedora 22
iptables -A IN_FedoraServer_allow -p tcp -m tcp --dport 80 -m conntrack --ctstate NEW -j ACCEPT
iptables -A IN_FedoraServer_allow -p udp -m udp --dport 137 -m conntrack --ctstate NEW -j ACCEPT
iptables -A IN_FedoraServer_allow -p udp -m udp --dport 138 -m conntrack --ctstate NEW -j ACCEPT
iptables -A IN_FedoraServer_allow -p tcp -m tcp --dport 139 -m conntrack --ctstate NEW -j ACCEPT
iptables -A IN_FedoraServer_allow -p tcp -m tcp --dport 445 -m conntrack --ctstate NEW -j ACCEPT
iptables -A IN_FedoraServer_allow -p tcp -m tcp --dport 3306 -m conntrack --ctstate NEW -j ACCEPT

centos 6.5
-A INPUT -p tcp -m state --state NEW -m tcp --dport 80 -j ACCEPT
-A INPUT -p udp -m state --state NEW -m udp --dport 137 -j ACCEPT
-A INPUT -p udp -m state --state NEW -m udp --dport 138 -j ACCEPT
-A INPUT -p tcp -m state --state NEW -m tcp --dport 139 -j ACCEPT
-A INPUT -p tcp -m state --state NEW -m tcp --dport 445 -j ACCEPT
-A INPUT -p tcp -m state --state NEW -m tcp --dport 3306 -j ACCEPT
