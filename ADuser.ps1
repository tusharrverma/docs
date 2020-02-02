cls

get-aduser -searchbase "OU=Capg,DC=capgemini,DC=com" -filter *

new-aduser -name Sanju -accountpassword $password -displayname "Sanju Atwal" -emailaddress sanjuatwal@gmail.com -mobilephone 9876756767 -passwordneverexpires $true -samaccountname sanju -givenname sanju -surname atwal -userprincipalname sanju@capgemini.com

new-adgroup -name SG -groupscope domainlocal -displayname SecurityGroup -groupcategory security -managedby tushar -samaccountname sg

Add-ADGroupMember sg sanju,soham

get-adgroupmember -Identity sg

