<?php
class Model_Articles extends Model
{
    public function get_data()
    {
        $data = $this->db->getAll('articles');
        return $data;
    }

    public function get_article($params)
    {
        $data = $this->db->getRow('articles', " WHERE id = :id", array(':id' => $params));
        return $data;
    }
}