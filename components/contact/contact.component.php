<?php

class ContactComponent
{
    private $params;
    public $test;
    public $title='Contact Form';

    public function onInit()
    {
        $this->params = CORE::getInstance('Params');
        // $this->test = $this->params->test;
        // print_r($this->params);
    }
}
