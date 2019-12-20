<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\MovieSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '电影列表';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="movie-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('添加电影', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'movieid',
            'title',
            'adimg',
            'info',
            'oldprice',
            //'price',
            //'murl',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
