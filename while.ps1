cls

[int]$tableof = read-host "Enter table number"
[int]$start = read-host "Enter the starting number"
[int]$end = read-host "Enter the ending number"

write-host "MULTIPICATION TABLE USING FOR" `n

while($start -le $end)
{   
    if($start -eq 11)
    {
    continue
    }

    $result = $tableof * $start
    write-host "$tableof * $start = $result"
    $start++
}