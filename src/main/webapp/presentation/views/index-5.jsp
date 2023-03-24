<%@taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">

    <!-- molla/index-5.jsp  22 Nov 2019 09:55:58 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1,
            shrink-to-fit=no">
        <title>PetPet</title>
        <meta name="keywords" content="PetPet">
        <meta name="description" content="PetPet">
        <meta name="author" content="p-themes">
        <!-- Favicon -->
        <link rel="apple-touch-icon" sizes="180x180"
            href="/petpet/presentation/assets/images/icons/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32"
            href="/petpet/presentation/assets/images/icons/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16"
            href="/petpet/presentation/assets/images/icons/favicon-32x32.png">
        <link rel="manifest"
            href="/petpet/presentation/assets/images/icons/site.jsp">
        <!-- <link rel="mask-icon" href="/petpet/presentation/assets/images/icons/safari-pinned-tab.svg" color="#666666"> -->
        <!-- <link rel="shortcut icon" href="/petpet/presentation/assets/images/icons/favicon.ico"> -->
        <meta name="apple-mobile-web-app-title" content="PetPet">
        <meta name="application-name" content="PetPet">
        <meta name="msapplication-TileColor" content="#cc9966">
        <meta name="msapplication-config"
            content="/petpet/presentation/assets/images/icons/browserconfig.xml">
        <meta name="theme-color" content="#ffffff">
        <!-- Plugins CSS File -->
        <link rel="stylesheet"
            href="/petpet/presentation/assets/css/bootstrap.min.css">
        <link rel="stylesheet"
            href="/petpet/presentation/assets/css/plugins/owl-carousel/owl.carousel.css">
        <link rel="stylesheet"
            href="/petpet/presentation/assets/css/plugins/magnific-popup/magnific-popup.css">
        <link rel="stylesheet"
            href="/petpet/presentation/assets/css/plugins/jquery.countdown.css">
        <!-- Main CSS File -->
        <!-- content Style -->
        <link rel="stylesheet" href="/petpet/presentation/assets/css/style.css">
        <!-- header style -->
        <link rel="stylesheet"
            href="/petpet/presentation/assets/css/skins/skin-demo-5.css">
        <link rel="stylesheet"
            href="/petpet/presentation/assets/css/demos/demo-5.css">
    </head>

    <body>
        <div class="page-wrapper">
            <header class="header header-5">
                <div class="header-middle sticky-header">
                    <div class="container-fluid">
                        <div class="header-left">
                            <button class="mobile-menu-toggler">
                                <span class="sr-only">Toggle mobile menu</span>
                                <i class="icon-bars"></i>
                            </button>

                            <a href="/petpet/presentation/views/home"
                                class="logo">
                                <img
                                    src="/petpet/presentation/assets/images/demos/demo-5/logo.png"
                                    alt="Molla Logo" width="105" height="25">
                            </a>

                            <nav class="main-nav">
                                <ul class="menu sf-arrows">
                                    <li>
                                        <a
                                            href="/petpet/home">Home</a>
                                    </li>
                                    <li>
                                        <a
                                            href="/petpet/Shop">Shop</a>
                                    </li>

                                    <li>
                                        <a
                                            href="/petpet/about">About</a>
                                    </li>
                                    <li>
                                        <a
                                            href="/petpet/contact">Contact</a>
                                    </li>
                                    <c:choose>
                                        <c:when test="${empty sessionScope.userSession}">
                                            <li><a href="/petpet/login">Login</a></li>
                                        </c:when>
                                        <c:otherwise>
                                            <!-- Code to be executed if the expression is false -->
                                            <li></li>
                                        </c:otherwise>
                                    </c:choose>

                                </ul><!-- End of Nav -->

                            </nav><!-- End .main-nav -->
                        </div><!-- End .header-left -->

                        <div class="header-right">
                            <div class="header-search header-search-extended
                                header-search-visible">
                                <a href="#" class="search-toggle" role="button"><i
                                        class="icon-search"></i></a>
                                <form action="#" method="get">
                                    <div class="header-search-wrapper">
                                        <label for="q" class="sr-only">Search</label>
                                        <input type="search"
                                            class="form-control" name="q" id="q"
                                            placeholder="Search product ..."
                                            required>
                                        <button class="btn btn-primary"
                                            type="submit"><i
                                                class="icon-search"></i></button>
                                    </div><!-- End .header-search-wrapper -->
                                </form>
                            </div><!-- End .header-search -->
                            <c:if test="${not empty sessionScope.userSession}">

                                <div class="nav-line-1-container" style="visibility: hidden;" > &amp; &amp; </div>
                                <div class="nav-line-1-container">
                                     <span id="nav-link-accountList-nav-line-1" style=" font-family: Poppins ; color: whitesmoke; font-weight: bold; position: center " class="nav-line-1 nav-progressive-content">
                                      Hello ,  ${sessionScope.userSession.getName()}
                                </span>
                                </div>
                            </c:if>

                        <jsp:directive.include file="usercart.jsp" />


                        </div><!-- End .header-right -->
                    </div><!-- End .container-fluid -->
                </div><!-- End .header-middle -->
            </header><!-- End .header -->

            <main class="main">
                <div class="intro-slider-container mb-0">
                    <div class="intro-slider owl-carousel owl-theme
                        owl-nav-inside owl-light" data-toggle="owl"
                        data-owl-options='{" nav": false, "dots": false}'>
                        <div class="intro-slide" style="background-image:
                            url(/petpet/presentation/assets/images/demos/demo-5/slider/slide-4.jpg);">
                            <div class="container intro-content text-center">
                                <h3 class="intro-subtitle text-white">Discover over collections</h3> <br><!-- End .h3 intro-subtitle -->
                                <h1 class="intro-title text-white">Mystery Deals</h1><!-- End .intro-title -->
                                <div class="intro-text text-white">Online Only</div><!-- End .intro-text -->
                                <a
                                    href="/petpet/Shop"
                                    class="btn btn-primary">Discover NOW</a>
                            </div><!-- End .intro-content -->
                        </div><!-- End .intro-slide -->

                        <div class="intro-slide" style="background-image:
                            url(/petpet/presentation/assets/images/demos/demo-5/slider/slide-7.jpg);">
                            <div class="container intro-content text-center">
                                <h3 class="intro-subtitle text-white">Limited
                                    time only</h3><!-- End .h3 intro-subtitle -->
                                <h1 class="intro-title text-white">Pet your pet..now</h1><!-- End .intro-title -->
                                <div class="intro-text text-white">Up to 50% OFF</div><!-- End .intro-text -->
                                <a
                                    href="/petpet/Shop"
                                    class="btn btn-primary">Shop NOW</a>
                            </div><!-- End .intro-content -->
                        </div><!-- End .intro-slide -->
                    </div><!-- End .intro-slider owl-carousel owl-theme -->
                    <span class="slider-loader text-white"></span><!-- End .slider-loader -->
                </div><!-- End .intro-slider-container -->

                <div class="brands-border owl-carousel owl-simple mb-5"
                    data-toggle="owl"
                    data-owl-options='{
                    "nav": false,
                    "dots": false,
                    "margin": 0,
                    "loop": false,
                    "responsive": {
                    "0": {
                    "items":2
                    },
                    "420": {
                    "items":3
                    },
                    "600": {
                    "items":4
                    },
                    "900": {
                    "items":5
                    },
                    "1024": {
                    "items":6
                    },
                    "1360": {
                    "items":7
                    }
                    }
                    }'>
                    <a href="#" class="brand">
                        <img
                            src="/petpet/presentation/assets/images/brands/1.png"
                            alt="Brand Name">
                    </a>

                    <a href="#" class="brand">
                        <img
                            src="/petpet/presentation/assets/images/brands/2.png"
                            alt="Brand Name">
                    </a>

                    <a href="#" class="brand">
                        <img
                            src="/petpet/presentation/assets/images/brands/3.png"
                            alt="Brand Name">
                    </a>

                    <a href="#" class="brand">
                        <img
                            src="/petpet/presentation/assets/images/brands/4.png"
                            alt="Brand Name">
                    </a>

                    <a href="#" class="brand">
                        <img
                            src="/petpet/presentation/assets/images/brands/5.png"
                            alt="Brand Name">
                    </a>

                    <a href="#" class="brand">
                        <img
                            src="/petpet/presentation/assets/images/brands/6.png"
                            alt="Brand Name">
                    </a>

                    <a href="#" class="brand">
                        <img
                            src="/petpet/presentation/assets/images/brands/7.png"
                            alt="Brand Name">
                    </a>
                </div><!-- End .owl-carousel -->

                <div class="container">
                    <div class="banner-group">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="banner banner-border">
                                    <a href="#">
                                        <img
                                            src="/petpet/presentation/assets/images/demos/demo-5/banners/banner-5.jpg"
                                            alt="Banner">
                                    </a>

                                    <div class="banner-content">
                                        <h4 class="banner-subtitle"><a href="#">Trending
                                                now</a></h4><!-- End .banner-subtitle -->
                                        <h3 class="banner-title"><a href="#"><span>This
                                                    Week's<br>Most Wanted</span></a></h3><!-- End .banner-title -->
                                        <a href="#" class="btn
                                            btn-outline-primary-2 banner-link">Discover
                                            Now<i class="icon-long-arrow-right"></i></a>
                                    </div><!-- End .banner-content -->
                                </div><!-- End .banner -->
                            </div><!-- End .col-md-6-->

                            <div class="col-md-6">
                                <div class="banner banner-border-hover">
                                    <a href="#">
                                        <img
                                            src="/petpet/presentation/assets/images/demos/demo-5/banners/banner-8.jpg"
                                            alt="Banner">
                                    </a>

                                    <div class="banner-content">
                                        <h4 class="banner-subtitle"><a href="#">Limited
                                                time only.</a></h4><!-- End .banner-subtitle -->
                                        <h3 class="banner-title"><a href="#"><span>Trainers
                                                    & Sportwear<br>Sale Up to
                                                    70% off</span></a></h3><!-- End .banner-title -->
                                        <a href="#" class="btn
                                            btn-outline-primary-2 banner-link">Shop
                                            Now<i class="icon-long-arrow-right"></i></a>
                                    </div><!-- End .banner-content -->
                                </div><!-- End .banner -->

                                <div class="banner banner-border-hover">
                                    <a href="#">
                                        <img
                                            src="/petpet/presentation/assets/images/demos/demo-5/banners/banner-7.jpg"
                                            alt="Banner">
                                    </a>

                                    <div class="banner-content">
                                        <h4 class="banner-subtitle"><a href="#">This
                                                week we love...</a></h4><!-- End .banner-subtitle -->
                                        <h3 class="banner-title"><a href="#"><span>Womens
                                                    <br>Holiday Clothes</span></a></h3><!-- End .banner-title -->
                                        <a href="#" class="btn
                                            btn-outline-primary-2 banner-link">Discover
                                            Now<i class="icon-long-arrow-right"></i></a>
                                    </div><!-- End .banner-content -->
                                </div><!-- End .banner -->
                            </div><!-- End .col-md-6 -->
                        </div><!-- End .row -->
                    </div><!-- End .banner-group -->
                </div><!-- End .container -->

                <div class="mb-4"></div><!-- End .mb-6 -->

                <div class="container">
                    <div class="heading heading-center mb-3">
                        <h2 class="title">Trendy Products</h2><!-- End .title -->
                        <ul class="nav nav-pills justify-content-center"
                            role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="trendy-all-link"
                                    data-toggle="tab" href="#trendy-all-tab"
                                    role="tab" aria-controls="trendy-all-tab"
                                    aria-selected="true">All</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="trendy-women-link"
                                    data-toggle="tab" href="#trendy-women-tab"
                                    role="tab" aria-controls="trendy-women-tab"
                                    aria-selected="false">Cats</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="trendy-men-link"
                                    data-toggle="tab" href="#trendy-men-tab"
                                    role="tab" aria-controls="trendy-men-tab"
                                    aria-selected="false">Dgos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="trendy-access-link"
                                    data-toggle="tab" href="#trendy-access-tab"
                                    role="tab" aria-controls="trendy-access-tab"
                                    aria-selected="false">Accessories</a>
                            </li>
                        </ul>
                    </div><!-- End .heading -->

                    <div class="tab-content tab-content-carousel">
                        <div class="tab-pane p-0 fade show active"
                            id="trendy-all-tab" role="tabpanel"
                            aria-labelledby="trendy-all-link">
                            <div class="owl-carousel owl-simple
                                carousel-equal-height carousel-with-shadow"
                                data-toggle="owl"
                                data-owl-options='{
                                "nav": false,
                                "dots": true,
                                "margin": 20,
                                "loop": false,
                                "responsive": {
                                "0": {
                                "items":2
                                },
                                "480": {
                                "items":2
                                },
                                "768": {
                                "items":3
                                },
                                "992": {
                                "items":4
                                },
                                "1200": {
                                "items":4,
                                "nav": true
                                }
                                }
                                }'>
                                <div class="product product-2">
                                    <figure class="product-media">
                                        <a
                                            href="/petpet/presentation/views/product.jsp">
                                            <img
                                                src="/petpet/presentation/assets/images/products/single-cat/cat-single-1.jpg"
                                                alt="Product image"
                                                class="product-image">
                                            <img
                                                src="/petpet/presentation/assets/images/products/single-cat/cat-single-2.jpg"
                                                alt="Product image"
                                                class="product-image-hover">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon
                                                btn-wishlist btn-expandable"
                                                title="Add to wishlist"><span>add
                                                    to wishlist</span></a>
                                        </div><!-- End .product-action -->

                                        <div class="product-action
                                            product-action-transparent">
                                            <a href="#" class="btn-product
                                                btn-cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Cats</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a
                                                href="/petpet/presentation/views/product.jsp">Vest
                                                dress</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            $9.99
                                        </div><!-- End .product-price -->


                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product product-2">
                                    <figure class="product-media">
                                        <a
                                            href="/petpet/presentation/views/product.jsp">
                                            <img
                                                src="/petpet/presentation/assets/images/products/single-dog/dog-single-1.jpg"
                                                alt="Product image"
                                                class="product-image">
                                            <img
                                                src="/petpet/presentation/assets/images/products/single-dog/dog-single-2.png"
                                                alt="Product image"
                                                class="product-image-hover">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon
                                                btn-wishlist btn-expandable"
                                                title="Add to wishlist"><span>add
                                                    to wishlist</span></a>
                                        </div><!-- End .product-action -->

                                        <div class="product-action
                                            product-action-transparent">
                                            <a href="#" class="btn-product
                                                btn-cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Dogs</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a
                                                href="/petpet/presentation/views/product.jsp">Dress
                                                with a belt</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            $29.99
                                        </div><!-- End .product-price -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product product-2">
                                    <figure class="product-media">
                                        <a
                                            href="/petpet/presentation/views/product.jsp">
                                            <img
                                                src="/petpet/presentation/assets/images/products/food/product-food-10.png"
                                                alt="Product image"
                                                class="product-image">
                                            <img
                                                src="/petpet/presentation/assets/images/images/products/food/product-food-10.png"
                                                alt="Product image"
                                                class="product-image-hover">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon
                                                btn-wishlist btn-expandable"
                                                title="Add to wishlist"><span>add
                                                    to wishlist</span></a>
                                        </div><!-- End .product-action -->

                                        <div class="product-action
                                            product-action-transparent">
                                            <a href="#" class="btn-product
                                                btn-cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Food</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a
                                                href="product.jsp">Sandals</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            <span class="new-price">Now $24.99</span>
                                            <span class="old-price">Was $30.99</span>
                                        </div><!-- End .product-price -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->

                                <div class="product product-2">
                                    <figure class="product-media">
                                        <a href="product.jsp">
                                            <img
                                                src="/petpet/presentation/assets/images/products/accessories/product-acs-1.jpg"
                                                alt="Product image"
                                                class="product-image">
                                            <img
                                                src="/petpet/presentation/assets/images/products/accessories/product-acs-1-1.jpg"
                                                alt="Product image"
                                                class="product-image-hover">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon
                                                btn-wishlist btn-expandable"
                                                title="Add to wishlist"><span>add
                                                    to wishlist</span></a>
                                        </div><!-- End .product-action -->

                                        <div class="product-action
                                            product-action-transparent">
                                            <a href="#" class="btn-product
                                                btn-cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Accessories</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a
                                                href="product.jsp">Bucket bag</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            $17.99
                                        </div><!-- End .product-price -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->
                                <div class="product product-2">
                                    <figure class="product-media">
                                        <a href="product.jsp">
                                            <img
                                                src="/petpet/presentation/assets/images/products/product-bird-1.jpg"
                                                alt="Product image"
                                                class="product-image">
                                            <img
                                                src="/petpet/presentation/assets/images/products/product-bird-1.jpg"
                                                alt="Product image"
                                                class="product-image-hover">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon
                                                btn-wishlist btn-expandable"
                                                title="Add to wishlist"><span>add
                                                    to wishlist</span></a>
                                        </div><!-- End .product-action -->

                                        <div class="product-action
                                            product-action-transparent">
                                            <a href="#" class="btn-product
                                                btn-cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Birds</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a
                                                href="product.jsp">Vest dress</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            $9.99
                                        </div><!-- End .product-price -->


                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->
                            </div><!-- End .owl-carousel -->
                        </div><!-- .End .tab-pane -->
                        <div class="tab-pane p-0 fade" id="trendy-women-tab"
                            role="tabpanel" aria-labelledby="trendy-women-link">
                            <div class="owl-carousel owl-simple
                                carousel-equal-height carousel-with-shadow"
                                data-toggle="owl"
                                data-owl-options='{
                                "nav": false,
                                "dots": true,
                                "margin": 20,
                                "loop": false,
                                "responsive": {
                                "0": {
                                "items":2
                                },
                                "480": {
                                "items":2
                                },
                                "768": {
                                "items":3
                                },
                                "992": {
                                "items":4
                                },
                                "1200": {
                                "items":4,
                                "nav": true
                                }
                                }
                                }'>
                                <div class="product product-2">
                                    <figure class="product-media">
                                        <a
                                                href="/petpet/presentation/views/product.jsp">
                                            <img
                                                    src="/petpet/presentation/assets/images/products/single-cat/cat-single-1.jpg"
                                                    alt="Product image"
                                                    class="product-image">
                                            <img
                                                    src="/petpet/presentation/assets/images/products/single-cat/cat-single-2.jpg"
                                                    alt="Product image"
                                                    class="product-image-hover">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon
                                                btn-wishlist btn-expandable"
                                               title="Add to wishlist"><span>add
                                                    to wishlist</span></a>
                                        </div><!-- End .product-action -->

                                        <div class="product-action
                                            product-action-transparent">
                                            <a href="#" class="btn-product
                                                btn-cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Cats</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a
                                                href="/petpet/presentation/views/product.jsp">Vest
                                            dress</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            $9.99
                                        </div><!-- End .product-price -->


                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->
                            </div><!-- End .owl-carousel -->
                        </div><!-- .End .tab-pane -->
                        <div class="tab-pane p-0 fade" id="trendy-men-tab"
                            role="tabpanel" aria-labelledby="trendy-men-link">
                            <div class="owl-carousel owl-simple
                                carousel-equal-height carousel-with-shadow"
                                data-toggle="owl"
                                data-owl-options='{
                                "nav": false,
                                "dots": true,
                                "margin": 20,
                                "loop": false,
                                "responsive": {
                                "0": {
                                "items":2
                                },
                                "480": {
                                "items":2
                                },
                                "768": {
                                "items":3
                                },
                                "992": {
                                "items":4
                                },
                                "1200": {
                                "items":4,
                                "nav": true
                                }
                                }
                                }'>
                                <div class="product product-2">
                                    <figure class="product-media">
                                        <a
                                                href="/petpet/presentation/views/product.jsp">
                                            <img
                                                    src="/petpet/presentation/assets/images/products/single-dog/dog-single-1.jpg"
                                                    alt="Product image"
                                                    class="product-image">
                                            <img
                                                    src="/petpet/presentation/assets/images/products/single-dog/dog-single-2.png"
                                                    alt="Product image"
                                                    class="product-image-hover">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon
                                                btn-wishlist btn-expandable"
                                               title="Add to wishlist"><span>add
                                                    to wishlist</span></a>
                                        </div><!-- End .product-action -->

                                        <div class="product-action
                                            product-action-transparent">
                                            <a href="#" class="btn-product
                                                btn-cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Dogs</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a
                                                href="/petpet/presentation/views/product.jsp">Dress
                                            with a belt</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            $29.99
                                        </div><!-- End .product-price -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->
                            </div><!-- End .owl-carousel -->
                        </div><!-- .End .tab-pane -->
                        <div class="tab-pane p-0 fade" id="trendy-access-tab"
                            role="tabpanel"
                            aria-labelledby="trendy-access-link">
                            <div class="owl-carousel owl-simple
                                carousel-equal-height carousel-with-shadow"
                                data-toggle="owl"
                                data-owl-options='{
                                "nav": false,
                                "dots": true,
                                "margin": 20,
                                "loop": false,
                                "responsive": {
                                "0": {
                                "items":2
                                },
                                "480": {
                                "items":2
                                },
                                "768": {
                                "items":3
                                },
                                "992": {
                                "items":4
                                },
                                "1200": {
                                "items":4,
                                "nav": true
                                }
                                }
                                }'>
                                <div class="product product-2">
                                    <figure class="product-media">
                                        <a href="product.jsp">
                                            <img
                                                    src="/petpet/presentation/assets/images/products/accessories/product-acs-1.jpg"
                                                    alt="Product image"
                                                    class="product-image">
                                            <img
                                                    src="/petpet/presentation/assets/images/products/accessories/product-acs-1-1.jpg"
                                                    alt="Product image"
                                                    class="product-image-hover">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon
                                                btn-wishlist btn-expandable"
                                               title="Add to wishlist"><span>add
                                                    to wishlist</span></a>
                                        </div><!-- End .product-action -->

                                        <div class="product-action
                                            product-action-transparent">
                                            <a href="#" class="btn-product
                                                btn-cart"><span>add to cart</span></a>
                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">Accessories</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a
                                                href="product.jsp">Bucket bag</a></h3><!-- End .product-title -->
                                        <div class="product-price">
                                            $17.99
                                        </div><!-- End .product-price -->
                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->
                            </div><!-- End .owl-carousel -->
                        </div><!-- .End .tab-pane -->
                    </div><!-- End .tab-content -->
                </div><!-- End .container -->

                <div class="mb-5"></div><!-- End .mb-5 -->

                <div class="video-banner video-banner-bg bg-image text-center"
                    style="background-image:
                    url(/petpet/presentation/assets/images/backgrounds/bg-6.jpg);">
                    <div class="container">
                        <h3 class="video-banner-title h1 text-white"><span>New
                                Collection</span><strong>Winter <i>/</i>
                                Spring</strong></h3><!-- End .video-banner-title -->

                    </div><!-- End .container -->
                </div><!-- End .video-banner bg-image -->

