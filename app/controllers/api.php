<?php
namespace app\controllers;

use app\controller;
use app\database;

class api extends controller
{
    public function sendForm()
    {
        $params = $_POST;
        (new database())->insert('orders', $params);
        sleep(2);
        return json_encode($params);
    }
}

