cls

[int]$number = read-host "Enter the number"

write-host "Fibonacci Series for $number"

$i = 1

write-host "$i"

for($p = 0;$i -le $number;)
{
    $i = $i + $p
    write-host "$i"
    $p = $i - $p
}