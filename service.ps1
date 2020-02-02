cls

$collection = get-service | sort-object status -descending 

foreach($item in $collection)
{
    if( $item.status -eq "running")
        {
            write-host $item.status $item.name -foregroundcolor green -NoNewline 
            write-host `t $item.displayname -foregroundcolor white 
        }

    else
    {
        write-host $item.status $item.name $item.displayname -foregroundcolor red
    }
}