<%--                <div class="container pt-6 new-arrivals">--%>
<%--                    <div class="heading heading-center mb-3">--%>
<%--                        <h2 class="title">New Arrivals</h2><!-- End .title -->--%>
<%--                        <ul class="nav nav-pills justify-content-center"--%>
<%--                            role="tablist">--%>
<%--                            <li class="nav-item">--%>
<%--                                <a class="nav-link active" id="new-all-link"--%>
<%--                                    data-toggle="tab" href="#new-all-tab"--%>
<%--                                    role="tab" aria-controls="new-all-tab"--%>
<%--                                    aria-selected="true">All</a>--%>
<%--                            </li>--%>
<%--                            <li class="nav-item">--%>
<%--                                <a class="nav-link" id="new-cloth-link"--%>
<%--                                    data-toggle="tab" href="#new-cloth-tab"--%>
<%--                                    role="tab" aria-controls="new-cloth-tab"--%>
<%--                                    aria-selected="false">Clothing</a>--%>
<%--                            </li>--%>
<%--                            <li class="nav-item">--%>
<%--                                <a class="nav-link" id="new-shoes-link"--%>
<%--                                    data-toggle="tab" href="#new-shoes-tab"--%>
<%--                                    role="tab" aria-controls="new-shoes-tab"--%>
<%--                                    aria-selected="false">Shoes & Boots</a>--%>
<%--                            </li>--%>
<%--                            <li class="nav-item">--%>
<%--                                <a class="nav-link" id="new-access-link"--%>
<%--                                    data-toggle="tab" href="#new-access-tab"--%>
<%--                                    role="tab" aria-controls="new-access-tab"--%>
<%--                                    aria-selected="false">Accessories</a>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </div><!-- End .heading -->--%>

