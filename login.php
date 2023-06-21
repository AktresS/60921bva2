<?php
    session_start(["use_strict_mode" => true]);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cup Coffee</title>
    <link rel="stylesheet" href="css/form_main.css">
<!--    <link rel="stylesheet" href="css/form_media.css">-->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>

<body>
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="authentication">
                    <div class="enter">
                        <a href="#" class="user"><img src="img/icons/user.svg" alt="">Вход</a>
                    </div>  
                    <div class="registration_block">
                        <a href="#" class="registration">Регистрация</a>
                    </div>
                </div>
                
                <div class="menu">
                    <a href="#!" class="logo"><img src="img/icons/logo.svg" alt=""></a>
                    <div class="box-search-box">
                        <div class="search-box">
                            <a href="#!" class="search-icn"><img src="img/icons/grey-search.svg" alt=""></a>
                            <input type="text" class="search" name="" placeholder="Поиск">
                        </div>
                    </div>
                    <div class="internal_menu">
                        <nav>
                            <ul class="nav_menu">
                                <li class="list"><a href="">Каталог</a></li>
                                <li class="list"><a href="">Доставка</a></li>
                                <li class="list"><a href="">Скидки</a></li>
                                <li class="list"><a href="">Отзывы</a></li>
                            </ul>
                            <button class="nav-button">
                                <img src="img/icons/burger2.svg" alt="">
                            </button>
                        </nav>
                    </div>
                    <div class="s_h_b">
                        <a href="" class="but"><img src="img/icons/search.svg" alt=""></a>
                        <a href="" class="but"><img src="img/icons/favorites.svg" alt=""></a>
                        <a href="" class="but"><img src="img/icons/basket.svg" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <section class="section_form">
        <div class="container">
            <form method="post" action="signin.php" class="form">
                <h1 class="form_title">Вход на сайт</h1>
                
                <div class="form__group">
                    <input type="text" class="form_input" placeholder="Логин" name="login">
                    <input type="password" class="form_input" placeholder="Пароль" name="password">
                </div>

                <button class="form__button" type="submit">Войти</button>
                <p class="form_avto">У вас нет аккаунта? - <a href="register.php">зарегистрируйся</a>!</p>
                <?php
                if (isset($_SESSION['message'])){
                    echo '<p class="msg">' . $_SESSION['message'] . '</p>';
                }
                unset($_SESSION['message']);
                ?>
            </form>
        </div>
        
    </section>

    <footer class="footer">
        <div class="container">
            <div class="fot-con">
                <div class="fot-logo"><img src="img/icons/logo.svg" alt=""></div>
                <div class="fot-menu">
                    <div class="fot-internal_menu">
                        <nav>
                            <ul class="fot-nav-menu">
                                <li class="fot-list"><a href="">Каталог</a></li>
                                <li class="fot-list"><a href="">Доставка</a></li>
                                <li class="fot-list"><a href="">Скидки</a></li>
                                <li class="fot-list"><a href="">Отзывы</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="subsribe">
                    <h3>Подпишитесь на нас</h3>
                    <div class="social">
                        <div class="fot-soc">
                            <img src="img/icons/telega.svg" alt="">
                            <p>cupcoffee</p>
                        </div>
                        <div class="fot-soc">
                            <img src="img/icons/vk.svg" alt="">
                            <p>cupcoffee</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>