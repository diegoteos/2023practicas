<?php

class BaseElement
{
    private $title;
    public $description;
    public $visible = true;
    public $months;


    public function __construct($title, $description)
    {
        $this->setTitle($title);
        $this->description = $description;
    }


    public function setTitle($t)
    {
        if ($t == '') {
            $this->title = 'N/A';
        } else {
            return $this->title = $t;
        }
    }

    public function getTitle()
    {
        return $this->title;
    }

    public function getDurationAsString(){
        $years = floor($this->months / 12);
        $extraMonths = $this->months % 12;
        return "$years years $extraMonths months";

    }
}
