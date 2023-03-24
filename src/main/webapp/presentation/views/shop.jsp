<%@taglib prefix="c" uri="jakarta.tags.core" %>

    <jsp:directive.include file="header.jsp" />
    <main class="main">
        <div class="page-header text-center"
            style="background-image: url('/petpet/presentation/assets/images/page-header-bg.jpg')">
            <div class="container-fluid">
                <h1 class="page-title">Shop</h1>
            </div><!-- End .container-fluid -->
        </div><!-- End .page-header -->
        <nav aria-label="breadcrumb" class="breadcrumb-nav mb-2">
            <div class="container-fluid">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/petpet/home">Home</a></li>
                    <li class="breadcrumb-item"><a href="/petpet/shop">Shop</a></li>
                </ol>
            </div><!-- End .container-fluid -->
        </nav><!-- End .breadcrumb-nav -->

        <div class="page-content">
            <div class="container-fluid">
                <div class="toolbox">
                    <div class="toolbox-left">
                        <a href="#" class="sidebar-toggler"><i class="icon-bars"></i>Filters</a>
                    </div><!-- End .toolbox-left -->

                    <div class="toolbox-center">
                        <div class="toolbox-info">
                            Showing <span id="currentPage">${requestScope.CurrentPage} </span>of <span>${requestScope.totalPages}</span> Page
                        </div><!-- End .toolbox-info -->
                    </div><!-- End .toolbox-center -->

                    <div class="toolbox-right">
                        <div class="toolbox-sort">
                            <label for="sortby">Sort by:</label>
                            <div class="select-custom">
                                <select name="sortby" id="sortby" class="form-control">
                                    <option value="popularity" selected="selected">Most Popular</option>
                                    <option value="rating">Most Rated</option>
                                    <option value="date">Date</option>
                                </select>
                            </div>
                        </div><!-- End .toolbox-sort -->
                    </div><!-- End .toolbox-right -->
                </div><!-- End .toolbox -->

                <div class="products">
                    <div class="row productsDiv">

                        <c:forEach var="products" items="${requestScope.productList}">

                            <div class="col-6 col-md-4 col-lg-4 col-xl-3 col-xxl-2">
                                <div class="product">
                                    <figure class="product-media">
                                        <span class="product-label label-new">New</span>

                                        <a href="/petpet/product?id=${products.getId()}">
                                            <img src="/petpet${products.getImagesUlrs().get(0)}" alt="Product image"
                                                class="product-image">
                                        </a>

                                        <div class="product-action-vertical">
                                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add
                                                    to wishlist</span></a>
                                        </div><!-- End .product-action -->

                                        <div class="product-action action-icon-top">
                                            <a data-id="${products.getId()}" data-price="${products.getPrice()}"
                                                data-name="${products.getName()}"
                                                class="btn-product btn-cart addToCart"><span>add
                                                    to cart</span></a>
                                            <a href="" class="btn-product btn-quickview" title="Quick view"><span>quick
                                                    view</span></a>

                                        </div><!-- End .product-action -->
                                    </figure><!-- End .product-media -->

                                    <div class="product-body">
                                        <div class="product-cat">
                                            <a href="#">${products.getCategory().getName()}</a>
                                        </div><!-- End .product-cat -->
                                        <h3 class="product-title"><a
                                                href="/petpet/product?id=${products.getId()}">${products.getName()}</a>
                                        </h3><!-- End .product-title -->
                                        <div class="product-price">
                                            ${products.getPrice()}
                                        </div><!-- End .product-price -->

                                    </div><!-- End .product-body -->
                                </div><!-- End .product -->
                            </div><!-- End .col-sm-6 col-lg-4 col-xl-3 -->


                        </c:forEach>

                    </div><!-- End .row -->

                    <div class="load-more-container text-center">
                       <nav aria-label="Page navigation example">
                        <ul class="pagination">
                          <li class="page-item">
                            <a class="page-link" href="#" aria-label="Previous">
                              <span aria-hidden="true">&laquo;</span>
                              <span class="sr-only">Previous</span>
                            </a>
                          </li>
                            <c:forEach var = "i" begin = "1" end = "${requestScope.totalPages}">
                              <li class="page-item"><a class="page-link next" href="#" data-id="${i}">${i}</a></li>
                             </c:forEach>
                          <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                              <span aria-hidden="true">&raquo;</span>
                              <span class="sr-only">Next</span>
                            </a>
                          </li>

                        </ul>
                      </nav>
                    </div><!-- End .load-more-container -->
                </div><!-- End .products -->

                <div class="sidebar-filter-overlay"></div><!-- End .sidebar-filter-overlay -->
                <aside class="sidebar-shop sidebar-filter">
                    <div class="sidebar-filter-wrapper">
                        <div class="widget widget-clean">
                            <label><i class="icon-close"></i>Filters</label>
                            <a href="" onClick="CleanAllFilters(e)" class="sidebar-filter-clear">Clean All</a>
                        </div><!-- End .widget -->
                        <div class="widget widget-collapsible">
                            <h3 class="widget-title">
                                <a data-toggle="collapse" href="#widget-1" role="button" aria-expanded="true"
                                    aria-controls="widget-1">
                                    Category
                                </a>
                            </h3><!-- End .widget-title -->

                            <div class="collapse show" id="widget-1">
                                <div class="widget-body">
                                    <div class="filter-items filter-items-count">

                                      <c:forEach var="category" items="${requestScope.categoryList}">

                                            <div class="filter-item">
                                                <div class="custom-control custom-checkbox">

                                                    <input type="checkbox" class="custom-control-input " data="${category.getName()}" name ="category" id="${category.getId()}">
                                                    <label class="custom-control-label" for="${category.getId()}">${category.getName()}</label>

                                                 </div><!-- End .custom-checkbox -->
                                                <span class="item-count">${category.getProductsQuantity()}</span>
                                            </div><!-- End .filter-item -->

                                        </c:forEach>
                                       </div>

                                </div><!-- End .widget-body -->
                            </div><!-- End .collapse -->

                        </div><!-- End .widget -->




                        <div class="widget widget-collapsible">
                            <h3 class="widget-title">
                                <a data-toggle="collapse" href="#widget-5" role="button" aria-expanded="true"
                                    aria-controls="widget-5">
                                    Price
                                </a>
                            </h3><!-- End .widget-title -->

                            <div class="collapse show" id="widget-5">
                                <div class="widget-body">
                                    <div class="filter-price">
                                        <div class="filter-price-text">
                                            Price Range:
                                                <input type="range" name="range" value="0" max ="${requestScope.highestPrise}" oninput="this.nextElementSibling.value = this.value">
                                                <output id="priseSliderValue" >0</output>
                                            <span id="filter-price-range"></span>
                                        </div><!-- End .filter-price-text -->

                                        <div id="price-slider"></div><!-- End #price-slider -->

                                    </div><!-- End .filter-price -->
                                </div><!-- End .widget-body -->
                            </div><!-- End .collapse -->

                             <div class="widget widget-clean">

                                <a href="" onclick="filter(event)" class="sidebar-filter-clear "> Filter </a>
                             </div><!-- End .widget -->

                        </div><!-- End .widget -->
                    </div><!-- End .sidebar-filter-wrapper -->
                </aside><!-- End .sidebar-filter -->
            </div><!-- End .container-fluid -->
        </div><!-- End .page-content -->
    </main><!-- End .main -->
    <script src="/petpet/presentation/assets/js/Shop.js"></script>

    <%@ include file="footer.html" %>