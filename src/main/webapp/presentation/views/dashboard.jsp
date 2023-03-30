<%@taglib prefix="c" uri="jakarta.tags.core" %>
	<jsp:directive.include file="header.jsp" />

	<main class="main">
		<div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
			<div class="container">
				<h1 class="page-title">My Account<span>Shop</span></h1>
			</div><!-- End .container -->
		</div><!-- End .page-header -->
		<nav aria-label="breadcrumb" class="breadcrumb-nav mb-3">
			<div class="container">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/petpet/home">Home</a></li>
					<li class="breadcrumb-item"><a href="/petpet/Shop">Shop</a></li>
					<li class="breadcrumb-item active" aria-current="page">My Account</li>
				</ol>
			</div><!-- End .container -->
		</nav><!-- End .breadcrumb-nav -->

		<div class="page-content">
			<div class="dashboard">
				<div class="container">
					<div class="row">
						<aside class="col-md-4 col-lg-3">
							<ul class="nav nav-dashboard flex-column mb-3 mb-md-0" role="tablist">
								<li class="nav-item">
									<a class="nav-link active" id="tab-dashboard-link" data-toggle="tab"
										href="#tab-dashboard" role="tab" aria-controls="tab-dashboard"
										aria-selected="true">Dashboard</a>
								</li>
								<li class="nav-item">
									<a class="nav-link " id="tab-orders-link" data-toggle="tab" href="#tab-orders"
										role="tab" aria-controls="tab-orders" aria-selected="false">Orders</a>
								</li>

								<li class="nav-item">
									<a class="nav-link" id="tab-address-link" data-toggle="tab" href="#tab-address"
										role="tab" aria-controls="tab-address" aria-selected="false">Adresses</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" id="tab-account-link" data-toggle="tab" href="#tab-account"
										role="tab" aria-controls="tab-account" aria-selected="false">Account Details</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="/petpet/logout">Sign Out</a>
								</li>
							</ul>
						</aside><!-- End .col-lg-3 -->

						<div class="col-md-8 col-lg-9">
							<div class="tab-content">
								<div class="tab-pane fade show active" id="tab-dashboard" role="tabpanel"
									aria-labelledby="tab-dashboard-link">
									<p>Hello <span
											class="font-weight-normal text-dark">${sessionScope.userSession.getName()}</span>
										(Different <span class="font-weight-normal text-dark">User</span>? <a
											href="#">Log out</a>)
										<br>
										From your account dashboard you can view your <a href="#tab-orders"
											class="tab-trigger-link link-underline">recent orders</a>, manage your <a
											href="#tab-address" class="tab-trigger-link">shipping and billing
											addresses</a>, and <a href="#tab-account" class="tab-trigger-link">edit your
											password and account details</a>.
									</p>
								</div><!-- .End .tab-pane -->

								<div class="tab-pane fade" id="tab-orders" role="tabpanel"
									aria-labelledby="tab-orders-link">
									<c:choose>
										<c:when test="${sessionScope.userSession==null}">
											<p>No order has been made yet.</p>
											<a href="/petpet/Shope" class="btn btn-outline-primary-2"><span>GO
													SHOP</span><i class="icon-long-arrow-right"></i></a>
										</c:when>

										<c:otherwise>
											<c:choose>
												<c:when test="${requestScope.totalOrders < 1}">
													<p>No order has been made yet </span><a href="/petpet/Shop">go
															shopping ?</a>.</p>
												</c:when>
												<c:otherwise>
													<c:choose>
														<c:when test="${requestScope.totalOrders < 5}">
															<p>Your last ${requestScope.totalOrders} order.</p>
														</c:when>
														<c:otherwise>
															<p>Your last 5 order.</p>
														</c:otherwise>
													</c:choose>

													<table id="" class="table">
														<thead>
															<tr class="text-center">
																<th class="text-center">#</th>
																<th>createdAt</th>
																<th>totalPrice</th>
																<th>Status</th>
																<th class="text-right">Actions</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach var="item" items="${requestScope.orders}">

																<tr class="text-center">
																	<td>${item.getId()}</td>
																	<td>${item.getCreatedAt()}</td>
																	<td>${item.getTotalPrice()}</td>
																	<td class="in-stock">${item.getStatus()}</td>
																	<td class="action-col">
																		<button
																			class="btn btn-block btn-outline-primary-2">
																			<a
																				href="/petpet/admin/order-details?id=${item.getId()}">View
																				Details</a></button>
																	</td>
																</tr>

															</c:forEach>
														</tbody>
													</table>

												</c:otherwise>
											</c:choose>

										</c:otherwise>
									</c:choose>
								</div><!-- .End .tab-pane -->



								<div class="tab-pane fade" id="tab-address" role="tabpanel"
									aria-labelledby="tab-address-link">
									<p>The following addresses will be used on the checkout page by default.</p>

									<div class="row">
										<div class="col-lg-6">
											<div class="card card-dashboard">
												<div class="card-body">
													<h3 class="card-title">Billing Address</h3><!-- End .card-title -->

													<p><br>
														User Company<br>
														John str<br>
														New York, NY 10001<br>
														1-234-987-6543<br>
														yourmail@mail.com<br>
														<a href="#">Edit <i class="icon-edit"></i></a>
													</p>
												</div><!-- End .card-body -->
											</div><!-- End .card-dashboard -->
										</div><!-- End .col-lg-6 -->

										<div class="col-lg-6">
											<div class="card card-dashboard">
												<div class="card-body">
													<h3 class="card-title">Shipping Address</h3><!-- End .card-title -->

													<p>You have not set up this type of address yet.<br>
														<a href="#">Edit <i class="icon-edit"></i></a>
													</p>
												</div><!-- End .card-body -->
											</div><!-- End .card-dashboard -->
										</div><!-- End .col-lg-6 -->
									</div><!-- End .row -->
								</div><!-- .End .tab-pane -->

								<div class="tab-pane fade" id="tab-account" role="tabpanel"
									aria-labelledby="tab-account-link">
									<form action="/petpet/edit-user" id="edituser" method="post" >
										<div class="row">
											<div class="col-sm-6">
												<label>Name *</label>
												<input type="text" class="form-control"  id="firstName"
													value="${userSession.getName()}" required>
											</div><!-- End .col-sm-6 -->

											<input type="hidden" id="id" value="${userSession.getId()}">
											<div class="col-sm-6">
												<label>Email address *</label>
												<input type="email" class="form-control"
													value="${userSession.getEmail()}" readonly disabled>
											</div><!-- End .col-sm-6 -->

										</div><!-- End .row -->

										<label>credit limit *</label>
										<input type="number" class="form-control" id="creditLimit"
											value="${userSession.getCreditLimit()}" required>

										<label>Current password (leave blank to leave unchanged)</label>
										<input type="password" id="oldpassword" class="form-control">

										<label>New password (leave blank to leave unchanged)</label>
										<input type="password" id="pass1" class="form-control">

										<label>Confirm new password</label>
										<input type="password" id="pass2" class="form-control mb-2">


										<div class="row">
											<div class="col-sm-6">
												<label>job</label>
												<input type="text" class="form-control" id="job"
													value="${userSession.getJob()}" required>
											</div><!-- End .col-sm-6 -->

											<div class="col-sm-6">
												<label>phone *</label>
												<input type="text" value="${userSession.getPhone()}" id="phone"
													class="form-control">
											</div><!-- End .col-sm-6 -->

										</div><!-- End .row -->


										<div class="row">
											<div class="col-sm-6">
												<label>country</label>
												<input type="text" class="form-control" id="country"
													value="${userSession.getCountry()}" required>
											</div><!-- End .col-sm-6 -->

											<div class="col-sm-6">
												<label>city</label>
												<input type="text" id="city" value="${userSession.getCity()}"
													class="form-control">
											</div><!-- End .col-sm-6 -->

										</div><!-- End .row -->

										<div class="row">
											<div class="col-sm-6">
												<label>street</label>
												<input type="text" class="form-control" id="street"
													value="${userSession.getStreet()}" required>
											</div><!-- End .col-sm-6 -->

											<div class="col-sm-6">
												<label>ZIP</label>
												<input type="text" id="zip" value="${userSession.getZip()}"
													class="form-control">
											</div><!-- End .col-sm-6 -->

										</div><!-- End .row -->

										<button type="button" class="btn btn-outline-primary-2" onclick="editUser();">
											<span>SAVE CHANGES</span>
											<i class="icon-long-arrow-right"></i>
										</button>
									</form>
								</div><!-- .End .tab-pane -->
							</div>
						</div><!-- End .col-lg-9 -->
					</div><!-- End .row -->
				</div><!-- End .container -->
			</div><!-- End .dashboard -->
		</div><!-- End .page-content -->
	</main><!-- End .main -->
	<script src="/petpet/presentation/assets/js/UserOrders.js"></script>

	<%@ include file="footer.html" %>