<%--                    <div class="tab-content">--%>
<%--                        <div class="tab-pane p-0 fade show active"--%>
<%--                            id="new-all-tab" role="tabpanel"--%>
<%--                            aria-labelledby="new-all-link">--%>
<%--                            <div class="products">--%>
<%--                                <div class="row justify-content-center">--%>
<%--                                    <div class="col-6 col-md-4 col-lg-3">--%>
<%--                                        <div class="product product-2">--%>
<%--                                            <figure class="product-media">--%>
<%--                                                <a href="product.jsp">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-5-1.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-5-2.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image-hover">--%>
<%--                                                </a>--%>

<%--                                                <div--%>
<%--                                                    class="product-action-vertical">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product-icon--%>
<%--                                                        btn-wishlist" title="Add--%>
<%--                                                        to wishlist"><span>add--%>
<%--                                                            to wishlist</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                                <div class="product-action--%>
<%--                                                    product-action-transparent">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product--%>
<%--                                                        btn-cart"><span>add to--%>
<%--                                                            cart</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                            </figure><!-- End .product-media -->--%>
<%--                                            <div class="product-body">--%>
<%--                                                <div class="product-cat">--%>
<%--                                                    <a href="#">Clothing</a>--%>
<%--                                                </div><!-- End .product-cat -->--%>
<%--                                                <h3 class="product-title"><a--%>
<%--                                                        href="product.jsp">Linen-blend--%>
<%--                                                        dress</a></h3><!-- End .product-title -->--%>
<%--                                                <div class="product-price">--%>
<%--                                                    $60.00--%>
<%--                                                </div><!-- End .product-price -->--%>
<%--                                                <div class="product-nav--%>
<%--                                                    product-nav-dots">--%>
<%--                                                    <a href="#" class="active"--%>
<%--                                                        style="background:--%>
<%--                                                        #e5dcb1;"><span--%>
<%--                                                            class="sr-only">Color--%>
<%--                                                            name</span></a>--%>
<%--                                                    <a href="#"--%>
<%--                                                        style="background:--%>
<%--                                                        #b9cbd8;"><span--%>
<%--                                                            class="sr-only">Color--%>
<%--                                                            name</span></a>--%>
<%--                                                </div><!-- End .product-nav -->--%>
<%--                                            </div><!-- End .product-body -->--%>
<%--                                        </div><!-- End .product -->--%>
<%--                                    </div><!-- End .col-sm-6 col-md-4 col-lg-3 -->--%>
<%--                                    <div class="col-6 col-md-4 col-lg-3">--%>
<%--                                        <div class="product product-2">--%>
<%--                                            <figure class="product-media">--%>
<%--                                                <a href="product.jsp">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-6-1.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-6-2.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image-hover">--%>
<%--                                                </a>--%>

