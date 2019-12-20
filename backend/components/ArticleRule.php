<?php


namespace backend\components;


use yii\rbac\Item;
use yii\rbac\Rule;

class ArticleRule extends Rule
{
    public $name = 'article';
    /**
     * Executes the rule.
     *
     * @param string|int $user the user ID. This should be either an integer or a string representing
     * the unique identifier of a user. See [[\yii\web\User::id]].
     * @param Item $item the role or permission that this rule is associated with
     * @param array $params parameters passed to [[CheckAccessInterface::checkAccess()]].
     * @return bool a value indicating whether the rule permits the auth item it is associated with.
     */
    public function execute($user, $item, $params)
    {
        $id = isset($params['id']) ? $params['id'] : null;
        if (!$id) {
            return false;
        }

        $model = Article::findOne($id);
        if (!$model) {
            return false;
        }

        $username = Yii::$app->user->identity->username;
        $role = Yii::$app->user->identity->role;
        if ($role == User::ROLE_ADMIN || $username == $model->operate) {
            return true;
        }
        return false;
    }
}