<%@taglib prefix="c" uri="jakarta.tags.core" %>
    <jsp:directive.include file="AdminHeader.html" />

    <meta http-equiv="refresh" content="10">

    <div class="app-main__outer" style=" margin: 5em;">
        <div class="app-main__inner">
            <div class="app-page-title">
            </div>
        </div>
        <div class="row">


        </div>
        <div class="row">
            <div class="col-md-12 col-lg-6">
                <div class="mb-3 card">
                    <div class="card-header-tab card-header-tab-animation lead card-header">
                        <div class="card-header-title">
                            <i class="header-icon lnr-apartment icon-gradient bg-love-kiss"> </i>
                            Categories Report
                        </div>

                    </div>
                    <div class="card-body">
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="tabs-eg-77">
                                <div class="card mb-3 widget-chart widget-chart2 text-left w-100">
                                    <div class="widget-chat-wrapper-outer">
                                        <div class="widget-chart-wrapper widget-chart-wrapper-lg opacity-10 m-0">
                                            <canvas id="canvas"></canvas>
                                        </div>
                                    </div>
                                </div>
                                <h6 class="text-muted text-uppercase font-size-md opacity-5 font-weight-normal">Top
                                    Products</h6>
                                <div class="scroll-area-sm" style="height: auto;">
                                    <div class="scrollbar-container">
                                        <ul class="rm-list-borders rm-list-borders-scroll list-group list-group-flush">
                                            <c:forEach var="best" items="${requestScope.categoriesReport}">
                                                <li class="list-group-item">
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left">
                                                                <div class="widget-heading">${best.getCategoryName()}
                                                                </div>
                                                            </div>
                                                            <div class="widget-content-right">
                                                                <div class="font-size-xlg text-muted">

                                                                    <span>${best.getCategorySales()}</span>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12 col-lg-6">
                <div class="">
                    <div class="card mb-3 widget-content">
                        <div class="widget-content-outer">
                            <div class="widget-content-wrapper">
                                <div class="widget-content-left">
                                    <div class="widget-heading">Total Orders</div>
                                    <div class="widget-subheading">Last year expenses</div>
                                </div>
                                <div class="widget-content-right">
                                    <div>
                                        <p class="counter-count text-success widget-numbers ">
                                            ${requestScope.totalOrders}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="">
                    <div class="card mb-3 widget-content">
                        <div class="widget-content-outer">
                            <div class="widget-content-wrapper">
                                <div class="widget-content-left">
                                    <div class="widget-heading">Products Sold</div>
                                    <div class="widget-subheading">Revenue streams</div>
                                </div>
                                <div class="widget-content-right">
                                    <div>
                                        <p class="counter-count text-success widget-numbers ">
                                            ${requestScope.productSold}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="">
                    <div class="card mb-3 widget-content">
                        <div class="widget-content-outer">
                            <div class="widget-content-wrapper">
                                <div class="widget-content-left">
                                    <div class="widget-heading">Users</div>
                                    <div class="widget-subheading">Our Customers</div>
                                </div>
                                <div class="widget-content-right">
                                    <div>
                                        <p class="counter-count text-success widget-numbers ">${requestScope.totalUsers}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="main-card mb-3 card">
                    <div class="card-header lead" style=" font-size: initial;">Best Selling

                    </div>
                    <div class="table-responsive">
                        <table class="align-middle mb-0 table table-borderless table-striped table-hover">
                            <thead>
                                <tr>
                                    <th class="text-center">#</th>
                                    <th>Product</th>
                                    <th class="text-center">Quantity</th>
                                    <th class="text-center">Unit Price</th>
                                    <th class="text-center">Revenue</th>
                                </tr>
                            </thead>
                            <tbody>

                                <c:forEach var="best" items="${requestScope.bestSelling}">
                                    <tr>
                                        <td class="text-center text-muted">${best.getId()}</td>
                                        <td>
                                            <div class="widget-content p-0">
                                                <div class="widget-content-wrapper">

                                                    <div class="widget-content-left flex2">
                                                        <div class="widget-heading">${best.getProductName()}</div>

                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-center">${best.getQuantity()}</td>
                                        <td class="text-center">${best.getUnitPrice()} EGP</td>
                                        <td class="text-center">${best.getTotalPrice()} EGP</td>
                                        <!-- <td class="text-center">
                                                    <button type="button" id="PopoverCustomT-4" class="btn btn-primary btn-sm">Details</button>
                                                </td> -->
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>

                    </div>

                </div>
            </div>
        </div>

    </div>
    <%@ include file="footer.html" %>