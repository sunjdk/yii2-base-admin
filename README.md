《桃谷六仙》基础后台框架-BASE-Yii2
参考文献：
```
yii2搭建完美后台并实现rbac权限控制实例教程(http://www.manks.top/yii2-frame-rbac-template.html)
yii2搭建完美后台并实现rbac权限控制实例教程(http://www.manks.top/yii2-frame-rbac-template.html)
yii2权限控制rbac之菜单menu最详细教程(http://www.manks.top/yii2-rbac-menu.html)
yii2权限控制rbac之详细操作步骤(http://www.manks.top/article/yii2_rbac_description)
yii2权限控制rbac之rule详细讲解(http://www.manks.top/yii2_rbac_rule.html)
魏曦教你学Yii2.0（https://www.yiichina.com/video）
用到的扩展：
yii2-admin(https://github.com/mdmsoft/yii2-admin/tree/master/docs/guide)
yii2-adminlte(https://github.com/ColorlibHQ/AdminLTE/tree/master/docs)
数据库迁移(https://www.yiichina.com/doc/guide/2.0/db-migrations)
```
DIRECTORY STRUCTURE
-------------------
图标库
http://www.fontawesome.com.cn/
bootstrap库
https://v3.bootcss.com/css/#buttons
```
common
    config/              contains shared configurations
    mail/                contains view files for e-mails
    models/              contains model classes used in both backend and frontend
    tests/               contains tests for common classes    
console
    config/              contains console configurations
    controllers/         contains console controllers (commands)
    migrations/          contains database migrations
    models/              contains console-specific model classes
    runtime/             contains files generated during runtime
backend
    assets/              contains application assets such as JavaScript and CSS
    config/              contains backend configurations
    controllers/         contains Web controller classes
    models/              contains backend-specific model classes
    runtime/             contains files generated during runtime
    tests/               contains tests for backend application    
    views/               contains view files for the Web application
    web/                 contains the entry script and Web resources
frontend
    assets/              contains application assets such as JavaScript and CSS
    config/              contains frontend configurations
    controllers/         contains Web controller classes
    models/              contains frontend-specific model classes
    runtime/             contains files generated during runtime
    tests/               contains tests for frontend application
    views/               contains view files for the Web application
    web/                 contains the entry script and Web resources
    widgets/             contains frontend widgets
vendor/                  contains dependent 3rd-party packages
environments/            contains environment-based overrides
```
