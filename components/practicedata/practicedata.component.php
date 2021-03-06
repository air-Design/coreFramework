<?php

use middleWare as MW;

class PracticedataComponent
{
    public $model;
    public $data;
    public $personData;
    private $key='';



    public function onInit()
    {
        $this->model = CORE::getModel('practice');
        $this->params =  CORE::getInstance('Params');
        $this->key = $_POST['key']??'';
        $this->items();
    }

    public function items()
    {
        $this->data = $this->model->getItems($this->key);
    }
}
