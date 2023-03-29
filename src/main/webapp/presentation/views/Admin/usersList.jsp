<%@taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:directive.include file="AdminHeader.html" />

        <link rel="stylesheet" href="/petpet/presentation/assets/css/AdminProductsList.css">
    <div class="container" style="margin-top:5em">
        <div class="title row">
            <div class="col-sm-8">
                <h3>Users List</h3>
            </div>

        </div>

        <div class="col-lg-15 col-md-15 ml-auto mr-auto">

            <div class="table-responsive">
                <table class="table" id="usersTable">
                    <thead>
                    <tr>
                        <th class="text-center">#</th>
                        <th class="text-center">Customer Name</th>
                        <th class="text-center">Email</th>
                        <th class="text-center">CreditLimit</th>
                        <th class="text-center">Birthday</th>
                        <th class="text-center">Job</th>
                        <th class="text-center">Country</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="index" items="${requestScope.AllUsers}">
                        <tr>
                            <td class="text-center">${index.getId()}</td>
                            <td class="text-center">${index.getName()}</td>
                            <td class="text-center">${index.getEmail()}</td>
                            <td class="text-center">${index.getCreditLimit()}</td>
                            <td class="text-center">${index.getBirthday()}</td>
                            <td class="text-center">${index.getJob()}</td>
                            <td class="text-center">${index.getCountry()}</td>
                            <td class="td-actions text-right">
                                <button type="button" rel="tooltip"
                                        class="btn btn-success btn-link
                                                    btn-just-icon btn-sm"
                                        data-original-title="" title="Edit">
                                    <a href = "/petpet/admin/view-order?id=${index.getId()}">
                                        <i class="icon-eye"></i></a>

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
            </div>
        </div>
    </div>
</div>
<script src = "/petpet/presentation/assets/js/Admin/UsersList.js"></script>
<%@ include file="footer.html" %>