cls

$collection = import-csv "C:\Users\TWSDE0\ips.csv"

foreach($item in $collection)
{  try
    {
        write-host $item.'Computername'
        get-service -computername $item.computername | where-object {$_. displayname -like "xbox*"} | ft status, displayname, starttype, machinename
        #write-host $item.status $item.displayname $item.starttype
    }

    catch [System.InvalidOperationException]
    {
        write-host `n "Unable to connect to" $item.computername ".Please contact the Administrator." `n
    }
}