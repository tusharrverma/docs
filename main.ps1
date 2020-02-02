cls

write-host "Working with Windows Operations" -foregroundcolor yellow `n

do {

write-host " 1.Service" `n "2.Process" `n "3.Eventlog" `n "4.Hotfix" `n "5.Exit" `n

$choice = read-host "Enter choice"

if( !$choice )
{
    write-host "Empty input"
}
else
{
    if($choice -eq "1")
    {
            write-host "Working with Windows Services" -foregroundcolor blue

            $status = read-host "Enter status:"

            $displayname = read-host "Enter display name:"

            if(!$status -or !$displayname)
            {
                write-host "Empty input"
            }

            else
            {
                $result = get-service | where-object {$_. status -eq $status -and $_. displayname -like $displayname} | Select-Object status, displayname, starttype 
                $result | sort displayname | ft status, displayname, starttype
                write-host "The count of result is "($result).count""


                $userinput = read-host "Do you want to export the file?" `n "YES OR NO?" 
                if($userinput -like "*y*" -or $userinput -like "*Y*")
                   {
                        Export
                   }

                #get-service | where-object {$_. status -eq $status -and $_. displayname -like $displayname} | sort displayname | ft status, displayname, starttype
                #$count1 = (get-service | where-object {$_. status -eq $status -and $_. displayname -like $displayname} | sort displayname).count
                #write-host "Count of result is: $count1"
            }
    }

    elseif($choice -eq "2")
    {
            write-host "Working with Windows Process" -foregroundcolor blue

            [int]$handlesgt = read-host "Enter handles lower limit:"

            [int]$handleslt = read-host "Enter handles upper limit:"

            if(!$handlesgt -or !$handleslt)
            {
                write-host "Empty input"
            }

            else
            {
                get-process | where-object {$_. handles -gt $handlesgt -and $_. handles -lt $handleslt} | sort handles | ft handles, processname, starttime
            }
    }

    elseif($choice -eq "3")
    {
            write-host "Working with Windows Events" -foregroundcolor blue

            $timegt = read-host "Enter time lower limit:"

            $timelt = read-host "Enter time upper limit:"

            $logname = read-host "Enter log container"

            if(!$status -or !$displayname)
            {
                write-host "Empty input"
            }

            else
            {
                get-eventlog -logname $logname| where-object {$_. timegenerated -gt $timegt -and $_. timegenerated -lt $timelt} | ft time*, source, entrytype
            }
    }

    elseif($choice -eq "4")
    {
            write-host "Working with Windows Hotfix" -foregroundcolor blue

            $description = read-host "Enter the description you want to search"

            if(!$status -or !$displayname)
            {
                write-host "Empty input"
            }

            else
            {
                get-hotfix | where-object {$_. description -eq $description}
            }
    }

    elseif($choice -ne "5")
    {
            write-host "Invalid choice" `n
    }

    Function Export
    {
        $result | Export-Csv "C:\Users\TW9\Downloads\docs\Test.csv" -notypeinformation
    }
}

    read-host "Press enter key to continue"

}

while($choice -ne "5")

#until($choice -eq "5")

    write-host "End of Script" -foregroundcolor green