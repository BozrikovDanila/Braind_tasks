<?php
    class View
    {
        function generate($content_view, $template_view = 'template_view.php', $data = null)
        {


            include 'mvc/views/'.$template_view;
        }
    }