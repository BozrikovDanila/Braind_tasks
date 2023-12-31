<?php
function decode_str($input, $code, $dict)
{
    $str1 = ''; // расшифрованный текст

    for ($i = 0, $j = 0; $i < mb_strlen($input); $i++, $j++) {
        $input_symb = $dict[mb_substr($input, $i, 1, 'UTF-8')];
        $code_symb = $dict[mb_substr($code, $j, 1, 'UTF-8')];
        $decode_symb = $input_symb ^ $code_symb; // XOR

        //$str1 .= array_search($decode_symb, $dict); // ВАРИАНТ №1 через функцию поиска ключа по значению

        // ВАРИАНТ №2 через UTF-8 character table
        // когда символ имеет код больше 9 (код соответствует словарю $dict), то дельта будет 1040, так как в $dict нет "Й", а в utf8-character-table есть
        // код 124 в таблице utf8 == "|";   "|"(0 согласно $dict) + 124 = 124
        $delta = $decode_symb == 0 ? 124 : ($decode_symb > 9 ? 1040 : 1039);
        $str1 .= mb_chr($decode_symb + $delta, 'UTF-8'); // конкатенируем символ в аккумулирующую строку

        if ($j == mb_strlen($code) - 1) $j = -1; // дошёл до последнего символа строки, перед инкрементацией ставим $j = -1 => в начале цикла $j будет равна 0
    }

    return $str1;
}

// словарь (*~*)
$dict = array(
    '|' => 0,
    'А' => 1,
    'Б' => 2,
    'В' => 3,
    'Г' => 4,
    'Д' => 5,
    'Е' => 6,
    'Ж' => 7,
    'З' => 8,
    'И' => 9,
    'К' => 10,
    'Л' => 11,
    'М' => 12,
    'Н' => 13,
    'О' => 14,
    'П' => 15,
    'Р' => 16,
    'С' => 17,
    'Т' => 18,
    'У' => 19,
    'Ф' => 20,
    'Х' => 21,
    'Ц' => 22,
    'Ч' => 23,
    'Ш' => 24,
    'Щ' => 25,
    'Ъ' => 26,
    'Ы' => 27,
    'Ь' => 28,
    'Э' => 29,
    'Ю' => 30,
    'Я' => 31
);

$serv_mes = 'ООО|СТРОИГАЗМОНТАЖ'; // расшифрованный текст
$enc_serv_mes = 'ЯЗБИФФАСЫННМБДСЯЗН'; // зашифрованный фрагмент
$to_dec_mes = 'РЗМШМГЮПЬДЕКБГЧЛВШ'; // оставшееся сообщение для расшифровки


echo 'Злоумышленники не успели удалить с сервера: ' . $serv_mes . ' => ' . '... (кодовое слово) ...' . ' => ' .
    $enc_serv_mes . '<br>';

$res = decode_str($serv_mes, $enc_serv_mes, $dict); // кодовое слово

echo 'Кодовое слово: <strong>' . $res . "</strong><br>";

$message = decode_str($to_dec_mes, $res, $dict); // расшифрованное сообщение

echo 'Оставшееся сообщение: ' . $to_dec_mes . ' => ' . $res . ' => <strong>' . $message
     . '</strong><br>';
