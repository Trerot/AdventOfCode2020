# task 1

$stuff = Get-Clipboard | Where-Object { $_ }

$stuff.foreach({
        $item = $_
        $stuff.foreach({
            $calc = [int]$item + [int]$_
            if($calc -eq 2020 ){
                $num1 = [int]$item
                $num2 = [int]$_
            }
            })
    })
    $num1*$num2 | Set-Clipboard

    #task 2
    $stuff.foreach({
        $item = $_
        $stuff.foreach({
            $item2 = $_
            $stuff.foreach({
                $item3 = $_
                $calc = [int]$item + [int]$item2 + [int]$item3
                if($calc -eq 2020 ){
                    $num1 = [int]$item
                    $num2 = [int]$item2
                    $num3 = [int]$item3
                }


            })

            })
    })
    $num1*$num2*$num3 | Set-Clipboard