<?php

class Job
{
    private $title;
    public $description;
    public $visible = true;
    public $months;


    public function __construct($title, $description, $visible, $months){
        $this->setTitle($title);
        $this->description = $description;
        $this->visible = $visible;
        $this->months = $months;
    }


    function printJob()
    {
        echo $this->title . " " . $this->description . " " . $this->visible . " " . $this->months . '<br />';
    }
    public function setTitle($t)
    {
        if ($t == '') {
            $this->title = 'N/A';
        } else {

            return $this->title = $t;
        }
    }

    // public function getTitle(){
    //     return $this->title;
    // }



}

$job1 = new Job('hola', 'mundo', 'curel', 22);
// $job1->setTitle('PHP developers');
// $job1->description = 'This is an awesome job';
// $job1->visible = true;
// $job1->months = 14;

$job1->printJob();


$job2 = new Job('', 'mundo', 'curel', 22);
// $job2->setTitle('Python');
// $job2->description = 'Es mi primer trabajo';
// $job2->visible = true;
// $job2->months = 11;

$job2->printJob('hola', 'mundo', 'curel', 22);


$job3 = new Job('hola', 'mundo', 'curel', 22);
// $job3->setTitle('');
// $job3->description = 'Es un trabajo muy bonito';
// $job3->visible = true;
// $job3->months = 22;

$job3->printJob('hola', 'mundo', 'curel', 22);
// $jobs = [
//     $job1
// ];
