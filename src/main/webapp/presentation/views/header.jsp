<!DOCTYPE html>
<html lang="en">
<%@taglib prefix="c" uri="jakarta.tags.core" %>

    <!-- molla/checkout.html  22 Nov 2019 09:55:06 GMT -->

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>PetPet</title>
        <meta name="keywords" content="HTML5 Template">
        <meta name="description" content="PetPet">
        <meta name="author" content="p-themes">
        <!-- Favicon -->

        <link rel="apple-touch-icon" sizes="180x180" href="/petpet/presentation/assets/images/icons/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="32x32"
            href="/petpet/presentation/assets/images/icons/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16"
            href="/petpet/presentation/assets/images/icons/favicon-32x32.png">
        <link rel="manifest" href="/petpet/presentation/assets/images/icons/site.html">
        <link rel="mask-icon" href="/petpet/presentation/assets/images/icons/safari-pinned-tab.svg" color="#666666">

        <meta name="apple-mobile-web-app-title" content="PetPet">
        <meta name="application-name" content="PetPet">
        <meta name="msapplication-TileColor" content="#cc9966">
        <meta name="msapplication-config" content="/petpet/presentation/assets/images/icons/browserconfig.xml">
        <meta name="theme-color" content="#ffffff">
        <!-- Plugins CSS File -->
        <link rel="stylesheet" href="/petpet/presentation/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">

        <!-- Main CSS File -->
        <link rel="stylesheet" href="/petpet/presentation/assets/css/style.css">
        <link rel="stylesheet" href="/petpet/presentation/assets/css/product.css">
        <style>
            .menu .megamenu.megamenu-md {
                left: 0px;
            }
        </style>
    </head>

    <body>
        <div class="page-wrapper">
            <header class="header">
                <div class="header-top">
                    <div class="container">
                        <div class="header-left">



                        </div><!-- End .header-left -->

                        <div class="header-right">
                            <ul class="top-menu">
                                <li>
                                    <a href="#">Links</a>
                                    <ul>
                                        <li><a href="tel:#"><i class="icon-phone"></i>Call: +0123 456 789</a></li>

                                        <li><a href="/petpet/about">About Us</a></li>
                                        <li><a href="/petpet/contact">Contact Us</a></li>
                                        <li><a href="/petpet/login" data-toggle="modal"><i
                                                    class="icon-user"></i>Login</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul><!-- End .top-menu -->
                        </div><!-- End .header-right -->
                    </div><!-- End .container -->
                </div><!-- End .header-top -->

                <div class="header-middle sticky-header">
                    <div class="container">
                        <div class="header-left">
                            <button class="mobile-menu-toggler">
                                <span class="sr-only">Toggle mobile menu</span>
                                <i class="icon-bars"></i>
                            </button>

                            <a href="/petpet/home" class="logo">
                                <img src="/petpet/presentation/assets/images/logo.png" alt="PetPet Logo" width="105"
                                    height="25">
                            </a>

                            <nav class="main-nav">
                                <ul class="menu sf-arrows">
                                    <li class="megamenu-container active">
                                        <a href="/petpet/home">Home</a>
                                    </li>
                                    <li>
                                        <a href="/petpet/Shop">Shop</a>
                                    </li>
                                    <li>
                                        <a href="/petpet/about">About</a>
                                    </li>
                                    <c:choose>
                                        <c:when test="${empty sessionScope.userSession}">
                                            <li><a href="/petpet/login">Sign In/Up</a></li>
                                        </c:when>
                                        <c:otherwise>
                                            <li> <a href="javascript:void(0)">Profile </a>
                                                <div class="megamenu megamenu-md">
                                                    <div class="row no-gutters">
                                                        <div class="">
                                                            <div class="menu-col">
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <div class="menu-title"><a
                                                                                href="/petpet/my-account">My Account</a>
                                                                        </div>
                                                                        <div class="menu-title"><a
                                                                                href="/petpet/logout">Logout</a></div>
                                                                    </div><!-- End .col-md-6 -->
                                                                </div><!-- End .row -->
                                                            </div><!-- End .menu-col -->
                                                        </div><!-- End .col-md-8 -->
                                                    </div>
                                                </div>
                                            </li>
                                        </c:otherwise>
                                    </c:choose>
                                </ul><!-- End .menu -->
                            </nav><!-- End .main-nav -->
                        </div><!-- End .header-left -->

                        <div class="header-right">
                            <div class="header-search">
                                <a href="#" class="search-toggle" role="button" title="Search"><i
                                        class="icon-search"></i></a>
                                <form action="#" method="get">
                                    <div class="header-search-wrapper">
                                        <label for="q" class="sr-only">Search</label>
                                        <input type="search" class="form-control" name="q" id="q"
                                            placeholder="Search in..." required>
                                    </div><!-- End .header-search-wrapper -->
                                </form>
                            </div><!-- End .header-search -->


                            <div id="cartContainer">
                                <jsp:directive.include file="usercart.jsp" />
                            </div>


                        </div><!-- End .header-right -->
                    </div><!-- End .container -->
                </div><!-- End .header-middle -->
            </header><!-- End .header -->