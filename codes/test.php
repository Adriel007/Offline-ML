<?php set_time_limit(900);

function compute() {
    $sum = 0.0;
    for ($i = 0; $i < 100000000; $i++) {
        $sum += (sin($i) * cos($i)) / (microtime(true) * 1000);
    }
    return $sum;
}

$media = 0;

for($i = 0; $i<10; $i++){
    $start = microtime(true);
    $result = compute();
    $end = microtime(true);
    $dt = $end - $start; echo "Time spent ".($i+1).": $dt seconds<br>";
    $media += $dt;
}

$media /= 10;

echo "<br>media: $media<br>";
$media*=10;
echo "total: $media";

exit;?>
