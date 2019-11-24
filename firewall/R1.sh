#These commands permit to erase (flush) every rules that might exist
ip6tables -F FORWARD
ip6tables -F INPUT
ip6tables -F OUTPUT

#These are the default rules (Exery packet not known by the rules will be droped)
ip6tables -P FORWARD DROP
ip6tables -P INPUT DROP
ip6tables -P OUTPUT DROP


#This will block all OSPF packets comig from the outside of the network
ip6tables -A FORWARD -i pop300 -p 89 -j DROP
ip6tables -A FORWARD -o pop300 -p 89 -j DROP
ip6tables -A INPUT -i pop300 -p 89 -j DROP
ip6tables -A OUTPUT -o pop300 -p 89 -j DROP
