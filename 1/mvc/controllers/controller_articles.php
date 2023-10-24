<?php
    class Controller_Articles extends Controller
    {
        function __construct()
        {
            $this->model = new Model_Articles();
            $this->view = new View();
        }
        function action_index()
        {
            $data = $this->model->get_data(); // получаем все статьи
            $this->view->generate('articles_view.php', 'template_view.php', $data);
        }

        function action_article($params)
        {
            $data = $this->model->get_article($params); // получаем статью по id в params
            $this->view->generate('article_view.php', 'template_view.php', $data);
        }
    }