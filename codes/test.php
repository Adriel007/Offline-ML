<?php
function compute()
{
    $sum = 0.0;
    for ($i = 0; $i < 100000000; $i++) {
        $sum += (sin($i) * cos($i)) / (microtime(true) * 1000);
    }
    return $sum;
}

$start = microtime(true);
$result = compute();
$end = microtime(true);

$time_spent = $end - $start;
echo "Time spent: $time_spent seconds\n";

exit;