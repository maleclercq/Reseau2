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
%for interface in data['interfaces']:
interface ${interface['name']}
 description Link to ${interface['link']}
!
%endfor