<%--                                                <div--%>
<%--                                                    class="product-action-vertical">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product-icon--%>
<%--                                                        btn-wishlist" title="Add--%>
<%--                                                        to wishlist"><span>add--%>
<%--                                                            to wishlist</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                                <div class="product-action--%>
<%--                                                    product-action-transparent">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product--%>
<%--                                                        btn-cart"><span>add to--%>
<%--                                                            cart</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                            </figure><!-- End .product-media -->--%>
<%--                                            <div class="product-body">--%>
<%--                                                <div class="product-cat">--%>
<%--                                                    <a href="#">Shoes</a>--%>
<%--                                                </div><!-- End .product-cat -->--%>
<%--                                                <h3 class="product-title"><a--%>
<%--                                                        href="product.jsp">Sandals--%>
<%--                                                        with lacing</a></h3><!-- End .product-title -->--%>
<%--                                                <div class="product-price">--%>
<%--                                                    <span class="new-price">Now--%>
<%--                                                        $70.00</span>--%>
<%--                                                    <span class="old-price">Was--%>
<%--                                                        $155.00</span>--%>
<%--                                                </div><!-- End .product-price -->--%>
<%--                                            </div><!-- End .product-body -->--%>
<%--                                        </div><!-- End .product -->--%>
<%--                                    </div><!-- End .col-sm-6 col-md-4 col-lg-3 -->--%>
<%--                                    <div class="col-6 col-md-4 col-lg-3">--%>
<%--                                        <div class="product product-2">--%>
<%--                                            <figure class="product-media">--%>
<%--                                                <a href="product.jsp">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-7-1.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-7-2.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image-hover">--%>
<%--                                                </a>--%>

<%--                                                <div--%>
<%--                                                    class="product-action-vertical">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product-icon--%>
<%--                                                        btn-wishlist" title="Add--%>
<%--                                                        to wishlist"><span>add--%>
<%--                                                            to wishlist</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                                <div class="product-action--%>
<%--                                                    product-action-transparent">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product--%>
<%--                                                        btn-cart"><span>add to--%>
<%--                                                            cart</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                            </figure><!-- End .product-media -->--%>
<%--                                            <div class="product-body">--%>
<%--                                                <div class="product-cat">--%>
<%--                                                    <a href="#">Clothing</a>--%>
<%--                                                </div><!-- End .product-cat -->--%>
<%--                                                <h3 class="product-title"><a--%>
<%--                                                        href="product.jsp">Paper--%>
<%--                                                        bag trousers</a></h3><!-- End .product-title -->--%>
<%--                                                <div class="product-price">--%>
<%--                                                    $60.00--%>
<%--                                                </div><!-- End .product-price -->--%>
<%--                                                <div class="product-nav--%>
<%--                                                    product-nav-dots">--%>
<%--                                                    <a href="#" class="active"--%>
<%--                                                        style="background:--%>
<%--                                                        #9fac76;"><span--%>
<%--                                                            class="sr-only">Color--%>
<%--                                                            name</span></a>--%>
<%--                                                    <a href="#"--%>
<%--                                                        style="background:--%>
<%--                                                        #333333;"><span--%>
<%--                                                            class="sr-only">Color--%>
<%--                                                            name</span></a>--%>
<%--                                                </div><!-- End .product-nav -->--%>
<%--                                            </div><!-- End .product-body -->--%>
<%--                                        </div><!-- End .product -->--%>
<%--                                    </div><!-- End .col-sm-6 col-md-4 col-lg-3 -->--%>
<%--                                    <div class="col-6 col-md-4 col-lg-3">--%>
<%--                                        <div class="product product-2">--%>
<%--                                            <figure class="product-media">--%>
<%--                                                <a href="product.jsp">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-8-1.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-8-2.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image-hover">--%>
<%--                                                </a>--%>

<%--                                                <div--%>
<%--                                                    class="product-action-vertical">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product-icon--%>
<%--                                                        btn-wishlist" title="Add--%>
<%--                                                        to wishlist"><span>add--%>
<%--                                                            to wishlist</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                                <div class="product-action--%>
<%--                                                    product-action-transparent">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product--%>
<%--                                                        btn-cart"><span>add to--%>
<%--                                                            cart</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                            </figure><!-- End .product-media -->--%>
<%--                                            <div class="product-body">--%>
<%--                                                <div class="product-cat">--%>
<%--                                                    <a href="#">Handbags</a>--%>
<%--                                                </div><!-- End .product-cat -->--%>
<%--                                                <h3 class="product-title"><a--%>
<%--                                                        href="product.jsp">Paper--%>
<%--                                                        straw shopper</a></h3><!-- End .product-title -->--%>
<%--                                                <div class="product-price">--%>
<%--                                                    $398.00--%>
<%--                                                </div><!-- End .product-price -->--%>
<%--                                            </div><!-- End .product-body -->--%>
<%--                                        </div><!-- End .product -->--%>
<%--                                    </div><!-- End .col-sm-6 col-md-4 col-lg-3 -->--%>
<%--                                    <div class="col-6 col-md-4 col-lg-3">--%>
<%--                                        <div class="product product-2">--%>
<%--                                            <figure class="product-media">--%>
<%--                                                <a href="product.jsp">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-9-1.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-9-2.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image-hover">--%>
<%--                                                </a>--%>

