<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Movie */

$this->title = 'Update Movie: ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Movies', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->movieid]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="movie-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
