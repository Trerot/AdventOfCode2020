$stuff = get-puzzleinput -day 2 -year 2020
$counter = 0
$stuffconv = $stuff | ConvertFrom-Csv -Delimiter " " -header "amount", "letter", "password"
$stuffconv.foreach({
        $letter = $_.letter -replace ":"
        $num = $_.amount -split "-"
        $count = [regex]::matches($_.password, "$letter").count
        if($count -ge $num[0] -and $count -le $num[1]){
            $counter++
        }
    })
$counter | Set-Clipboard