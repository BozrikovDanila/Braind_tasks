.htaccess настроен на переадресацию всех запросов на index.php.
Index.php точка входа в приложение. Файл bootstrap.php инициирует загрузку приложения,
подключая все необходимые модули, и запускает функцию машрутизации start() из класса Route.
Метод разбирает адрес на составные части (имя контроллера и модели, действие, параметры), 
согласно которым подключит нужные контроллеры, которые в свою очередь
будут генерировать вид страниц.

В папке core реализованы основные модули программы:

<ul>
    <li>Базовый класс контроллера - controller.php</li>
    <li>Базовый класс модели - model.php</li>
    <li>Базовый класс вида - view.php</li>
    <li>Файл машрутизации - route.php</li>
    <li>Класс для работы с PDO - DB.php и файл конфигурации подключения к БД dbinfo.php</li>
</ul>

<h3>Содержание файла Model.php</h3>

```
    require_once 'DB.php';
    class Model
    {
        public $db;
    
        function __construct()
        {
            $this->db = new DB;
        }
    
        public function get_data()
        {
        }
    }
```
Класс модели содержит единственный пустой метод выборки данных, 
который будет перекрываться в классах потомках. 
Когда мы будем создавать классы потомки все станет понятней.

<h3>Содержание файла View.php</h3>

```
    class View
    {
        function generate($content_view, $template_view = 'template_view.php', $data = null)
        {
            include 'mvc/views/'.$template_view;
        }
    }
```
Не трудно догадаться, что метод generate предназначен для формирования вида. В него передаются следующие параметры:
1. $content_view— виды отображающие контент страниц;
2. $template_view — общий для всех страниц шаблон, в который вставляется $content_file;
3. $data — массив, содержащий элементы контента страницы, полученный из модели.

Функцией include динамически подключается общий шаблон (вид), внутри которого будет встраиваться вид
для отображения контента конкретной страницы.

<h3>Содержание файла Controller.php</h3>

```
    class Controller {
    
        public $model;
        public $view;
    
        function __construct()
        {
            $this->view = new View();
        }
    
        function action_index()
        {
        }
    }
```

Метод action_index — это действие, вызываемое по умолчанию, его мы перекроем при реализации классов потомков.
Контроллер получает объекты классов модели и вида в своем конструкторе.
Затем производится действие по-умолчанию, в нём возможно получение данных из модели, а затем генерация страницы 
View->generate($content_view, $template_view, $data).

Пример работы:
example.com/articles/article/1

создаст объект класса controller_articles и model_articles (если такой модель есть)
вызовет у controller_main->action_article($params) - в $params находится 1

action_article: $data = $this->model->db->get_article() // запроса может и не быть, если модели нет
view->generate('article_view.php', 'template_view.php')

generate: разместит в template_view.php вместо $content_view -> article_view.php

main_view.php: использует $data (если есть) для отображения информации из модели
