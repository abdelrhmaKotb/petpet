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

    <style>
        .select2-container {
            display: block;
        }

        .blur {
            filter: blur(8px);
            -webkit-filter: blur(8px);
        }
    </style>



</head>

<body style="
    background: url('/petpet/presentation/assets/images/backgrounds/login-bg.jpg') no-repeat fixed center;
">

    <main class="main">


        <div class="login-page  text-image pt-8 pb-8 pt-md-12 pb-md-12 pt-lg-17 pb-lg-17">
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
                                <form action="/petpet/login_" method="post">
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
                                            <span>SIGN In</span>
                                            <i class="icon-long-arrow-right"></i>
                                        </button>

                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" name="remember" class="custom-control-input" id="register-policy-2">
                                            <label  class="custom-control-label" for="register-policy-2">remember
                                                me</label>
                                        </div><!-- End .custom-checkbox -->
                                    </div><!-- End .form-footer -->
                                </form>
                            </div><!-- .End .tab-pane -->
                            <div class="tab-pane fade show " id="register-2" role="tabpanel"
                                aria-labelledby="register-tab-2">
                                <form action="/petpet/register" method="post" onsubmit="validateForm(event);">
                                    <div id="name-div" class="col-sm-12">
                                        <label for="register-Name">Name *</label>
                                        <input type="text" class="form-control" id="register-Name" name="register-Name"
                                            required="">
                                        <div class="invalid-feedback">Please provide your name
                                        </div>
                                    </div>


                                    <div class="col-md-12">
                                        <label for="register-username" class="form-label">Email</label>
                                        <div class="input-group form-outline">
                                            <span class="input-group-text" style="font-size: 2rem;"
                                                id="inputGroupPrepend">@</span>
                                            <input type="email" class="form-control" id="register-username"
                                                name="register-username" aria-describedby="inputGroupPrepend" required
                                                onblur="checkUsername()" />

                                            <div id="emailfeedback" class="invalid-feedback"></div>
                                        </div>
                                    </div>
                                    <br>


                                    <div class="row">
                                        <div class="col-sm-6">
                                            <label for="register-password-1">Password *</label>
                                            <input type="password" class="form-control" id="register-password-1"
                                                name="register-password-1" required>

                                            <div class="invalid-feedback">Must be 8-20 characters long.</div>
                                            <!-- <div class="valid-feedback">Please provide a valid city.</div> -->

                                        </div><!-- End .form-group -->

                                        <div class="col-sm-6">
                                            <label for="register-password-confirm">Confirm Password *</label>
                                            <input type="password" class="form-control" id="register-password-confirm"
                                                name="register-password-confirm" required>

                                            <div class="invalid-feedback">Password doesn't match</div>
                                        </div><!-- End .form-group -->

                                    </div>

                                    <div class="row">


                                        <div class="col-sm-6">
                                            <label for="register-phone">Phone *</label>
                                            <input type="tel" class="form-control" id="register-phone"
                                                name="register-phone" required>
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
                                                name="register-job" required="">
                                        </div>

                                        <div class="col-sm-6">
                                            <label for="register-credit">Credit Limit *</label>
                                            <input type="number" class="form-control" min="100" max="5000" step="10"
                                                name="register-credit" id="register-credit" required>
                                            <div class="invalid-feedback">Please enter a value</div>
                                        </div>

                                    </div>
                                    <div class="row">

                                        <div class="col-sm-4">
                                            <label for="register-street">Street *</label>
                                            <input type="text" class="form-control" id="register-street"
                                                name="register-street" required="">
                                            <div class="invalid-feedback">Please enter a value</div>
                                        </div>

                                        <div class="col-sm-4">
                                            <label for="register-city">City *</label>
                                            <input type="text" class="form-control" id="register-city"
                                                name="register-city" required="">
                                            <div class="invalid-feedback">Please enter a value</div>
                                        </div>

                                        <div class="col-sm-4">
                                            <label for="register-country">Country *</label>
                                            <!-- <select class="form-control" id="register-country" ></select> -->
                                            <input type="text" name="register-country" id="register-country"
                                                class="form-control" required>
                                            <div id="inValidCountry" class="invalid-feedback">Invalid country</div>

                                        </div>

                                    </div>

                                    <div class="col-sm-12">
                                        <select class="js-example-basic-multiple" id="multiple-select-field"
                                            name="multiple-select-field[]" data-placeholder="Choose interests" multiple
                                            style="display: block;">
                                            <option>Dogs</option>
                                            <option>Cats</option>
                                            <option>Birds</option>
                                            <option>Watering Supplies</option>
                                            <option>Pet Accessories</option>
                                            <option>Dog Crates , Houses</option>
                                            <option>Pet Feeding</option>
                                        </select>
                                    </div>

                                    <!-- <select class="js-example-basic-multiple" name="states[]" multiple="multiple">
                                        <option value="AL">Alabama</option>
                                        ...
                                        <option value="WY">Wyoming</option>
                                    </select> -->


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

                            </div><!-- .End .tab-pane -->
                        </div><!-- End .tab-content -->
                    </div><!-- End .form-tab -->
                </div><!-- End .form-box -->
            </div><!-- End .container -->
        </div><!-- End .login-page section-bg -->
    </main><!-- End .main -->

    </div><!-- End .page-wrapper -->
    <button id="scroll-top" title="Back to Top"><i class="icon-arrow-up"></i></button>



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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.full.min.js"></script>
    <script src="/petpet/presentation/assets/register-form.js"></script>
    <script>
        $(document).ready(function () {
            $('.js-example-basic-multiple').select2();
            // $('#multiple-select-field').select2();
        });
    </script>
</body>


<!-- molla/login.html  22 Nov 2019 10:04:03 GMT -->

</html>