<?php namespace app\controllers;

use app\controller;
use app\database;

class index extends controller
{
    public function index()
    {
        $db = new database();
        $countries = $db->execute('select * from countries');
        return $this->render('index', ['countries' => $countries]);
    }
}
