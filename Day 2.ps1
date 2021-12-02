#task 1
$stuff = get-puzzleinput -day 2 -year 2020
$counter = 0
$stuffconv = $stuff | ConvertFrom-Csv -Delimiter " " -header "amount", "letter", "password"
$stuffconv.foreach({
        $letter = $_.letter -replace ":"
        $num = $_.amount -split "-"
        $count = [regex]::matches($_.password, "$letter").count
        if ($count -ge $num[0] -and $count -le $num[1]) {
            $counter++
        }
    })
$counter | Set-Clipboard

# task 2
$passcounter = 0
$anotherlist = New-Object -TypeName System.Collections.ArrayList
$stuffconv.foreach({
        $item = $_
        $num = $item.amount -split "-"
        $length = $item.password.length
        $letter = $item.letter -replace ":"
        $counter = 0
        $arraylist = New-Object -TypeName System.Collections.ArrayList
        while ($counter -le $length) {
            $index = $item.password.indexof($letter, $counter)
            [void]$arraylist.add([int]$index + 1)
            $counter ++
        }
        if ( $arraylist -contains $num[0] -xor $arraylist -contains $num[1]) {

                $anotherlist.add($item)
                $passcounter ++
            

        }
    })
    $passcounter
    $passcounter | Set-Clipboard