<%--                                                <div--%>
<%--                                                    class="product-action-vertical">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product-icon--%>
<%--                                                        btn-wishlist" title="Add--%>
<%--                                                        to wishlist"><span>add--%>
<%--                                                            to wishlist</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                                <div class="product-action--%>
<%--                                                    product-action-transparent">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product--%>
<%--                                                        btn-cart"><span>add to--%>
<%--                                                            cart</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                            </figure><!-- End .product-media -->--%>
<%--                                            <div class="product-body">--%>
<%--                                                <div class="product-cat">--%>
<%--                                                    <a href="#">Handbags</a>--%>
<%--                                                </div><!-- End .product-cat -->--%>
<%--                                                <h3 class="product-title"><a--%>
<%--                                                        href="product.jsp">Bucket--%>
<%--                                                        bag</a></h3><!-- End .product-title -->--%>
<%--                                                <div class="product-price">--%>
<%--                                                    $350.00--%>
<%--                                                </div><!-- End .product-price -->--%>
<%--                                                <div class="product-nav--%>
<%--                                                    product-nav-dots">--%>
<%--                                                    <a href="#" class="active"--%>
<%--                                                        style="background:--%>
<%--                                                        #e3a84d;"><span--%>
<%--                                                            class="sr-only">Color--%>
<%--                                                            name</span></a>--%>
<%--                                                    <a href="#"--%>
<%--                                                        style="background:--%>
<%--                                                        #f48a5b;"><span--%>
<%--                                                            class="sr-only">Color--%>
<%--                                                            name</span></a>--%>
<%--                                                    <a href="#"--%>
<%--                                                        style="background:--%>
<%--                                                        #333333;"><span--%>
<%--                                                            class="sr-only">Color--%>
<%--                                                            name</span></a>--%>
<%--                                                </div><!-- End .product-nav -->--%>
<%--                                            </div><!-- End .product-body -->--%>
<%--                                        </div><!-- End .product -->--%>
<%--                                    </div><!-- End .col-sm-6 col-md-4 col-lg-3 -->--%>
<%--                                    <div class="col-6 col-md-4 col-lg-3">--%>
<%--                                        <div class="product product-2">--%>
<%--                                            <figure class="product-media">--%>
<%--                                                <a href="product.jsp">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-10-1.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image">--%>
<%--                                                    <img--%>
<%--                                                        src="assets/images/demos/demo-5/products/product-10-2.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image-hover">--%>
<%--                                                </a>--%>

<%--                                                <div--%>
<%--                                                    class="product-action-vertical">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product-icon--%>
<%--                                                        btn-wishlist" title="Add--%>
<%--                                                        to wishlist"><span>add--%>
<%--                                                            to wishlist</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                                <div class="product-action--%>
<%--                                                    product-action-transparent">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product--%>
<%--                                                        btn-cart"><span>add to--%>
<%--                                                            cart</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                            </figure><!-- End .product-media -->--%>
<%--                                            <div class="product-body">--%>
<%--                                                <div class="product-cat">--%>
<%--                                                    <a href="#">Clothing</a>--%>
<%--                                                </div><!-- End .product-cat -->--%>
<%--                                                <h3 class="product-title"><a--%>
<%--                                                        href="product.jsp">Silk-blend--%>
<%--                                                        kaftan</a></h3><!-- End .product-title -->--%>
<%--                                                <div class="product-price">--%>
<%--                                                    Now $370.00--%>
<%--                                                </div><!-- End .product-price -->--%>
<%--                                            </div><!-- End .product-body -->--%>
<%--                                        </div><!-- End .product -->--%>
<%--                                    </div><!-- End .col-sm-6 col-md-4 col-lg-3 -->--%>
<%--                                    <div class="col-6 col-md-4 col-lg-3">--%>
<%--                                        <div class="product product-2">--%>
<%--                                            <figure class="product-media">--%>
<%--                                                <a href="product.jsp">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-11-1.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-11-2.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image-hover">--%>
<%--                                                </a>--%>

<%--                                                <div--%>
<%--                                                    class="product-action-vertical">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product-icon--%>
<%--                                                        btn-wishlist" title="Add--%>
<%--                                                        to wishlist"><span>add--%>
<%--                                                            to wishlist</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                                <div class="product-action--%>
<%--                                                    product-action-transparent">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product--%>
<%--                                                        btn-cart"><span>add to--%>
<%--                                                            cart</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                            </figure><!-- End .product-media -->--%>
<%--                                            <div class="product-body">--%>
<%--                                                <div class="product-cat">--%>
<%--                                                    <a href="#">Clothing</a>--%>
<%--                                                </div><!-- End .product-cat -->--%>
<%--                                                <h3 class="product-title"><a--%>
<%--                                                        href="product.jsp">Linen-blend--%>
<%--                                                        jumpsuit</a></h3><!-- End .product-title -->--%>
<%--                                                <div class="product-price">--%>
<%--                                                    $595.00--%>
<%--                                                </div><!-- End .product-price -->--%>
<%--                                            </div><!-- End .product-body -->--%>
<%--                                        </div><!-- End .product -->--%>
<%--                                    </div><!-- End .col-sm-6 col-md-4 col-lg-3 -->--%>
<%--                                    <div class="col-6 col-md-4 col-lg-3">--%>
<%--                                        <div class="product product-2">--%>
<%--                                            <figure class="product-media">--%>
<%--                                                <a href="product.jsp">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-12-1.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-12-2.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image-hover">--%>
<%--                                                </a>--%>

<%--                                                <div--%>
<%--                                                    class="product-action-vertical">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product-icon--%>
<%--                                                        btn-wishlist" title="Add--%>
<%--                                                        to wishlist"><span>add--%>
<%--                                                            to wishlist</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                                <div class="product-action--%>
<%--                                                    product-action-transparent">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product--%>
<%--                                                        btn-cart"><span>add to--%>
<%--                                                            cart</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                            </figure><!-- End .product-media -->--%>
<%--                                            <div class="product-body">--%>
<%--                                                <div class="product-cat">--%>
<%--                                                    <a href="#">Shoes</a>--%>
<%--                                                </div><!-- End .product-cat -->--%>
<%--                                                <h3 class="product-title"><a--%>
<%--                                                        href="product.jsp">Sandals</a></h3><!-- End .product-title -->--%>
<%--                                                <div class="product-price">--%>
<%--                                                    <span class="new-price">Now--%>
<%--                                                        $120.00</span>--%>
<%--                                                    <span class="old-price">Was--%>
<%--                                                        $140.00</span>--%>
<%--                                                </div><!-- End .product-price -->--%>
<%--                                            </div><!-- End .product-body -->--%>
<%--                                        </div><!-- End .product -->--%>
<%--                                    </div><!-- End .col-sm-6 col-md-4 col-lg-3 -->--%>
<%--                                </div><!-- End .row -->--%>
<%--                            </div><!-- End .products -->--%>
<%--                        </div><!-- .End .tab-pane -->--%>
<%--                        <div class="tab-pane p-0 fade" id="new-cloth-tab"--%>
<%--                            role="tabpanel" aria-labelledby="new-cloth-link">--%>
<%--                            <div class="products">--%>
<%--                                <div class="row justify-content-center">--%>
<%--                                    <div class="col-6 col-md-4 col-lg-3">--%>
<%--                                        <div class="product product-2">--%>
<%--                                            <figure class="product-media">--%>
<%--                                                <a href="product.jsp">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-5-1.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-5-2.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image-hover">--%>
<%--                                                </a>--%>

<%--                                                <div--%>
<%--                                                    class="product-action-vertical">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product-icon--%>
<%--                                                        btn-wishlist" title="Add--%>
<%--                                                        to wishlist"><span>add--%>
<%--                                                            to wishlist</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                                <div class="product-action--%>
<%--                                                    product-action-transparent">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product--%>
<%--                                                        btn-cart"><span>add to--%>
<%--                                                            cart</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                            </figure><!-- End .product-media -->--%>
<%--                                            <div class="product-body">--%>
<%--                                                <div class="product-cat">--%>
<%--                                                    <a href="#">Clothing</a>--%>
<%--                                                </div><!-- End .product-cat -->--%>
<%--                                                <h3 class="product-title"><a--%>
<%--                                                        href="product.jsp">Linen-blend--%>
<%--                                                        dress</a></h3><!-- End .product-title -->--%>
<%--                                                <div class="product-price">--%>
<%--                                                    $60.00--%>
<%--                                                </div><!-- End .product-price -->--%>
<%--                                                <div class="product-nav--%>
<%--                                                    product-nav-dots">--%>
<%--                                                    <a href="#" class="active"--%>
<%--                                                        style="background:--%>
<%--                                                        #e5dcb1;"><span--%>
<%--                                                            class="sr-only">Color--%>
<%--                                                            name</span></a>--%>
<%--                                                    <a href="#"--%>
<%--                                                        style="background:--%>
<%--                                                        #b9cbd8;"><span--%>
<%--                                                            class="sr-only">Color--%>
<%--                                                            name</span></a>--%>
<%--                                                </div><!-- End .product-nav -->--%>
<%--                                            </div><!-- End .product-body -->--%>
<%--                                        </div><!-- End .product -->--%>
<%--                                    </div><!-- End .col-sm-6 col-md-4 col-lg-3 -->--%>
<%--                                    <div class="col-6 col-md-4 col-lg-3">--%>
<%--                                        <div class="product product-2">--%>
<%--                                            <figure class="product-media">--%>
<%--                                                <a href="product.jsp">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-7-1.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-7-2.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image-hover">--%>
<%--                                                </a>--%>

