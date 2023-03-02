<?php

$nilai = 75;

// IF

// if ($nilai >= 60) {
//     echo "<h2>Lulus</h2>";
// } elseif ($nilai >= 50) {
//     echo "<h3>Ikut perbaikan</h3>";
// } else {
//     echo "<h4>Tidak Lulus</h4>";
// }

// TRUE FALSE

// echo "False:". ($nilai > 100) . "<br>";
// echo "False:". ($nilai == 100) . "<br>";                        // kalo false return nya null
// echo "True:". ($nilai > 50 && $nilai <= 100) . "<br>";          // kalo true returnnya 1
// echo "False:". ($nilai <= 50 || $nilai > 100) . "<br>";

// SWITCH CASE

$opsi = 'A';
switch ($opsi) {
    case 'A':
        echo "Pilihan 1";
        break;
    case 'B':
        echo "Pilihan 2";
        break;
    default:
        echo "Pilihan invalid!";
        break;
    }
