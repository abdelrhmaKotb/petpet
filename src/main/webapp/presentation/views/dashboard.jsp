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
										    <c:when  test="${requestScope.totalOrders < 1}">
                                                <p>No order has been made yet </span><a href="/petpet/Shop">go shopping ?</a>.</p>
										    </c:when>
										    <c:otherwise>
										    <c:choose>
										    <c:when test="${requestScope.totalOrders < 5}">
										    <p>Your last ${requestScope.totalOrders}  order.</p>
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
                                                                <button class="btn btn-block btn-outline-primary-2">  <a href="/petpet/admin/order-details?id=${item.getId()}">View Details</a></button>
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
									<div >
										<div class="col-md-12">
											<label for="update-username" class="form-label">Username </label>
											<div class="input-group form-outline">
												<input type="email" class="form-control" id="update-username" value= "${sessionScope.userSession.getEmail()}"
													name="update-username" aria-describedby="inputGroupPrepend"
													onblur="checkUsername()" required />

												<div id="emailfeedback" class="invalid-feedback"></div>
											</div>
										</div>
										<div id="name-div" class="col-sm-12">
											<label for="update-Name">Name *</label>
											<input type="text" class="form-control" id="update-Name" value= "${sessionScope.userSession.firstName}"
												onblur="checkName()" name="update-Name" required="">
											<button class="edit-button"  onclick="toggleReadonlyname()">Edit
												<i class="icon-edit"> </i></button>
											<div class="invalid-feedback">Please provide your name
											</div>
										</div>

										<br>


										<div class="row">
											<div class="col-sm-6">
												<label for="update-password-1">Password *</label>
												<input type="password" class="form-control" id="update-password-1"
													name="update-password-1" onblur="checkPassword()" required>
												<button class="edit-button " onclick="toggleReadonlypass()">Edit
													<i class="icon-edit"> </i></button>
												<div class="invalid-feedback">Must be 8-20 characters long.</div>
												<!-- <div class="valid-feedback">Please provide a valid city.</div> -->

											</div><!-- End .form-group -->

											<div class="col-sm-6">
												<label for="update-password-confirm">Confirm Password *</label>
												<input type="password" class="form-control" id="update-password-confirm"
													name="update-password-confirm" onblur="checkMatchPassword()"
													required>

												<div class="invalid-feedback">Password doesn't match</div>
											</div><!-- End .form-group -->

										</div>

										<div class="row">


											<div class="col-sm-6">
												<label for="upd-phon">Phone *</label>
												<input type="tel" class="form-control" id="upd-phon" name="upd-phon"
													onblur="checkPhone()" required>
												<button class="edit-button " onclick="toggleReadonlyphone()">Edit
													<i class="icon-edit"> </i></button>
												<div class="invalid-feedback">Invalid Phone Number</div>
											</div>

											<div class="col-sm-6">
												<label for="register-birth">Birthday *</label>
												<input type="date" class="form-control" id="update-birth"
													name="update-birth">
												<button class="edit-button " onclick="toggleReadonlyBirth()">Edit
													<i class="icon-edit" > </i></button>
											</div>

										</div>

										<div class="row">
											<div class="col-sm-6">
												<label for="update-job">Job *</label>
												<input type="text" class="form-control" id="update-job"
													name="update-job" onblur="checkJob()" required="">
												<button class="edit-button " onclick="toggleReadonlyjob()">Edit
													<i class="icon-edit" > </i></button>
											</div>

											<div class="col-sm-6">
												<label for="update-credit">Credit Limit *</label>
												<input type="number" class="form-control" min="100" max="5000" step="10"
													name="update-credit" id="update-credit" onblur="checkCredit()"
													required>
												<button class="edit-button " onclick="toggleReadonlycredit()">Edit <i class="icon-edit" ></i></button>
												<div class="invalid-feedback">Please enter a value</div>
											</div>

										</div>
										<div class="row">

											<div class="col-sm-4">
												<label for="update-street">Street *</label>
												<input type="text" class="form-control" id="update-street"
													name="update-street" onblur="checkStreet()" required="">
												<button class="edit-button" onclick="toggleReadonlyAddress()">Edit
													<i class="icon-edit" > </i></button>
												<div class="invalid-feedback">Please enter a value</div>
											</div>

											<div class="col-sm-4">
												<label for="update-city">City *</label>
												<input type="text" class="form-control" id="update-city"
													name="update-city" onblur="checkCity()" required="">

												<div class="invalid-feedback">Please enter a value</div>
											</div>

											<div class="col-sm-4">
												<label for="update-country">Country *</label>
												<!-- <select class="form-control" id="register-country" ></select> -->
												<input type="text" name="update-country" id="update-country"
													class="form-control" onblur="checkCountry()" required>
												<div id="inValidCountry" class="invalid-feedback">Invalid country</div>

											</div>

										</div>
										<br>
										<button  class="btn btn-outline-primary-2" id="savebutton" onclick="UpdateUser()">
											<span>SAVE CHANGES</span>
											<i class="icon-long-arrow-right"></i>
										</button>
									</div>
								</div><!-- .End .tab-pane -->
							</div>
						</div><!-- End .col-lg-9 -->
					</div><!-- End .row -->
				</div><!-- End .container -->
			</div><!-- End .dashboard -->
		</div><!-- End .page-content -->
	</main><!-- End .main -->
	<script src="/petpet/presentation/assets/js/UserOrders.js"></script>

	<script src="/petpet/presentation/assets/js/UserUpdate.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<style>
		.edit-button {
			background-color: transparent;
			/* border: 1px solid black; 
  padding: 10px; 
  border-radius: 5px; */
  cursor: pointer;  

		}

		.edit-button i {
			margin-right: 3px;
		}
	</style>
	<%@ include file="footer.html" %>