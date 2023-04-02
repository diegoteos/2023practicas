<?php

class SumThread extends Thread {
    private $start;
    private $end;
    private $result;

    public function __construct($start, $end) {
        $this->start = $start;
        $this->end = $end;
        $this->result = 0;
    }

    public function run() {
        for ($i = $this->start; $i <= $this->end; $i++) {
            $this->result += $i;
        }
    }

    public function getResult() {
        return $this->result;
    }
}

$sumThreadOdd = new SumThread(1, 50000);
$sumThreadEven = new SumThread(2, 50000);

$sumThreadOdd->start();
$sumThreadEven->start();

$sumThreadOdd->join();
$sumThreadEven->join();

$resultOdd = $sumThreadOdd->getResult();
$resultEven = $sumThreadEven->getResult();

echo "La suma de los números impares es: " . $resultOdd . "<br>";
echo "La suma de los números pares es: " . $resultEven . "<br>";
