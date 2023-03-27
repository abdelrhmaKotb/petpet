<%@taglib prefix="c" uri="jakarta.tags.core" %>
    <jsp:directive.include file="AdminHeader.html" />
    <link rel="stylesheet" href="/petpet/presentation/assets/css/AdminProductsList.css">

    <div class="container" style="margin-top :5em">
        <div class="title row">
            <div class="col-sm-8">
                <h3>Products List</h3>
            </div>
            <div class="col-sm-4" style="  padding: 1rem; ">
                <a href="/petpet/admin/add-product"> <button type="submit"
                        class="btn btn-outline-primary-2 btn-order btn-block">
                        <span class="btn-text">Add Product</span>
                        <span class="btn-hover-text">Add Product</span>
                    </button></a>
            </div>
        </div>

        <div class="col-lg-15 col-md-15 ml-auto mr-auto">

            <div class="table-responsive">
                <table class="table" id="productTable">
                    <thead>
                        <tr>
                            <th class="text-center">#</th>
                            <th>Pet Name</th>
                            <th>Category</th>
                            <th>Status</th>
                            <th class="text-right">Price</th>
                            <th class="text-right">Quantity</th>
                            <th class="text-right">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="product" items="${requestScope.productList}">
                            <tr>
                                <td class="text-center">${product.getId() }</td>
                                <td>${product.getName() }</td>
                                <td>${product.getCategory().getName()}</td>
                                 <c:choose>
                                 <c:when test="${product.getQuantity() == 0}">
                                    <td class="stock-col"><span class="out-of-stock">Out stock</span></td>
                                  </c:when>
                                  <c:otherwise>
                                         <td class="stock-col"><span class="in-stock">In stock</span></td>
                                   </c:otherwise>
                                    </c:choose>
                                <td class="text-right">${product.getPrice()} EGP</td>
                                <td class="text-right">${product.getQuantity()}</td>
                                <td class="td-actions text-right">
                                    <button type="button" rel="tooltip" class="btn btn-success btn-link
                                                    btn-just-icon btn-sm" data-original-title="" title="Edit">
                                        <c:set var="foo" scope="request" value="..." />
                                        <a href="/petpet/admin/edit-product?id=${product.getId()}"><i
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
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                                <span class="sr-only">Previous</span>
                            </a>
                        </li>
                        <c:forEach var="i" begin="1" end="${requestScope.totalPages}">
                            <li class="page-item"><a class="page-link next" href="#" data-id="${i}"
                                    data-userId="${requestScope.UserId}">${i}</a></li>
                        </c:forEach>
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                                <span class="sr-only">Next</span>
                            </a>
                        </li>

                    </ul>
                </nav>
            </div>
        </div>
    </div>
    </div>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="/petpet/presentation/assets/js/Admin/ProductList.js"></script>
    <%@ include file="footer.html" %>