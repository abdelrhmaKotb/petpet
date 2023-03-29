<%@taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:directive.include file="AdminHeader.html" />
        <link rel="stylesheet" href="/petpet/presentation/assets/css/AdminProductsList.css">

            <div class="container" style="margin-top :5em">
                <div class="title row">
                    <div class="col-sm-8">
                        <h3> Orders  </h3>
                    </div>

                </div>

                <div class="col-lg-15 col-md-15 ml-auto mr-auto">

                    <div class="table-responsive">
                        <table id="OrderTable" class="table">
                            <thead>
                                <tr>
                                    <th class="text-center">#</th>
                                    <th>createdAt</th>
                                    <th>totalPrice</th>
                                    <th>Status</th>
                                    <th class="text-right">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="order" items="${requestScope.Orders}">

                                    <tr>
                                        <td>${order.getId()}</td>
                                        <td>${order.getCreatedAt() }</td>
                                        <td>${order.getTotalPrice()}</td>
                                        <td>${order.getStatus()}</td>
                                         <td class="td-actions text-right">
                                            <button type="button" rel="tooltip" class="btn btn-success btn-link btn-just-icon btn-sm" data-original-title="" title="Edit">
                                                <c:set var="foo" scope="request" value="..." />
                                                <a href="/petpet/admin/order-details?id=${order.getId()}"><i
                                                        class="icon-edit"></i></a>

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
                                  <c:forEach var = "i" begin = "1" end = "${requestScope.totalPages}">
                                    <li class="page-item"><a class="page-link next" href="#" data-id="${i}" data-userId="${requestScope.UserId}">${i}</a></li>
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
        <script src="/petpet/presentation/assets/js/Admin/NextUserOrder.js"></script>
        <%@ include file="footer.html" %>