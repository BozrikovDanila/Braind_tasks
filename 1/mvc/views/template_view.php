<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<title>Главная</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/1c1e2ceeef.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../../css/main.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg sticky-top navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="/main">Braind</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto me-auto mb-2 mb-lg-0 d-flex">
                    <li class="nav-item text-white">
                        <a class="nav-link" aria-current="page" href="/main">Главная</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/articles">Статьи</a>
                    </li>
            </div>
        </div>
    </nav>


    <?php
        // $content_view аргумент функции View->generate()
        include 'mvc/views/'.$content_view;
    ?>


    <footer class="d-flex justify-content-center align-items-center bg-primary mt-auto py-3">
        <a href="https://braind.agency/" data-bs-toggle="tooltip" data-bs-placement="bottom" title="BraindAgency" class="col-xl-1 justify-content-end ps-5 text-white">
            <img src="../../img/braind_logo.png" alt="Braind" width="45" height="36">
        </a>
        <p class="col-3 justify-content-start mb-0 me-auto text-white">
            © 2023 Бозриков Д.С.
        </p>
        <div class="col-2 ms-me-auto mb-0">
            <a href="mailto:bozrikov03@mail.ru" data-bs-toggle="tooltip" data-bs-placement="top" title="bozrikov03@mail.ru" class="link-dark text-decoration-none">
                <i class="fa-sharp fa-solid fa-envelope fa-xl" style="color: #f04242;"></i>
        </div>
        </a>
        <ul class="nav col-4 justify-content-end pe-5">
            <li class="nav-item"><a href="/main" class="nav-link px-2 text-white">Главная</a></li>
            <li class="nav-item"><a href="/articles" class="nav-link px-2 text-white">Статьи</a></li>
        </ul>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>