<section class="main_content">
    <div class="container">
        <div class="row">
            <?php
            // $data - аргумент в функции View->generate()
            foreach ($data as $row): // выводим каждую статью
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
            <div class="col col-lg-4"></div>
        </div>
    </div>
</section>
