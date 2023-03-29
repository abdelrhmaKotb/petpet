<!DOCTYPE html>
<html lang="en">


<!-- molla/login.html  22 Nov 2019 10:04:03 GMT -->

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>PetPet</title>
    <meta name="keywords" content="HTML5 Template">
    <meta name="description" content="PetPet">
    <meta name="author" content="p-themes">
    <!-- Favicon -->
    <link rel="icon" sizes="180x180" href="/petpet/presentation/assets/images/icons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/petpet/presentation/assets/images/icons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/petpet/presentation/assets/images/icons/favicon-32x32.png">
    <link rel="manifest" href="/petpet/presentation/assets/images/icons/site.html">
    <link rel="mask-icon" href="/petpet/presentation/assets/images/icons/safari-pinned-tab.svg" color="#666666">
    <link rel="shortcut icon" href="/petpet/presentation/assets/images/icons/favicon.ico">
    <meta name="apple-mobile-web-app-title" content="PetPet">
    <meta name="application-name" content="PetPet">
    <meta name="msapplication-TileColor" content="#cc9966">
    <meta name="msapplication-config" content="/petpet/presentation/assets/images/icons/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">
    <!-- Plugins CSS File -->
    <link rel="stylesheet" href="/petpet/presentation/assets/css/bootstrap.min.css">
   
    <link rel="stylesheet" href="/petpet/presentation/assets/css/bootstrap-select-country.min.css">
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
    <!-- Main CSS File -->
    <link rel="stylesheet" href="/petpet/presentation/assets/css/style.css">
    <!-- <link rel="stylesheet" href="/petpet/presentation/assets/css/select2-bootstrap-5-theme.css">
    <link rel="stylesheet" href="/petpet/presentation/assets/css/select2-bootstrap-5-theme.rtl.css">
    <link rel="stylesheet" href="/petpet/presentation/assets/css/select2-bootstrap-5-theme.min.css">
    <link rel="stylesheet" href="/petpet/presentation/assets/css/select2-bootstrap-5-theme.rtl.min.css"> -->

    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

</head>

