<section class="main_content">
    <div class="container">
        <div class="row">
            <?php
                // $data - аргумент в функции View->generate()

                foreach ($data as $row): // выводим каждую статью
                    $num_of_symb = 250; // кол-во считываемых символов
                    $row['text'] = mb_strimwidth($row['text'], 0, $num_of_symb, '', 'UTF-8'); // обрезаем 250 символов
                    $text_explode = explode(" ", mberegi_replace('&nbsp;', ' ', $row["text"])); // получаем массив слов разделенных по пробелам
                    $exp_text_size = sizeof($text_explode); // получаем кол-во элмементов массива, чтобы обратиться к поледним трем
                    $last_words_len = mb_strlen($text_explode[$exp_text_size-3]) + mb_strlen($text_explode[$exp_text_size-2]) + mb_strlen($text_explode[$exp_text_size-1]) +  2 * mb_strlen(' '); // длина последних трёх слов и 2 пробела
                    $row['text'] = mb_strimwidth($row['text'], 0, mb_strlen($row['text'])-$last_words_len, '', 'UTF-8'); // обрезаем из прошлой строки последние три слова и ставим пробел
                    $row['text'] .= "<a href=\"/articles/article/". $row['id'] . "\">" . $text_explode[$exp_text_size-3] .
                        " " . $text_explode[$exp_text_size-2] . " " . $text_explode[$exp_text_size-1] . "... </a>";; // вставляем последние три слова обернутые в ссылку и ... в конце

            ?>

            <!-- Карточка статьи -->
                <div class="row">
                    <div class="col col-lg-8">
                        <div class="card border-primary mb-3"">
                            <div class="card-body text-primary">
                                <h5 class="card-title"><a class="link-primary link-offset-3 link-underline-opacity-25 link-underline-opacity-100-hover" href="/articles/article/<?=$row["id"]?>"><?=$row["title"]?></a></h5>
                                <p class="card-text"><?=$row["text"]?></p>
                            </div>
                            <div class="card-footer bg-transparent border-primary">
                                <ul class="list-inline text-primary">
                                    <li class="list-inline-item"><i class="fa-solid fa-user" style="color: #3370ff;"></i> Иванов И.И</li>
                                    <li class="list-inline-item">|</li>
                                    <li class="list-inline-item"><i class="fa-sharp fa-solid fa-calendar-days" style="color: #3370ff;"></i> 22.10.23</li>
                                    <li class="list-inline-item">|</li>
                                    <li class="list-inline-item"><i class="fa-solid fa-hashtag" style="color: #2e7bff;"></i> Braind</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

            <?php
                endforeach;
            ?>
            <div class="col col-lg-4">
        </div>
    </div>
    </div>
</section>