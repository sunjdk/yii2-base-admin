<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%movie}}`.
 */
class m191220_081916_create_movie_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%movie}}', [
            'movieid' => $this->primaryKey()->comment('电影ID'),
            'title' => $this->char(200)->notNull()->comment('电影标题'),
            'adimg' => $this->string(255)->notNull()->comment('电影图片'),
            'info' => $this->string(255)->notNull()->comment('电影介绍'),
            'oldprice' => $this->decimal(10,2)->notNull()->comment('市场价格'),
            'price' => $this->decimal(10,2)->notNull()->comment('会员价格'),
            'murl' => $this->string(255)->notNull()->comment('播放地址'),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%movie}}');
    }
}
