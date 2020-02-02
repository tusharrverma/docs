cls

$collection = import-csv "C:\Users\TWSDE0\Downloads\docs\excel1.csv"

foreach($item in $collection)
    {
        if($item.country -eq "India")
            {
                #write-host $item.fname
                $item | ft fname, lname, state, country
            }
    }