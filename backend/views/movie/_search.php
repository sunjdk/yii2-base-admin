<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\MovieSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="movie-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'movieid') ?>

    <?= $form->field($model, 'title') ?>

    <?= $form->field($model, 'adimg') ?>

    <?= $form->field($model, 'info') ?>

    <?= $form->field($model, 'oldprice') ?>

    <?php // echo $form->field($model, 'price') ?>

    <?php // echo $form->field($model, 'murl') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
