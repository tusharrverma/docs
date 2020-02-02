cls

$collection = import-csv "C:\Users\TW9\Downloads\docs\users.csv"
foreach($item in $collection)
{
    new-aduser -name $item.Fname -accountpassword $password -displayname $item.DisplayName -emailaddress $item.Email `
    --mobilephone $item.Phone -passwordneverexpires $true -samaccountname $item.Fname -givenname $item.Fname -surname $item.Lname
    Add-ADGroupMember sg $item."Fname"
}