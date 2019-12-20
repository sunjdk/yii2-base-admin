<?php

namespace common\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Movie;

/**
 * MovieSearch represents the model behind the search form of `common\models\Movie`.
 */
class MovieSearch extends Movie
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['movieid'], 'integer'],
            [['title', 'adimg', 'info', 'murl'], 'safe'],
            [['oldprice', 'price'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Movie::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'movieid' => $this->movieid,
            'oldprice' => $this->oldprice,
            'price' => $this->price,
        ]);

        $query->andFilterWhere(['like', 'title', $this->title])
            ->andFilterWhere(['like', 'adimg', $this->adimg])
            ->andFilterWhere(['like', 'info', $this->info])
            ->andFilterWhere(['like', 'murl', $this->murl]);

        return $dataProvider;
    }
}
