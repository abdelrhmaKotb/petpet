<%@taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:directive.include file="AdminHeader.html" />

        <main class="main" style="margin-top :5em">
            <nav aria-label="breadcrumb" class="breadcrumb-nav border-0 mb-0">
                <div class="container d-flex align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Products</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Centered</li>
                    </ol>

                    <nav class="product-pager ml-auto" aria-label="Product">
                        <a class="product-pager-link product-pager-prev" href="#" aria-label="Previous" tabindex="-1">
                            <i class="icon-angle-left"></i>
                            <span>Prev</span>
                        </a>

                        <a class="product-pager-link product-pager-next" href="#" aria-label="Next" tabindex="-1">
                            <span>Next</span>
                            <i class="icon-angle-right"></i>
                        </a>
                    </nav><!-- End .pager-nav -->
                </div><!-- End .container -->
            </nav><!-- End .breadcrumb-nav -->

            <div class="page-content">
                <div class="container">
                    <div class="product-details-top mb-2">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="product-gallery product-gallery-vertical">
                                    <div class="row">
                                        <figure class="product-main-image">
                                            <img id="product-zoom"
                                                src="/petpet/presentation/assets/images/products/single/centered/1.jpg"
                                                data-zoom-image="/petpet/presentation/assets/images/products/single/centered/1-big.jpg"
                                                alt="product image">

                                            <a href="#" id="btn-product-gallery" class="btn-product-gallery">
                                                <i class="icon-arrows"></i>
                                            </a>
                                        </figure><!-- End .product-main-image -->

                                        <div id="product-zoom-gallery" class="product-image-gallery">
                                            <a class="product-gallery-item active" href="#"
                                                data-image="/petpet/presentation/assets/images/products/single/centered/1.jpg"
                                                data-zoom-image="/petpet/presentation/assets/images/products/single/centered/1-big.jpg">
                                                <img src="/petpet/presentation/assets/images/products/single/centered/1-small.jpg"
                                                    alt="product side">
                                            </a>

                                            <a class="product-gallery-item" href="#"
                                                data-image="/petpet/presentation/assets/images/products/single/centered/2.jpg"
                                                data-zoom-image="/petpet/presentation/assets/images/products/single/centered/2-big.jpg">
                                                <img src="/petpet/presentation/assets/images/products/single/centered/2-small.jpg"
                                                    alt="product cross">
                                            </a>

                                            <a class="product-gallery-item" href="#"
                                                data-image="/petpet/presentation/assets/images/products/single/centered/3.jpg"
                                                data-zoom-image="/petpet/presentation/assets/images/products/single/centered/3-big.jpg">
                                                <img src="/petpet/presentation/assets/images/products/single/centered/3-small.jpg"
                                                    alt="product with model">
                                            </a>

                                            <a class="product-gallery-item" href="#"
                                                data-image="/petpet/presentation/assets/images/products/single/centered/4.jpg"
                                                data-zoom-image="/petpet/presentation/assets/images/products/single/centered/4-big.jpg">
                                                <img src="/petpet/presentation/assets/images/products/single/centered/4-small.jpg"
                                                    alt="product back">
                                            </a>
                                        </div><!-- End .product-image-gallery -->
                                    </div><!-- End .row -->
                                </div><!-- End .product-gallery -->
                            </div><!-- End .col-md-6 -->

                            <div class="col-md-6">
                                <div class="product-details product-details-centered">
                                    <h1 class="product-title">${requestScope.product.getName()}</h1>
                                    <!-- End .product-title -->



                                    <div class="product-price">
                                        ${requestScope.product.getPrice()} $
                                    </div><!-- End .product-price -->

                                    <div class="product-content">
                                        <p>${requestScope.product.getDescription()}</p>
                                    </div><!-- End .product-content -->



                                    <div class="product-details-action">
                                        <div class="details-action-col">
                                            <div class="product-details-quantity">
                                                Quantity : ${requestScope.product.getQuantity()}
                                            </div><!-- End .product-details-quantity -->

                                            <a href="/petpet/admin/edit?id=${requestScope.product.getId()}"
                                                class="btn-product btn-cart"><span>Edit Product</span></a>
                                        </div><!-- End .details-action-col -->


                                    </div><!-- End .product-details-action -->

                                    <div class="product-details-footer">
                                        <div class="product-cat">
                                            <span>Category:</span>
                                            <a href="#">${requestScope.product.getCategory().getName()}</a>
                                        </div><!-- End .product-cat -->

                                    </div><!-- End .product-details-footer -->
                                </div><!-- End .product-details -->
                            </div><!-- End .col-md-6 -->
                        </div><!-- End .row -->
                    </div><!-- End .product-details-top -->

                </div><!-- End .container -->
            </div><!-- End .page-content -->
        </main><!-- End .main -->
  <%@ include file="footer.html" %>