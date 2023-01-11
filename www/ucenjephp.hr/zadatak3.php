<?php

// stranica prima dva broja putem GET parametara
// stranica ispisuje veći
// Ako su brojevi jednaki, stranica ispisuje: jednaki su

$b1 = isset($_GET['b1']) ? $_GET['b1'] : 0;
$b2 = isset($_GET['b2']) ? $_GET['b2'] : 0;
if($b1===$b2){
    echo 'Jednaki su';
}else if($b1>$b2){
    echo $b1;
}else{
    echo $b2;
}

echo '<br>';
// DOMAĆA ZADAĆA
// stranica prima TRI broja putem GET parametara
// stranica ispisuje najmanji broj
// Ako su svi brojevi jednaki, stranica ispisuje: jednaki su





$b1 = isset($_GET['b1']) ? $_GET['b1'] : 0;
$b2 = isset($_GET['b2']) ? $_GET['b2'] : 0;
$b3 = isset($_GET['b3']) ? $_GET['b3'] : 0;

if($b1===$b2 && $b1===$b3){
    echo 'Jednaki su';
} else if($b1<=$b2){
    if($b1<$b3){
        echo $b1;
    }else{
        echo $b3;
    }
} else {
    if($b2<$b3){
        echo $b2;
    }else{
        echo $b3;
    }
}
//?b1=5&b2=1&b3=9