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
                    <c:forEach var="index" items="${requestScope.AllUsers}">
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
                                    <a href = "/petpet/admin/view-order?id=${index.getId()}">
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