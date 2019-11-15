! -*- zebra -*-
!
! zebra sample configuration file
!
hostname ${data['hostname']}
password ${data['passwd']}
enable password ${data['passwd']}
!
! Interface's description.
!
interface lo
 description loopback.
!
%for interface in data['interfaces']:
interface ${interface['name']}
 description Link to ${interface['link']}
!
%endfor
