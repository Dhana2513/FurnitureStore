<!-- Header -->
<header>
    <div class="header-wrapper">
        <!-- Desktop Menu -->
        <div class="header-wrapper-desktop d-none d-lg-block">
            <div class="header header-style-1">
                <div class="header-main">
                    <div class="header__logo">
                        <a href="index.php">
                            <img src="style/images/icon/logo_01.png" alt="Lyrae">
                        </a>
                    </div>
                    <nav class="header__navbar" style="margin-left: 200px">
                        <ul class="navbar-menu">
                            <li class="active">
                                <a href="index.php" style="font-size: 14px">HOME PAGE</a>
                            </li>
                            <li>
                                <a href="#" style="font-size: 14px">Category</a>
                                <ul class="sub-menu">
                                    <?php
                                    $q = "SELECT * FROM categories ORDER BY position ASC ";
                                    $r = mysqli_query($dbc, $q);
                                    while ($rows = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
                                        echo "<li><a href='category.php?cid={$rows['cat_id']}' style='font-size: 15px'>{$rows['cat_name']}</a></li>";
                                    }
                                    ?>
                                </ul>
                            </li>
                            <li>
                                <a href="contact.php" style="font-size: 14px">CONTACT</a>
                            </li>
                            <?php
                            //    session_start();
                            if (isset($_SESSION['is_user_login']) && !empty($_SESSION['is_user_login'])) {
                                if (!$_SESSION['is_user_login']) {
                                    echo ' <li>
                                <a href="login.php" style="font-size: 14px" >LOGIN</a>
                            </li>';
                                }
                            } else {
                                echo ' <li>
                                <a href="login.php" style="font-size: 14px" >LOGIN</a>
                            </li>';
                            }

                            ?>
                            <li>
                                <a href="about.php" style="font-size: 14px">ABOUNT US</a>
                            </li>

                        </ul>
                    </nav>
                    <div class="header__button">
                        <ul>
                            <li class="header-search">
                                <form action="search.php" method="get">
                                    <div class="search-button">
                                        <img src="style/images/icon/header-search.png" alt="Search">
                                    </div>
                                    <div class="search-input">
                                        <input type="search" name="search" placeholder="Search product...">
                                        <input type="submit" name="ok" style="display: none">
                                        <a href="#"></a>
                                    </div>
                                </form>
                            </li>
                            <li class="header-shop-cart">
                                <div class="shop-cart-button">
                                    <?php if (isset($_SESSION['cart'])) {
                                        $amount = count($_SESSION['cart']);
                                        echo "<span class='amount'>{$amount}</span>";
                                        echo "<a href=\"cart.php\"><img src=\"style/images/icon/header-cart.png\" alt=\"Cart\"></a>";
                                    } else {
                                        echo "<img src=\"style/images/icon/header-cart.png\" alt=\"Cart\">";
                                    ?>


                                </div>
                                <div class="shop-cart">
                                    <ul class="shop-cart__list">
                                        <?php
                                        if (empty($_SESSION['cart'])) {

                                            echo "<p>There are currently no products</p>";
                                        }
                                        ?>
                                </div>
                            <?php } ?>
                            </li>

                            <?php

                            if (isset($_SESSION['is_user_login']) && !empty($_SESSION['is_user_login'])) {
                                if ($_SESSION['is_user_login']) {
                            ?>
                                    <li>
                                        <a href="account.php">
                                            <img src="admin/images/person-icon.png" alt="profile" />
                                        </a>

                                    </li>
                            <?php
                                }
                            }
                            ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Desktop Menu -->
    </div>
</header>
<!-- End Heder -->