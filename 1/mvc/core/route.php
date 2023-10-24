<?php
    class Route
    {
        static function start()
        {
            // контроллер и действие по умолчанию
            $controller_name = 'Main';
            $action_name = 'index';
            $params = null;

            $routes = explode('/', $_SERVER['REQUEST_URI']);

            // routes[0] - example.com

            // получаем имя контроллера
            if ( !empty($routes[1]) )
            {
                $controller_name = $routes[1];
            }

            // получаем имя действия (index, article)
            if ( !empty($routes[2]) )
            {
                $action_name = $routes[2];
            }

            // получаем параметр, например $article_id для получения конкретной статьи
            if ( !empty($routes[3]) )
            {
                $params = $routes[3];
            }

            // добавляем префиксы
            $model_name = 'Model_'.$controller_name;
            $controller_name = 'Controller_'.$controller_name;
            $action_name = 'action_'.$action_name;

            // подцепляем файл с классом модели (файла модели может и не быть)
            $model_file = strtolower($model_name).'.php';
            $model_path = "mvc/models/".$model_file;

            if(file_exists($model_path))
            {
                include "mvc/models/".$model_file;
            }

            // подцепляем файл с классом контроллера
            $controller_file = strtolower($controller_name).'.php';
            $controller_path = "mvc/controllers/".$controller_file;
            if(file_exists($controller_path))
            {
                include "mvc/controllers/".$controller_file;
            }
            else
            {
                /*
                правильно было бы кинуть здесь исключение,
                но сразу сделаем редирект на страницу 404
                */
                Route::ErrorPage404();
            }

            // создаем контроллер
            $controller = new $controller_name;
            $action = $action_name;

            if(method_exists($controller, $action))
            {
                // вызываем действие контроллера
                $controller->$action($params);
            }
            else
            {
                // лушче выкинуть исключение
                Route::ErrorPage404();
            }

        }

        static function ErrorPage404()
        {
            $host = 'http://'.$_SERVER['HTTP_HOST'].'/';
            header('HTTP/1.1 404 Not Found');
            header("Status: 404 Not Found");
            header('Location:'.$host.'404');
        }
    }