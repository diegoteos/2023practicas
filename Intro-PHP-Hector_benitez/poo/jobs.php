<?php


require_once 'app/models/Job.php';

$job1 = new Job('PHP Developer', 'This is an awesome job!!!');
$job1->months = 16;


$job2 = new Job('Python Developer', 'This is an awesome job!!!');
$job2->months = 22;


$job3 = new Job('Devops', 'This is an awesome job!!!');
$job3->months = 32;
