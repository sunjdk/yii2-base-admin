<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%movie}}".
 *
 * @property int $movieid 电影ID
 * @property string $title 电影标题
 * @property string $adimg 电影图片
 * @property string $info 电影介绍
 * @property float $oldprice 市场价格
 * @property float $price 会员价格
 * @property string $murl 播放地址
 */
class Movie extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%movie}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title', 'adimg', 'info', 'oldprice', 'price', 'murl'], 'required'],
            [['oldprice', 'price'], 'number'],
            [['title'], 'string', 'max' => 200],
            [['adimg', 'info', 'murl'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'movieid' => '电影ID',
            'title' => '电影标题',
            'adimg' => '电影图片',
            'info' => '电影介绍',
            'oldprice' => '市场价格',
            'price' => '会员价格',
            'murl' => '播放地址',
        ];
    }
}