<body>

    <main class="main">
        <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
            <div class="container">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/petpet/home">Home</a></li>
                    <%-- <li class="breadcrumb-item"><a href="#">Pages</a></li>--%>
                        <li class="breadcrumb-item active" aria-current="page">Login</li>
                </ol>
            </div><!-- End .container -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="login-page bg-image pt-8 pb-8 pt-md-12 pb-md-12 pt-lg-17 pb-lg-17"
            style="background-image: url('/petpet/presentation/assets/images/backgrounds/login-bg.jpg') ">
            <div class="container">
                <div class="form-box">
                    <div class="form-tab">
                        <ul class="nav nav-pills nav-fill" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="signin-tab-2" data-toggle="tab" href="#signin-2"
                                    role="tab" aria-controls="signin-2" aria-selected="true">Sign In</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link " id="register-tab-2" data-toggle="tab" href="#register-2" role="tab"
                                    aria-controls="register-2" aria-selected="false">Register</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="signin-2" role="tabpanel"
                                aria-labelledby="signin-tab-2">
                                <form action="/petpet/login" method="post">
                                    <div class="form-group">
                                        <label for="register-email-2">Your email address *</label>
                                        <input type="email" class="form-control" id="register-email-2"
                                            name="register-email" required>
                                    </div><!-- End .form-group -->

                                    <div class="form-group">
                                        <label for="register-password-2">Password *</label>
                                        <input type="password" class="form-control" id="register-password-2"
                                            name="register-password" required>
                                    </div><!-- End .form-group -->
                                    <div id="errorMessage" style="text-align: center;color: red;">${errorMessage}</div>
                                    <div class="form-footer">
                                        <button type="submit" class="btn btn-outline-primary-2">
                                            <span>SIGN UP</span>
                                            <i class="icon-long-arrow-right"></i>
                                        </button>

                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="register-policy-2"
                                                required>
                                            <label class="custom-control-label" for="register-policy-2">I agree to the
                                                <a href="#">privacy policy</a> *</label>
                                        </div><!-- End .custom-checkbox -->
                                    </div><!-- End .form-footer -->
                                </form>
                            </div><!-- .End .tab-pane -->
                            <div class="tab-pane fade show active" id="register-2" role="tabpanel"
                                aria-labelledby="register-tab-2">
                                <form action="/petpet/register" method="post">
                                    <div id="name-div" class="col-sm-12">
                                        <label for="register-Name">Name *</label>
                                        <input type="text" class="form-control" id="register-Name" onblur="checkName()"
                                            name="register-Name" required="">
                                        <div class="invalid-feedback">Please provide your name
                                        </div>
                                    </div>


                                    <div class="col-md-12">
                                        <label for="register-username" class="form-label">Username</label>
                                        <div class="input-group form-outline">
                                            <span class="input-group-text" style="font-size: 2rem;"
                                                id="inputGroupPrepend">@</span>
                                            <input type="email" class="form-control" id="register-username"
                                                name="register-username" aria-describedby="inputGroupPrepend"
                                                onblur="checkUsername()" required />

                                            <div id="emailfeedback" class="invalid-feedback"></div>
                                        </div>
                                    </div>
                                    <br>


                                    <div class="row">
                                        <div class="col-sm-6">
                                            <label for="register-password-1">Password *</label>
                                            <input type="password" class="form-control" id="register-password-1"
                                                name="register-password-1" onblur="checkPassword()" required>

                                            <div class="invalid-feedback">Must be 8-20 characters long.</div>
                                            <!-- <div class="valid-feedback">Please provide a valid city.</div> -->

                                        </div><!-- End .form-group -->

                                        <div class="col-sm-6">
                                            <label for="register-password-confirm">Confirm Password *</label>
                                            <input type="password" class="form-control" id="register-password-confirm"
                                                name="register-password-confirm" onblur="checkMatchPassword()" required>

                                            <div class="invalid-feedback">Password doesn't match</div>
                                        </div><!-- End .form-group -->

                                    </div>

                                    <div class="row">


                                        <div class="col-sm-6">
                                            <label for="register-phone">Phone *</label>
                                            <input type="tel" class="form-control" id="register-phone"
                                                name="register-phone" onblur="checkPhone()" required>
                                            <div class="invalid-feedback">Invalid Phone Number</div>
                                        </div>

                                        <div class="col-sm-6">
                                            <label for="register-birth">Birthday *</label>
                                            <input type="date" class="form-control" id="register-birth"
                                                name="register-birth">

                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-sm-6">
                                            <label for="register-job">Job *</label>
                                            <input type="text" class="form-control" id="register-job"
                                                name="register-job" onblur="checkJob()" required="">
                                        </div>

                                        <div class="col-sm-6">
                                            <label for="register-credit">Credit Limit *</label>
                                            <input type="number" class="form-control" min="100" max="5000" step="10"
                                                name="register-credit" id="register-credit" onblur="checkCredit()"
                                                required>
                                            <div class="invalid-feedback">Please enter a value</div>
                                        </div>

                                    </div>
                                    <div class="row">

                                        <div class="col-sm-4">
                                            <label for="register-street">Street *</label>
                                            <input type="text" class="form-control" id="register-street"
                                                name="register-street" onblur="checkStreet()" required="">
                                            <div class="invalid-feedback">Please enter a value</div>
                                        </div>

                                        <div class="col-sm-4">
                                            <label for="register-city">City *</label>
                                            <input type="text" class="form-control" id="register-city"
                                                name="register-city" onblur="checkCity()" required="">
                                            <div class="invalid-feedback">Please enter a value</div>
                                        </div>

                                        <div class="col-sm-4">
                                            <label for="register-country">Country *</label>
                                            <!-- <select class="form-control" id="register-country" ></select> -->
                                            <input type="text" name="register-country" id="register-country"
                                                class="form-control" onblur="checkCountry()" required>
                                            <div id="inValidCountry" class="invalid-feedback">Invalid country</div>

                                        </div>

                                    </div>

                                    <div class="col-sm-12">
                                        <select class="form-control" id="multiple-select-field" name="multiple-select-field"
                                            data-placeholder="Choose interests" multiple onchange="userInterests()">
                                            <option>Dogs</option>
                                            <option>Cats</option>
                                            <option>Birds</option>
                                            <option>Watering Supplies</option>
                                            <option>Pet Accessories</option>
                                            <option>Dog Crates , Houses</option>
                                            <option>Pet Feeding</option>
                                        </select>
                                    </div>


                                    <div class="form-footer">
                                        <button type="submit" class="btn btn-outline-primary-2">
                                            <span>SIGN UP</span>
                                            <i class="icon-long-arrow-right"></i>
                                        </button>

                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="register-policy"
                                                required="">
                                            <label class="custom-control-label" for="register-policy">I agree to the
                                                <a href="#">privacy
                                                    policy</a> *</label>
                                        </div><!-- End .custom-checkbox -->
                                    </div><!-- End .form-footer -->

                                </form>
                                <!-- <div class="form-choice">
                                <p class="text-center">or sign in with</p>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <a href="#" class="btn btn-login btn-g">
                                            <i class="icon-google"></i>
                                            Login With Google
                                        </a>
                                    </div> End .col-6
                                    <div class="col-sm-6">
                                        <a href="#" class="btn btn-login  btn-f">
                                            <i class="icon-facebook-f"></i>
                                            Login With Facebook
                                        </a>
                                    </div><End .col-6
                                </div> End .row
                            </div> -->
                            </div><!-- .End .tab-pane -->
                        </div><!-- End .tab-content -->
                    </div><!-- End .form-tab -->
                </div><!-- End .form-box -->
            </div><!-- End .container -->
        </div><!-- End .login-page section-bg -->
    </main><!-- End .main -->

    </div><!-- End .page-wrapper -->
    <button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>

    <!-- Mobile Menu -->
    <div class="mobile-menu-overlay"></div><!-- End .mobil-menu-overlay -->

    <div class="mobile-menu-container">
        <div class="mobile-menu-wrapper">
            <span class="mobile-menu-close"><i class="icon-close"></i></span>

            <form action="#" method="get" class="mobile-search">
                <label for="mobile-search" class="sr-only">Search</label>
                <input type="search" class="form-control" name="mobile-search" id="mobile-search"
                    placeholder="Search in..." required>
                <button class="btn btn-primary" type="submit"><i class="icon-search"></i></button>
            </form>

            <nav class="mobile-nav">
                <ul class="mobile-menu">
                    <li class="active">
                        <a href="index.html">Home</a>

                        <ul>
                            <li><a href="index-1.html">01 - furniture store</a></li>
                            <li><a href="index-2.html">02 - furniture store</a></li>
                            <li><a href="index-3.html">03 - electronic store</a></li>
                            <li><a href="index-4.html">04 - electronic store</a></li>
                            <li><a href="index-5.html">05 - fashion store</a></li>
                            <li><a href="index-6.html">06 - fashion store</a></li>
                            <li><a href="index-7.html">07 - fashion store</a></li>
                            <li><a href="index-8.html">08 - fashion store</a></li>
                            <li><a href="index-9.html">09 - fashion store</a></li>
                            <li><a href="index-10.html">10 - shoes store</a></li>
                            <li><a href="index-11.html">11 - furniture simple store</a></li>
                            <li><a href="index-12.html">12 - fashion simple store</a></li>
                            <li><a href="index-13.html">13 - market</a></li>
                            <li><a href="index-14.html">14 - market fullwidth</a></li>
                            <li><a href="index-15.html">15 - lookbook 1</a></li>
                            <li><a href="index-16.html">16 - lookbook 2</a></li>
                            <li><a href="index-17.html">17 - fashion store</a></li>
                            <li><a href="index-18.html">18 - fashion store (with sidebar)</a></li>
                            <li><a href="index-19.html">19 - games store</a></li>
                            <li><a href="index-20.html">20 - book store</a></li>
                            <li><a href="index-21.html">21 - sport store</a></li>
                            <li><a href="index-22.html">22 - tools store</a></li>
                            <li><a href="index-23.html">23 - fashion left navigation store</a></li>
                            <li><a href="index-24.html">24 - extreme sport store</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="category.html">Shop</a>
                        <ul>
                            <li><a href="category-list.html">Shop List</a></li>
                            <li><a href="category-2cols.html">Shop Grid 2 Columns</a></li>
                            <li><a href="category.html">Shop Grid 3 Columns</a></li>
                            <li><a href="category-4cols.html">Shop Grid 4 Columns</a></li>
                            <li><a href="category-boxed.html"><span>Shop Boxed No Sidebar<span
                                            class="tip tip-hot">Hot</span></span></a></li>
                            <li><a href="category-fullwidth.html">Shop Fullwidth No Sidebar</a></li>
                            <li><a href="product-category-boxed.html">Product Category Boxed</a></li>
                            <li><a href="product-category-fullwidth.html"><span>Product Category Fullwidth<span
                                            class="tip tip-new">New</span></span></a></li>
                            <li><a href="cart.html">Cart</a></li>
                            <li><a href="checkout.html">Checkout</a></li>
                            <li><a href="wishlist.html">Wishlist</a></li>
                            <li><a href="#">Lookbook</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="product.html" class="sf-with-ul">Product</a>
                        <ul>
                            <li><a href="product.html">Default</a></li>
                            <li><a href="product-centered.html">Centered</a></li>
                            <li><a href="product-extended.html"><span>Extended Info<span
                                            class="tip tip-new">New</span></span></a></li>
                            <li><a href="product-gallery.html">Gallery</a></li>
                            <li><a href="product-sticky.html">Sticky Info</a></li>
                            <li><a href="product-sidebar.html">Boxed With Sidebar</a></li>
                            <li><a href="product-fullwidth.html">Full Width</a></li>
                            <li><a href="product-masonry.html">Masonry Sticky Info</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Pages</a>
                        <ul>
                            <li>
                                <a href="about.html">About</a>

                                <ul>
                                    <li><a href="about.html">About 01</a></li>
                                    <li><a href="about-2.html">About 02</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="contact.html">Contact</a>

                                <ul>
                                    <li><a href="contact.html">Contact 01</a></li>
                                    <li><a href="contact-2.html">Contact 02</a></li>
                                </ul>
                            </li>
                            <li><a href="login.html">Login</a></li>
                            <li><a href="faq.html">FAQs</a></li>
                            <li><a href="404.html">Error 404</a></li>
                            <li><a href="coming-soon.html">Coming Soon</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="blog.html">Blog</a>

                        <ul>
                            <li><a href="blog.html">Classic</a></li>
                            <li><a href="blog-listing.html">Listing</a></li>
                            <li>
                                <a href="#">Grid</a>
                                <ul>
                                    <li><a href="blog-grid-2cols.html">Grid 2 columns</a></li>
                                    <li><a href="blog-grid-3cols.html">Grid 3 columns</a></li>
                                    <li><a href="blog-grid-4cols.html">Grid 4 columns</a></li>
                                    <li><a href="blog-grid-sidebar.html">Grid sidebar</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Masonry</a>
                                <ul>
                                    <li><a href="blog-masonry-2cols.html">Masonry 2 columns</a></li>
                                    <li><a href="blog-masonry-3cols.html">Masonry 3 columns</a></li>
                                    <li><a href="blog-masonry-4cols.html">Masonry 4 columns</a></li>
                                    <li><a href="blog-masonry-sidebar.html">Masonry sidebar</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Mask</a>
                                <ul>
                                    <li><a href="blog-mask-grid.html">Blog mask grid</a></li>
                                    <li><a href="blog-mask-masonry.html">Blog mask masonry</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Single Post</a>
                                <ul>
                                    <li><a href="single.html">Default with sidebar</a></li>
                                    <li><a href="single-fullwidth.html">Fullwidth no sidebar</a></li>
                                    <li><a href="single-fullwidth-sidebar.html">Fullwidth with sidebar</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="elements-list.html">Elements</a>
                        <ul>
                            <li><a href="elements-products.html">Products</a></li>
                            <li><a href="elements-typography.html">Typography</a></li>
                            <li><a href="elements-titles.html">Titles</a></li>
                            <li><a href="elements-banners.html">Banners</a></li>
                            <li><a href="elements-product-category.html">Product Category</a></li>
                            <li><a href="elements-video-banners.html">Video Banners</a></li>
                            <li><a href="elements-buttons.html">Buttons</a></li>
                            <li><a href="elements-accordions.html">Accordions</a></li>
                            <li><a href="elements-tabs.html">Tabs</a></li>
                            <li><a href="elements-testimonials.html">Testimonials</a></li>
                            <li><a href="elements-blog-posts.html">Blog Posts</a></li>
                            <li><a href="elements-portfolio.html">Portfolio</a></li>
                            <li><a href="elements-cta.html">Call to Action</a></li>
                            <li><a href="elements-icon-boxes.html">Icon Boxes</a></li>
                        </ul>
                    </li>
                </ul>
            </nav><!-- End .mobile-nav -->

            <div class="social-icons">
                <a href="#" class="social-icon" target="_blank" title="Facebook"><i class="icon-facebook-f"></i></a>
                <a href="#" class="social-icon" target="_blank" title="Twitter"><i class="icon-twitter"></i></a>
                <a href="#" class="social-icon" target="_blank" title="Instagram"><i class="icon-instagram"></i></a>
                <a href="#" class="social-icon" target="_blank" title="Youtube"><i class="icon-youtube"></i></a>
            </div><!-- End .social-icons -->
        </div><!-- End .mobile-menu-wrapper -->
    </div><!-- End .mobile-menu-container -->

    <!-- Sign in / Register Modal -->
    <div class="modal fade" id="signin-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="icon-close"></i></span>
                    </button>

                    <div class="form-box">
                        <div class="form-tab">
                            <ul class="nav nav-pills nav-fill" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="signin-tab" data-toggle="tab" href="#signin"
                                        role="tab" aria-controls="signin" aria-selected="true">Sign In</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="register-tab" data-toggle="tab" href="#register" role="tab"
                                        aria-controls="register" aria-selected="false">Register</a>
                                </li>
                            </ul>
                            <div class="tab-content" id="tab-content-5">
                                <div class="tab-pane fade show active" id="signin" role="tabpanel"
                                    aria-labelledby="signin-tab">
                                    //here
                                    <div class="form-choice">
                                        <p class="text-center">or sign in with</p>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <a href="#" class="btn btn-login btn-g">
                                                    <i class="icon-google"></i>
                                                    Login With Google
                                                </a>
                                            </div><!-- End .col-6 -->
                                            <div class="col-sm-6">
                                                <a href="#" class="btn btn-login btn-f">
                                                    <i class="icon-facebook-f"></i>
                                                    Login With Facebook
                                                </a>
                                            </div><!-- End .col-6 -->
                                        </div><!-- End .row -->
                                    </div><!-- End .form-choice -->
                                </div><!-- .End .tab-pane -->
                                <div class="tab-pane fade" id="register" role="tabpanel" aria-labelledby="register-tab">
                                    <form action="#">
                                        <div class="form-group">
                                            <label for="register-email">Your email address *</label>
                                            <input type="email" class="form-control" id="register-email"
                                                name="register-email" required>
                                        </div><!-- End .form-group -->

                                        <div class="form-group">
                                            <label for="register-password">Password *</label>
                                            <input type="password" class="form-control" id="register-password"
                                                name="register-password" required>
                                        </div><!-- End .form-group -->

                                        <div class="form-footer">
                                            <button type="submit" class="btn btn-outline-primary-2">
                                                <span>SIGN UP</span>
                                                <i class="icon-long-arrow-right"></i>
                                            </button>

                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="register-policy"
                                                    required>
                                                <label class="custom-control-label" for="register-policy">I agree to the
                                                    <a href="#">privacy policy</a> *</label>
                                            </div><!-- End .custom-checkbox -->
                                        </div><!-- End .form-footer -->
                                    </form>
                                    <div class="form-choice">
                                        <p class="text-center">or sign in with</p>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <a href="#" class="btn btn-login btn-g">
                                                    <i class="icon-google"></i>
                                                    Login With Google
                                                </a>
                                            </div><!-- End .col-6 -->
                                            <div class="col-sm-6">
                                                <a href="#" class="btn btn-login  btn-f">
                                                    <i class="icon-facebook-f"></i>
                                                    Login With Facebook
                                                </a>
                                            </div><!-- End .col-6 -->
                                        </div><!-- End .row -->
                                    </div><!-- End .form-choice -->
                                </div><!-- .End .tab-pane -->
                            </div><!-- End .tab-content -->
                        </div><!-- End .form-tab -->
                    </div><!-- End .form-box -->
                </div><!-- End .modal-body -->
            </div><!-- End .modal-content -->
        </div><!-- End .modal-dialog -->
    </div><!-- End .modal -->

    <!-- Plugins JS File -->
    <script src="/petpet/presentation/assets/js/jquery.min.js"></script>
    <script src="/petpet/presentation/assets/js/bootstrap.bundle.min.js"></script>
    <script src="/petpet/presentation/assets/js/jquery.hoverIntent.min.js"></script>
    <script src="/petpet/presentation/assets/js/jquery.waypoints.min.js"></script>
    <script src="/petpet/presentation/assets/js/superfish.min.js"></script>
    <script src="/petpet/presentation/assets/js/owl.carousel.min.js"></script>
    <script src="/petpet/presentation/assets/js/bootstrap-select-country.min.js"></script>
    <script src="/petpet/presentation/assets/js/bootstrap-select-country.js"></script>
    <!-- Main JS File -->
    <script src="/petpet/presentation/assets/js/main.js"></script>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>--%>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.full.min.js"></script>
    <script src="/petpet/presentation/assets/register-form.js"></script>
    <script>
        $(document).ready(function () {
            // $('.js-example-basic-multiple').select2();
            $('#multiple-select-field').select2();
        });
    </script>
</body>


<!-- molla/login.html  22 Nov 2019 10:04:03 GMT -->

</html>