#These commands permit to erase (flush) every rules that might exist
ip6tables -F FORWARD
ip6tables -F INPUT
ip6tables -F OUTPUT

#These are the default rules (Exery packet not known by the rules will be droped)
ip6tables -P FORWARD DROP
ip6tables -P INPUT DROP
ip6tables -P OUTPUT DROP

#This will allow all OSPF packets
ip6tables -A INPUT -p 89 -j ACCEPT
ip6tables -A OUTPUT -p 89 -j ACCEPT

#This will block all OSPF packets coming from/going to the outside of the network
ip6tables -A FORWARD -i eb1 -p 89 -j DROP
ip6tables -A FORWARD -o eb1 -p 89 -j DROP
ip6tables -A INPUT -i eb1 -p 89 -j DROP
ip6tables -A OUTPUT -o eb1 -p 89 -j DROP
ip6tables -A FORWARD -i ebG6 -p 89 -j DROP
ip6tables -A FORWARD -o ebG6 -p 89 -j DROP
ip6tables -A INPUT -i ebG6 -p 89 -j DROP
ip6tables -A OUTPUT -o ebG6 -p 89 -j DROP


#This will allow all BGP packets
ip6tables -A INPUT -p 179 -j ACCEPT
ip6tables -A OUTPUT -p 179 -j ACCEPT

#This will allow ICMP
ip6tables -A FORWARD -p ipv6-icmp -j ACCEPT
ip6tables -A INPUT -p ipv6-icmp -j ACCEPT
ip6tables -A OUTPUT -p ipv6-icmp -j ACCEPT



