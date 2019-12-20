<?php


namespace backend\controllers;


use mdm\admin\models\Menu;
use yii\web\Controller;

class TestController extends Controller
{
    public function actionIndex(){
        $model=Menu::find()->select('name')->column();
        print_r($model);
        exit();
    }
}