<jsp:directive.include file="AdminHeader.html" />
        <link rel="stylesheet" href="/petpet/presentation/assets/css/AdminProductsList.css">

            <div class="container">
                <div class="title row">
                    <div class="col-sm-8">
                        <h3>Products List</h3>
                    </div>
                    <div class="col-sm-4" style="  padding: 1rem; ">
                        <a href="/petpet/add-product"> <button type="submit"
                                class="btn btn-outline-primary-2 btn-order btn-block">
                                <span class="btn-text">Add Product</span>
                                <span class="btn-hover-text">Add Product</span>
                            </button></a>
                    </div>
                </div>

                <div class="col-lg-15 col-md-15 ml-auto mr-auto">

                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="text-center">#</th>
                                    <th>Pet Name</th>
                                    <th>Category</th>
                                    <th class="text-right">Price</th>
                                    <th class="text-right">Quantity</th>
                                    <th class="text-right">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="product" items="${priductList}">
                                    <tr>
                                        <td>${product.getId() }</td>
                                        <td>${product.getName() }</td>
                                        <td>${product.getCategory().getName()}</td>
                                        <td class="text-right">${product.getPrice()}</td>
                                        <td class="text-right">${product.getQuantity()}</td>
                                        <td class="td-actions text-right">
                                            <button type="button" rel="tooltip" class="btn btn-success btn-link
                                                    btn-just-icon btn-sm" data-original-title="" title="Edit">
                                                <c:set var="foo" scope="request" value="..." />
                                                <a href="/petpet/Edit-Product?id=${product.getId()}"><i
                                                        class="icon-edit"></i></a>

                                            </button>
                                            <button type="button" rel="tooltip" data-id="${product.getId()}" class="deleteProduct btn btn-danger btn-link
                                                    btn-just-icon btn-sm" data-original-title="" title="Delete">
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
        <script src="/petpet/presentation/assets/js/Admin/ProductList.js"></script>
        <%@ include file="footer.html" %>