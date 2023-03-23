<%@taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">


<!-- molla/checkout.html  22 Nov 2019 09:55:06 GMT -->
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1,
                shrink-to-fit=no">
    <title>PetPet</title>
    <meta name="keywords" content="HTML5 Template">
    <meta name="description" content="PetPet">
    <meta name="author" content="p-themes">
    <!-- Favicon -->

    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
    <link rel="stylesheet"
          href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css"
          integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX"
          crossorigin="anonymous">
    <link
            href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"
            rel="stylesheet">
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons">
    <link rel="apple-touch-icon" sizes="180x180"
          href="/petpet/presentation/assets/images/icons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="32x32"
          href="/petpet/presentation/assets/images/icons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16"
          href="/petpet/presentation/assets/images/icons/favicon-32x32.png">
    <link rel="manifest"
          href="/petpet/presentation/assets/images/icons/site.html">
    <link rel="mask-icon"
          href="/petpet/presentation/assets/images/icons/safari-pinned-tab.svg"
          color="#666666">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.all.min.js"></script>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@10.10.1/dist/sweetalert2.min.css'>

    <meta name="apple-mobile-web-app-title" content="PetPet">
    <meta name="application-name" content="PetPet">
    <meta name="msapplication-TileColor" content="#cc9966">
    <meta name="msapplication-config"
          content="/petpet/presentation/assets/images/icons/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">
    <!-- Plugins CSS File -->
    <link rel="stylesheet"
          href="/petpet/presentation/assets/css/bootstrap.min.css">
    <!-- Main CSS File -->
    <link rel="stylesheet"
          href="/petpet/presentation/assets/css/style.css">
    <link rel="stylesheet"
          href="/petpet/presentation/assets/css/AdminProductsList.css">
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
                                <li><a href="tel:#"><i
                                        class="icon-phone"></i>Call:
                                    +0123 456 789</a></li>
                                <li><a href="/petpet/wishlist"><i
                                        class="icon-heart-o"></i>Wishlist
                                    <span>(3)</span></a></li>
                                <li><a href="/petpet/about">About Us</a></li>
                                <li><a href="/petpet/contact">Contact
                                    Us</a></li>
                                <li><a href="/petpet/login"
                                       data-toggle="modal"><i
                                        class="icon-user"></i>Login</a></li>
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
                        <img
                                src="/petpet/presentation/assets/images/logo.png"
                                alt="PetPet Logo" width="105"
                                height="25">
                    </a>

                    <nav class="main-nav">
                        <ul class="menu sf-arrows">
                            <li class="megamenu-container active">
                                <a href="/petpet/home">Home</a>
                            </li>
                            <li>
                                <a href="/petpet/shop">Shop</a>
                            </li>

                        </ul><!-- End .menu -->
                    </nav><!-- End .main-nav -->
                </div><!-- End .header-left -->

                <div class="header-right">
                    <div class="header-search">
                        <a href="#" class="search-toggle"
                           role="button" title="Search"><i
                                class="icon-search"></i></a>
                        <form action="#" method="get">
                            <div class="header-search-wrapper">
                                <label for="q" class="sr-only">Search</label>
                                <input type="search"
                                       class="form-control" name="q"
                                       id="q" placeholder="Search
                                                in..." required>
                            </div><!-- End .header-search-wrapper -->
                        </form>
                    </div><!-- End .header-search -->
                    <div class="dropdown compare-dropdown">
                        <a href="/petpet/wishlist"
                           class="wishlist-link">
                            <i class="icon-heart-o"></i>
                        </a>

                    </div><!-- End .compare-dropdown -->

                    <div class="dropdown cart-dropdown">
                        <a href="#" class="dropdown-toggle"
                           role="button" data-toggle="dropdown"
                           aria-haspopup="true"
                           aria-expanded="false"
                           data-display="static">
                            <i class="icon-shopping-cart"></i>
                            <span class="cart-count">2</span>
                        </a>

                        <div class="dropdown-menu
                                        dropdown-menu-right">
                            <div class="dropdown-cart-products">
                                <div class="product">
                                    <div
                                            class="product-cart-details">
                                        <h4 class="product-title">
                                            <a href="product.html">Beige
                                                knitted elastic
                                                runner shoes</a>
                                        </h4>

                                        <span
                                                class="cart-product-info">
                                                        <span
                                                                class="cart-product-qty">1</span>
                                                        x $84.00
                                                    </span>
                                    </div><!-- End .product-cart-details -->
                                    <figure
                                            class="product-image-container">
                                        <a href="product.html"
                                           class="product-image">
                                            <img
                                                    src="/petpet/presentation/assets/images/products/cart/product-1.jpg"
                                                    alt="product">
                                        </a>
                                    </figure>
                                    <a href="#" class="btn-remove"
                                       title="Remove Product"><i
                                            class="icon-close"></i></a>
                                </div><!-- End .product -->

                                <div class="product">
                                    <div
                                            class="product-cart-details">
                                        <h4 class="product-title">
                                            <a href="product.html">Blue
                                                utility pinafore
                                                denim dress</a>
                                        </h4>

                                        <span
                                                class="cart-product-info">
                                                        <span
                                                                class="cart-product-qty">1</span>
                                                        x $76.00
                                                    </span>
                                    </div><!-- End .product-cart-details -->
                                    <figure
                                            class="product-image-container">
                                        <a href="product.html"
                                           class="product-image">
                                            <img
                                                    src="/petpet/presentation/assets/images/products/cart/product-2.jpg"
                                                    alt="product">
                                        </a>
                                    </figure>
                                    <a href="#" class="btn-remove"
                                       title="Remove Product"><i
                                            class="icon-close"></i></a>
                                </div><!-- End .product -->
                            </div><!-- End .cart-product -->

                            <div class="dropdown-cart-total">
                                <span>Total</span>

                                <span class="cart-total-price">$160.00</span>
                            </div><!-- End .dropdown-cart-total -->
                            <div class="dropdown-cart-action">
                                <a href="cart.html" class="btn
                                                btn-primary">View Cart</a>
                                <a href="checkout.html" class="btn
                                                btn-outline-primary-2"><span>Checkout</span><i
                                        class="icon-long-arrow-right"></i></a>
                            </div><!-- End .dropdown-cart-total -->
                        </div><!-- End .dropdown-menu -->
                    </div><!-- End .cart-dropdown -->
                </div><!-- End .header-right -->
            </div><!-- End .container -->
        </div><!-- End .header-middle -->
    </header><!-- End .header -->
    <div class="container">
        <div class="title row">
            <div class="col-sm-8">
                <h3>Users List</h3>
            </div>