<%--                                                <div--%>
<%--                                                    class="product-action-vertical">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product-icon--%>
<%--                                                        btn-wishlist" title="Add--%>
<%--                                                        to wishlist"><span>add--%>
<%--                                                            to wishlist</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                                <div class="product-action--%>
<%--                                                    product-action-transparent">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product--%>
<%--                                                        btn-cart"><span>add to--%>
<%--                                                            cart</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                            </figure><!-- End .product-media -->--%>
<%--                                            <div class="product-body">--%>
<%--                                                <div class="product-cat">--%>
<%--                                                    <a href="#">Clothing</a>--%>
<%--                                                </div><!-- End .product-cat -->--%>
<%--                                                <h3 class="product-title"><a--%>
<%--                                                        href="product.jsp">Paper--%>
<%--                                                        bag trousers</a></h3><!-- End .product-title -->--%>
<%--                                                <div class="product-price">--%>
<%--                                                    $60.00--%>
<%--                                                </div><!-- End .product-price -->--%>
<%--                                                <div class="product-nav--%>
<%--                                                    product-nav-dots">--%>
<%--                                                    <a href="#" class="active"--%>
<%--                                                        style="background:--%>
<%--                                                        #9fac76;"><span--%>
<%--                                                            class="sr-only">Color--%>
<%--                                                            name</span></a>--%>
<%--                                                    <a href="#"--%>
<%--                                                        style="background:--%>
<%--                                                        #333333;"><span--%>
<%--                                                            class="sr-only">Color--%>
<%--                                                            name</span></a>--%>
<%--                                                </div><!-- End .product-nav -->--%>
<%--                                            </div><!-- End .product-body -->--%>
<%--                                        </div><!-- End .product -->--%>
<%--                                    </div><!-- End .col-sm-6 col-md-4 col-lg-3 -->--%>
<%--                                    <div class="col-6 col-md-4 col-lg-3">--%>
<%--                                        <div class="product product-2">--%>
<%--                                            <figure class="product-media">--%>
<%--                                                <a href="product.jsp">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-10-1.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image">--%>
<%--                                                    <img--%>
<%--                                                        src="/petpet/presentation/assets/images/demos/demo-5/products/product-10-2.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image-hover">--%>
<%--                                                </a>--%>

<%--                                                <div--%>
<%--                                                    class="product-action-vertical">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product-icon--%>
<%--                                                        btn-wishlist" title="Add--%>
<%--                                                        to wishlist"><span>add--%>
<%--                                                            to wishlist</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                                <div class="product-action--%>
<%--                                                    product-action-transparent">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product--%>
<%--                                                        btn-cart"><span>add to--%>
<%--                                                            cart</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                            </figure><!-- End .product-media -->--%>
<%--                                            <div class="product-body">--%>
<%--                                                <div class="product-cat">--%>
<%--                                                    <a href="#">Clothing</a>--%>
<%--                                                </div><!-- End .product-cat -->--%>
<%--                                                <h3 class="product-title"><a--%>
<%--                                                        href="product.jsp">Silk-blend--%>
<%--                                                        kaftan</a></h3><!-- End .product-title -->--%>
<%--                                                <div class="product-price">--%>
<%--                                                    Now $370.00--%>
<%--                                                </div><!-- End .product-price -->--%>
<%--                                            </div><!-- End .product-body -->--%>
<%--                                        </div><!-- End .product -->--%>
<%--                                    </div><!-- End .col-sm-6 col-md-4 col-lg-3 -->--%>
<%--                                    <div class="col-6 col-md-4 col-lg-3">--%>
<%--                                        <div class="product product-2">--%>
<%--                                            <figure class="product-media">--%>
<%--                                                <a href="product.jsp">--%>
<%--                                                    <img--%>
<%--                                                        src="assets/images/demos/demo-5/products/product-11-1.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image">--%>
<%--                                                    <img--%>
<%--                                                        src="assets/images/demos/demo-5/products/product-11-2.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image-hover">--%>
<%--                                                </a>--%>

<%--                                                <div--%>
<%--                                                    class="product-action-vertical">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product-icon--%>
<%--                                                        btn-wishlist" title="Add--%>
<%--                                                        to wishlist"><span>add--%>
<%--                                                            to wishlist</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                                <div class="product-action--%>
<%--                                                    product-action-transparent">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product--%>
<%--                                                        btn-cart"><span>add to--%>
<%--                                                            cart</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                            </figure><!-- End .product-media -->--%>
<%--                                            <div class="product-body">--%>
<%--                                                <div class="product-cat">--%>
<%--                                                    <a href="#">Clothing</a>--%>
<%--                                                </div><!-- End .product-cat -->--%>
<%--                                                <h3 class="product-title"><a--%>
<%--                                                        href="product.jsp">Linen-blend--%>
<%--                                                        jumpsuit</a></h3><!-- End .product-title -->--%>
<%--                                                <div class="product-price">--%>
<%--                                                    $595.00--%>
<%--                                                </div><!-- End .product-price -->--%>
<%--                                            </div><!-- End .product-body -->--%>
<%--                                        </div><!-- End .product -->--%>
<%--                                    </div><!-- End .col-sm-6 col-md-4 col-lg-3 -->--%>
<%--                                </div><!-- End .row -->--%>
<%--                            </div><!-- End .products -->--%>
<%--                        </div><!-- .End .tab-pane -->--%>
<%--                        <div class="tab-pane p-0 fade" id="new-shoes-tab"--%>
<%--                            role="tabpanel" aria-labelledby="new-shoes-link">--%>
<%--                            <div class="products">--%>
<%--                                <div class="row justify-content-center">--%>
<%--                                    <div class="col-6 col-md-4 col-lg-3">--%>
<%--                                        <div class="product product-2">--%>
<%--                                            <figure class="product-media">--%>
<%--                                                <a href="product.jsp">--%>
<%--                                                    <img--%>
<%--                                                        src="assets/images/demos/demo-5/products/product-6-1.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image">--%>
<%--                                                    <img--%>
<%--                                                        src="assets/images/demos/demo-5/products/product-6-2.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image-hover">--%>
<%--                                                </a>--%>

<%--                                                <div--%>
<%--                                                    class="product-action-vertical">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product-icon--%>
<%--                                                        btn-wishlist" title="Add--%>
<%--                                                        to wishlist"><span>add--%>
<%--                                                            to wishlist</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                                <div class="product-action--%>
<%--                                                    product-action-transparent">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product--%>
<%--                                                        btn-cart"><span>add to--%>
<%--                                                            cart</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                            </figure><!-- End .product-media -->--%>
<%--                                            <div class="product-body">--%>
<%--                                                <div class="product-cat">--%>
<%--                                                    <a href="#">Shoes</a>--%>
<%--                                                </div><!-- End .product-cat -->--%>
<%--                                                <h3 class="product-title"><a--%>
<%--                                                        href="product.jsp">Sandals--%>
<%--                                                        with lacing</a></h3><!-- End .product-title -->--%>
<%--                                                <div class="product-price">--%>
<%--                                                    <span class="new-price">Now--%>
<%--                                                        $70.00</span>--%>
<%--                                                    <span class="old-price">Was--%>
<%--                                                        $155.00</span>--%>
<%--                                                </div><!-- End .product-price -->--%>
<%--                                            </div><!-- End .product-body -->--%>
<%--                                        </div><!-- End .product -->--%>
<%--                                    </div><!-- End .col-sm-6 col-md-4 col-lg-3 -->--%>
<%--                                    <div class="col-6 col-md-4 col-lg-3">--%>
<%--                                        <div class="product product-2">--%>
<%--                                            <figure class="product-media">--%>
<%--                                                <a href="product.jsp">--%>
<%--                                                    <img--%>
<%--                                                        src="assets/images/demos/demo-5/products/product-12-1.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image">--%>
<%--                                                    <img--%>
<%--                                                        src="assets/images/demos/demo-5/products/product-12-2.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image-hover">--%>
<%--                                                </a>--%>

