<jsp:directive.include file="header.jsp" />

<main class="main">
	<div class="page-header text-center"
		style="background-image: url('/petpet/presentation/assets/images/page-header-bg.jpg')">
		<div class="container">
			<h1 class="page-title">Checkout<span>Shop</span></h1>
		</div><!-- End .container -->
	</div><!-- End .page-header -->
	<nav aria-label="breadcrumb" class="breadcrumb-nav">
		<div class="container">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="petpet/home">Home</a></li>
				<li class="breadcrumb-item"><a href="petpet/shop">Shop</a></li>
				<li class="breadcrumb-item active" aria-current="page">Checkout</li>
			</ol>
		</div><!-- End .container -->
	</nav><!-- End .breadcrumb-nav -->

	<div class="page-content">
		<div class="checkout">
			<div class="container">
				<div class="checkout-discount">
					<form action="#">
						<input type="text" class="form-control" required id="checkout-discount-input">
						<label for="checkout-discount-input" class="text-truncate">Have a coupon? <span>Click here to
								enter your code</span></label>
					</form>
				</div><!-- End .checkout-discount -->
				<form action="/petpet/checkout" method="post">
					<div class="row">
						<div class="col-lg-9">

							<ul style="color: red;">
								<c:forEach var="item" items="${requestScope.errors}">
									<li>${item}</li>
								</c:forEach>
							</ul>

							<h2 class="checkout-title">Billing Details</h2><!-- End .checkout-title -->
							<div class="row">
								<div class="col-sm-12">
									<label>Name *</label>
									<input type="text" class="form-control" name="register-name"
										value="${sessionScope.userSession.getName()}" required>
								</div>
							</div><!-- End .row -->

							<label>Country *</label>
							<input type="text" class="form-control" name="register-country"
								value="${sessionScope.userSession.getCountry()}" required>

							<label>Street address *</label>
							<input type="text" class="form-control" name="register-street"
								value="${sessionScope.userSession.getStreet()}" required>

							<div class="row">
								<div class="col-sm-12">
									<label>Town / City *</label>
									<input type="text" name="register-city" class="form-control"
										value="${sessionScope.userSession.getCity()}" required>
								</div><!-- End .col-sm-6 -->

							</div><!-- End .row -->

							<div class="row">
								<div class="col-sm-6">
									<label>Postcode / ZIP *</label>
									<input type="text" name="zip" class="form-control"
										value="${sessionScope.userSession.getZip()}" required>
								</div><!-- End .col-sm-6 -->

								<div class="col-sm-6">
									<label>Phone *</label>
									<input type="tel" name="register-phone" class="form-control"
										value="${sessionScope.userSession.getPhone()}" required>
								</div><!-- End .col-sm-6 -->
							</div><!-- End .row -->

							<label>Email address *</label>
							<input type="email" class="form-control" name="register-email"
								value="${sessionScope.userSession.getEmail()}" required>



							<label>Order notes (optional)</label>
							<textarea class="form-control" cols="30" rows="4"
								placeholder="Notes about your order, e.g. special notes for delivery"
								name="notes"></textarea>
						</div><!-- End .col-lg-9 -->
						<aside class="col-lg-3">
							<div class="summary">
								<h3 class="summary-title">Your Order</h3><!-- End .summary-title -->

								<table class="table table-summary">
									<thead>
										<tr>
											<th>Product</th>
											<th>Total</th>
										</tr>
									</thead>

									<tbody>

										<tr class="summary-subtotal">
											<td>Subtotal:</td>
											<td>$ ${total}</td>
										</tr><!-- End .summary-subtotal -->
										<tr>
											<td>Shipping:</td>
											<td>Free shipping</td>
										</tr>
										<tr class="summary-total">
											<td>Total:</td>
											<td>$ ${total}</td>
										</tr><!-- End .summary-total -->
									</tbody>
								</table><!-- End .table table-summary -->



								<button type="submit" class="btn btn-outline-primary-2 btn-order btn-block">
									<span class="btn-text">Place Order</span>
									<span class="btn-hover-text">Proceed to Checkout</span>
								</button>
							</div><!-- End .summary -->
						</aside><!-- End .col-lg-3 -->
					</div><!-- End .row -->
				</form>
			</div><!-- End .container -->
		</div><!-- End .checkout -->
	</div><!-- End .page-content -->
</main><!-- End .main -->
<%@ include file="footer.html" %>