<%--            <div class="col-sm-4" style="  padding: 1rem; ">--%>
<%--                <a href = "/petpet/add-product"> <button type="submit" class="btn btn-outline-primary-2 btn-order btn-block">--%>
<%--                    <span class="btn-text">Add Product</span>--%>
<%--                    <span class="btn-hover-text">Add Product</span>--%>
<%--                </button></a>--%>
<%--            </div>--%>
        </div>

        <div class="col-lg-15 col-md-15 ml-auto mr-auto">

            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th class="text-center">#</th>
                        <th class="text-center">Customer Name</th>
                        <th class="text-center">Email</th>
                        <th class="text-center">Password</th>
                        <th class="text-center">CreditLimit</th>
                        <th class="text-center">Birthday</th>
                        <th class="text-center">Job</th>
                        <th class="text-center">Country</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <%--@elvariable id="AllUsers" type="java.util.List"--%>
                    <c:forEach var="index" items="${AllUsers}">
                        <tr>
                            <td class="text-center">${index.getId()}</td>
                            <td class="text-center">${index.getName()}</td>
                            <td class="text-center">${index.getEmail()}</td>
                            <td class="text-center">${index.getPassword()}</td>
                            <td class="text-center">${index.getCreditLimit()}</td>
                            <td class="text-center">${index.getBirthday()}</td>
                            <td class="text-center">${index.getJob()}</td>
                            <td class="text-center">${index.getCountry()}</td>
                            <td class="td-actions text-right">
                                <button type="button" rel="tooltip"
                                        class="btn btn-success btn-link
                                                    btn-just-icon btn-sm"
                                        data-original-title="" title="Edit">
                                    <a href = "/petpet/View-Order?id=${index.getId()}">
                                        <i class="icon-cart-arrow-down"></i></a>

                                </button>
                                <button type="button" rel="tooltip" data-id="${index.getId()}"
                                        class="deleteProduct btn btn-danger btn-link
                                                    btn-just-icon btn-sm"
                                        data-original-title="" title="Delete">

                                    <i class="icon-close"></i>
                                </button>
                            </td>
                        </tr>
                    </c:forEach>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<script src = "/petpet/presentation/assets/js/Admin/UsersList.js"></script>
<%@ include file="footer.html" %>