<%--                                                <div--%>
<%--                                                    class="product-action-vertical">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product-icon--%>
<%--                                                        btn-wishlist" title="Add--%>
<%--                                                        to wishlist"><span>add--%>
<%--                                                            to wishlist</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                                <div class="product-action--%>
<%--                                                    product-action-transparent">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product--%>
<%--                                                        btn-cart"><span>add to--%>
<%--                                                            cart</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                            </figure><!-- End .product-media -->--%>
<%--                                            <div class="product-body">--%>
<%--                                                <div class="product-cat">--%>
<%--                                                    <a href="#">Shoes</a>--%>
<%--                                                </div><!-- End .product-cat -->--%>
<%--                                                <h3 class="product-title"><a--%>
<%--                                                        href="product.jsp">Sandals</a></h3><!-- End .product-title -->--%>
<%--                                                <div class="product-price">--%>
<%--                                                    <span class="new-price">Now--%>
<%--                                                        $120.00</span>--%>
<%--                                                    <span class="old-price">Was--%>
<%--                                                        $140.00</span>--%>
<%--                                                </div><!-- End .product-price -->--%>
<%--                                            </div><!-- End .product-body -->--%>
<%--                                        </div><!-- End .product -->--%>
<%--                                    </div><!-- End .col-sm-6 col-md-4 col-lg-3 -->--%>
<%--                                </div><!-- End .row -->--%>
<%--                            </div><!-- End .products -->--%>
<%--                        </div><!-- .End .tab-pane -->--%>
<%--                        <div class="tab-pane p-0 fade" id="new-access-tab"--%>
<%--                            role="tabpanel" aria-labelledby="new-access-link">--%>
<%--                            <div class="products">--%>
<%--                                <div class="row justify-content-center">--%>
<%--                                    <div class="col-6 col-md-4 col-lg-3">--%>
<%--                                        <div class="product product-2">--%>
<%--                                            <figure class="product-media">--%>
<%--                                                <a href="product.jsp">--%>
<%--                                                    <img--%>
<%--                                                        src="assets/images/demos/demo-5/products/product-8-1.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image">--%>
<%--                                                    <img--%>
<%--                                                        src="assets/images/demos/demo-5/products/product-8-2.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image-hover">--%>
<%--                                                </a>--%>

<%--                                                <div--%>
<%--                                                    class="product-action-vertical">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product-icon--%>
<%--                                                        btn-wishlist" title="Add--%>
<%--                                                        to wishlist"><span>add--%>
<%--                                                            to wishlist</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                                <div class="product-action--%>
<%--                                                    product-action-transparent">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product--%>
<%--                                                        btn-cart"><span>add to--%>
<%--                                                            cart</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                            </figure><!-- End .product-media -->--%>
<%--                                            <div class="product-body">--%>
<%--                                                <div class="product-cat">--%>
<%--                                                    <a href="#">Handbags</a>--%>
<%--                                                </div><!-- End .product-cat -->--%>
<%--                                                <h3 class="product-title"><a--%>
<%--                                                        href="product.jsp">Paper--%>
<%--                                                        straw shopper</a></h3><!-- End .product-title -->--%>
<%--                                                <div class="product-price">--%>
<%--                                                    $398.00--%>
<%--                                                </div><!-- End .product-price -->--%>
<%--                                            </div><!-- End .product-body -->--%>
<%--                                        </div><!-- End .product -->--%>
<%--                                    </div><!-- End .col-sm-6 col-md-4 col-lg-3 -->--%>
<%--                                    <div class="col-6 col-md-4 col-lg-3">--%>
<%--                                        <div class="product product-2">--%>
<%--                                            <figure class="product-media">--%>
<%--                                                <a href="product.jsp">--%>
<%--                                                    <img--%>
<%--                                                        src="assets/images/demos/demo-5/products/product-9-1.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image">--%>
<%--                                                    <img--%>
<%--                                                        src="assets/images/demos/demo-5/products/product-9-2.jpg"--%>
<%--                                                        alt="Product image"--%>
<%--                                                        class="product-image-hover">--%>
<%--                                                </a>--%>

<%--                                                <div--%>
<%--                                                    class="product-action-vertical">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product-icon--%>
<%--                                                        btn-wishlist" title="Add--%>
<%--                                                        to wishlist"><span>add--%>
<%--                                                            to wishlist</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                                <div class="product-action--%>
<%--                                                    product-action-transparent">--%>
<%--                                                    <a href="#"--%>
<%--                                                        class="btn-product--%>
<%--                                                        btn-cart"><span>add to--%>
<%--                                                            cart</span></a>--%>
<%--                                                </div><!-- End .product-action -->--%>
<%--                                            </figure><!-- End .product-media -->--%>
<%--                                            <div class="product-body">--%>
<%--                                                <div class="product-cat">--%>
<%--                                                    <a href="#">Handbags</a>--%>
<%--                                                </div><!-- End .product-cat -->--%>
<%--                                                <h3 class="product-title"><a--%>
<%--                                                        href="product.jsp">Bucket--%>
<%--                                                        bag</a></h3><!-- End .product-title -->--%>
<%--                                                <div class="product-price">--%>
<%--                                                    $350.00--%>
<%--                                                </div><!-- End .product-price -->--%>
<%--                                                <div class="product-nav--%>
<%--                                                    product-nav-dots">--%>
<%--                                                    <a href="#" class="active"--%>
<%--                                                        style="background:--%>
<%--                                                        #e3a84d;"><span--%>
<%--                                                            class="sr-only">Color--%>
<%--                                                            name</span></a>--%>
<%--                                                    <a href="#"--%>
<%--                                                        style="background:--%>
<%--                                                        #f48a5b;"><span--%>
<%--                                                            class="sr-only">Color--%>
<%--                                                            name</span></a>--%>
<%--                                                    <a href="#"--%>
<%--                                                        style="background:--%>
<%--                                                        #333333;"><span--%>
<%--                                                            class="sr-only">Color--%>
<%--                                                            name</span></a>--%>
<%--                                                </div><!-- End .product-nav -->--%>
<%--                                            </div><!-- End .product-body -->--%>
<%--                                        </div><!-- End .product -->--%>
<%--                                    </div><!-- End .col-sm-6 col-md-4 col-lg-3 -->--%>
<%--                                </div><!-- End .row -->--%>
<%--                            </div><!-- End .products -->--%>
<%--                        </div><!-- .End .tab-pane -->--%>
<%--                    </div><!-- End .tab-content -->--%>

