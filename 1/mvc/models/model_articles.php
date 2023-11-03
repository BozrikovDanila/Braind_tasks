<?php
class Model_Articles extends Model
{
    static function articleText_handle($d){
        foreach ($d as &$row): // выводим каждую статью
            $num_of_symb = 250; // кол-во считываемых символов
            $row['text'] = mb_strimwidth($row['text'], 0, $num_of_symb, '', 'UTF-8'); // обрезаем 250 символов
            $text_explode = explode(" ", str_replace('&nbsp;', ' ', $row["text"])); // получаем массив слов разделенных по пробелам
            $exp_text_size = sizeof($text_explode); // получем размер массива, чтобы потом обратится к последним трем элементам
            $str = "<a href=\"/articles/article/". $row['id'] . "\">" . $text_explode[$exp_text_size-3] .
                " " . $text_explode[$exp_text_size-2] . " " . $text_explode[$exp_text_size-1] . "... </a>"; // последние три слова обернутые в ссылку и ... в конце
            array_splice($text_explode, $exp_text_size-3, replacement:$str); // удаляем последние три элементра из массива и добавляем $str в конец
            $row['text'] = implode(' ', $text_explode); // создаем строку из массива, объединяя элементы пробелом
        endforeach;

        return $d;
    }

    public function get_data()
    {
        $data = $this->db->getAll('articles');


        return Model_Articles::articleText_handle($data);
    }


    public function get_article($params)
    {
        $data = $this->db->getRow('articles', " WHERE id = :id", array(':id' => $params));
        return $data;
    }
}
