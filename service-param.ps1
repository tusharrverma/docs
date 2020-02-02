Param($choice, $status, $displayname, $export)
Function Export
    {
        $result | Export-Csv "C:\Users\TW9\Downloads\docs\Test.csv" -notypeinformation
    }

cls

write-host "Working with Windows Operations" -foregroundcolor yellow `n

#do {

write-host " 1.Service" `n "2.Process" `n "3.Eventlog" `n "4.Hotfix" `n "5.Exit" `n

#$choice = read-host "Enter choice"

if( !$choice )
{
    write-host "Empty input"
}
else
{
    if($choice -eq "1")
    {
            write-host "Working with Windows Services" -foregroundcolor blue

            #$status = read-host "Enter status:"

            #$displayname = read-host "Enter display name:"

            if(!$status -or !$displayname)
            {
                write-host "Empty input"
            }

            else
            {
                $result = get-service | where-object {$_. status -eq $status -and $_. displayname -like $displayname} | Select-Object status, displayname, starttype 
                $result | sort displayname | ft status, displayname, starttype
                write-host "The count of result is "($result).count""


                #$export = read-host "Do you want to export the file?" `n "YES OR NO?" 
                if($export -like "*y*" -or $export -like "*Y*")
                   {
                        Export
                   }

                #get-service | where-object {$_. status -eq $status -and $_. displayname -like $displayname} | sort displayname | ft status, displayname, starttype
                #$count1 = (get-service | where-object {$_. status -eq $status -and $_. displayname -like $displayname} | sort displayname).count
                #write-host "Count of result is: $count1"
            }
    }

    
}

    #read-host "Press enter key to continue"
#}

#while($choice -ne "5")

#until($choice -eq "5")

    write-host "End of Script" -foregroundcolor green