<%--                    <div class="more-container text-center mt-1 mb-3">--%>
<%--                        <a href="#" class="btn btn-outline-primary-2 btn-round--%>
<%--                            btn-more">Load more</a>--%>
<%--                    </div><!-- End .more-container -->--%>
<%--                </div><!-- End .container -->--%>

                <div class="mb-2"></div><!-- End .mb-2 -->

                <div class="container">
                    <div class="cta cta-separator mb-5">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="cta-wrapper cta-text text-center">
                                    <h3 class="cta-title">Shop Social</h3><!-- End .cta-title -->
                                    <p class="cta-desc">Donec nec justo eget
                                        felis facilisis fermentum. Aliquam
                                        porttitor mauris sit amet orci. </p><!-- End .cta-desc -->
                                    <div class="social-icons
                                        social-icons-colored
                                        justify-content-center">
                                        <a href="#" class="social-icon
                                            social-facebook" title="Facebook"
                                            target="_blank"><i
                                                class="icon-facebook-f"></i></a>
                                        <a href="#" class="social-icon
                                            social-twitter" title="Twitter"
                                            target="_blank"><i
                                                class="icon-twitter"></i></a>
                                        <a href="#" class="social-icon
                                            social-instagram" title="Instagram"
                                            target="_blank"><i
                                                class="icon-instagram"></i></a>
                                        <a href="#" class="social-icon
                                            social-youtube" title="Youtube"
                                            target="_blank"><i
                                                class="icon-youtube"></i></a>
                                        <a href="#" class="social-icon
                                            social-pinterest" title="Pinterest"
                                            target="_blank"><i
                                                class="icon-pinterest"></i></a>
                                    </div><!-- End .soial-icons -->
                                </div><!-- End .cta-wrapper -->
                            </div><!-- End .col-lg-6 -->

                            <div class="col-lg-6">
                                <div class="cta-wrapper text-center">
                                    <h3 class="cta-title">Get the Latest Deals</h3><!-- End .cta-title -->
                                    <p class="cta-desc">and <br>receive <span
                                            class="text-primary">$20 coupon</span>
                                        for first shopping</p><!-- End .cta-desc -->
                                    <form action="#">
                                        <div class="input-group">
                                            <input type="email"
                                                class="form-control"
                                                placeholder="Enter your Email
                                                Address" aria-label="Email
                                                Adress" required>
                                            <div class="input-group-append">
                                                <button class="btn btn-primary
                                                    btn-rounded" type="submit"><i
                                                        class="icon-long-arrow-right"></i></button>
                                            </div><!-- .End .input-group-append -->
                                        </div><!-- .End .input-group -->
                                    </form>
                                </div><!-- End .cta-wrapper -->
                            </div><!-- End .col-lg-6 -->
                        </div><!-- End .row -->
                    </div><!-- End .cta -->
                </div><!-- End .container -->

                <div class="bg-lighter pt-7 pb-4" style="background-color:
                    #fafafa;">
                    <div class="container">
                        <div class="instagram-feed-container">
                            <div class="row">
                                <div class="feed-col">
                                    <div class="instagram-feed">
                                        <img
                                            src="/petpet/presentation/assets/images/demos/demo-5/instagram/11.jpg"

                                            alt="img">

                                        <div class="instagram-feed-content">
                                            <a href="#"><i class="icon-heart-o"></i>387</a>
                                            <a href="#"><i
                                                    class="icon-comments"></i>45</a>
                                        </div><!-- End .instagram-feed-content -->
                                    </div><!-- End .instagram-feed -->
                                </div><!-- End .feed-col -->

                                <div class="feed-col">
                                    <div class="instagram-feed">
                                        <img
                                            src="/petpet/presentation/assets/images/demos/demo-5/instagram/12.jpg"
                                            style="height: 100%"
                                            alt="img">

                                        <div class="instagram-feed-content">
                                            <a href="#"><i class="icon-heart-o"></i>691</a>
                                            <a href="#"><i
                                                    class="icon-comments"></i>87</a>
                                        </div><!-- End .instagram-feed-content -->
                                    </div><!-- End .instagram-feed -->
                                </div><!-- End .feed-col -->

                                <div class="feed-col feed-col-title">
                                    <div class="instagram-feed-title">
                                        <i class="icon-instagram"></i>
                                        <p>@PetPet Store <br>On instagram</p>
                                        <a href="#">FOLLOW</a>
                                    </div><!-- End .instagram-feed-title -->
                                </div><!-- End .feed-col -->

                                <div class="feed-col">
                                    <div class="instagram-feed">
                                        <img
                                            src="/petpet/presentation/assets/images/demos/demo-5/instagram/13.jpg"
                                            alt="img">

                                        <div class="instagram-feed-content">
                                            <a href="#"><i class="icon-heart-o"></i>321</a>
                                            <a href="#"><i
                                                    class="icon-comments"></i>54</a>
                                        </div><!-- End .instagram-feed-content -->
                                    </div><!-- End .instagram-feed -->
                                </div><!-- End .feed-col -->

                                <div class="feed-col">
                                    <div class="instagram-feed">
                                        <img
                                            src="/petpet/presentation/assets/images/demos/demo-5/instagram/14.jpg"
                                            alt="img">

                                        <div class="instagram-feed-content">
                                            <a href="#"><i class="icon-heart-o"></i>44</a>
                                            <a href="#"><i
                                                    class="icon-comments"></i>55</a>
                                        </div><!-- End .instagram-feed-content -->
                                    </div><!-- End .instagram-feed -->
                                </div><!-- End .feed-col -->

                                <div class="feed-col">
                                    <div class="instagram-feed">
                                        <img
                                            src="/petpet/presentation/assets/images/demos/demo-5/instagram/15.jpg"
                                            alt="img">

                                        <div class="instagram-feed-content">
                                            <a href="#"><i class="icon-heart-o"></i>128</a>
                                            <a href="#"><i
                                                    class="icon-comments"></i>99</a>
                                        </div><!-- End .instagram-feed-content -->
                                    </div><!-- End .instagram-feed -->
                                </div><!-- End .feed-col -->

                                <div class="feed-col">
                                    <div class="instagram-feed">
                                        <img
                                            src="/petpet/presentation/assets/images/demos/demo-5/instagram/16.jpg"
                                            alt="img">

                                        <div class="instagram-feed-content">
                                            <a href="#"><i class="icon-heart-o"></i>433</a>
                                            <a href="#"><i
                                                    class="icon-comments"></i>25</a>
                                        </div><!-- End .instagram-feed-content -->
                                    </div><!-- End .instagram-feed -->
                                </div><!-- End .feed-col -->

                                <div class="feed-col">
                                    <div class="instagram-feed">
                                        <img
                                            src="/petpet/presentation/assets/images/demos/demo-5/instagram/17.jpg"
                                            alt="img">

                                        <div class="instagram-feed-content">
                                            <a href="#"><i class="icon-heart-o"></i>588</a>
                                            <a href="#"><i
                                                    class="icon-comments"></i>44</a>
                                        </div><!-- End .instagram-feed-content -->
                                    </div><!-- End .instagram-feed -->
                                </div><!-- End .feed-col -->

                                <div class="feed-col">
                                    <div class="instagram-feed">
                                        <img
                                            src="/petpet/presentation/assets/images/demos/demo-5/instagram/18.jpg"
                                            alt="img">

                                        <div class="instagram-feed-content">
                                            <a href="#"><i class="icon-heart-o"></i>87</a>
                                            <a href="#"><i
                                                    class="icon-comments"></i>23</a>
                                        </div><!-- End .instagram-feed-content -->
                                    </div><!-- End .instagram-feed -->
                                </div><!-- End .feed-col -->

                                <div class="feed-col">
                                    <div class="instagram-feed">
                                        <img
                                            src="/petpet/presentation/assets/images/demos/demo-5/instagram/19.jpg"
                                            alt="img">

                                        <div class="instagram-feed-content">
                                            <a href="#"><i class="icon-heart-o"></i>87</a>
                                            <a href="#"><i
                                                    class="icon-comments"></i>23</a>
                                        </div><!-- End .instagram-feed-content -->
                                    </div><!-- End .instagram-feed -->
                                </div><!-- End .feed-col -->
                            </div><!-- End .row -->
                        </div><!-- End .instagra-feed-container -->

                        <div class="row justify-content-center">
                            <div class="col-sm-6 col-lg-4">
                                <div class="icon-box icon-box-side">
                                    <span class="icon-box-icon text-dark">
                                        <i class="icon-rocket"></i>
                                    </span>

                                    <div class="icon-box-content">
                                        <h3 class="icon-box-title">Payment &
                                            Delivery</h3><!-- End .icon-box-title -->
                                        <p>Free shipping for orders over $50</p>
                                    </div><!-- End .icon-box-content -->
                                </div><!-- End .icon-box -->
                            </div><!-- End .col-sm-6 col-lg-4 -->

                            <div class="col-sm-6 col-lg-4">
                                <div class="icon-box icon-box-side">
                                    <span class="icon-box-icon text-dark">
                                        <i class="icon-refresh"></i>
                                    </span>

                                    <div class="icon-box-content">
                                        <h3 class="icon-box-title">Return &
                                            Refund</h3><!-- End .icon-box-title -->
                                        <p>Free 100% money back guarantee</p>
                                    </div><!-- End .icon-box-content -->
                                </div><!-- End .icon-box -->
                            </div><!-- End .col-sm-6 col-lg-4 -->

                            <div class="col-sm-6 col-lg-4">
                                <div class="icon-box icon-box-side">
                                    <span class="icon-box-icon text-dark">
                                        <i class="icon-life-ring"></i>
                                    </span>

                                    <div class="icon-box-content">
                                        <h3 class="icon-box-title">Quality
                                            Support</h3><!-- End .icon-box-title -->
                                        <p>Alway online feedback 24/7</p>
                                    </div><!-- End .icon-box-content -->
                                </div><!-- End .icon-box -->
                            </div><!-- End .col-sm-6 col-lg-4 -->
                        </div><!-- End .row -->
                    </div><!-- End .container -->
                </div><!-- End .bg-lighter pt-5 pb-5 -->
            </main><!-- End .main -->
             <script src="/petpet/presentation/assets/js/jquery.magnific-popup.min.js"></script>
             <script src="/petpet/presentation/assets/js/jquery.plugin.min.js"></script>
             <script src="/petpet/presentation/assets/js/jquery.countdown.min.js"></script>
             <script src="/petpet/presentation/assets/js/demos/demo-5.js"></script>

	<%@ include file="footer.html" %>