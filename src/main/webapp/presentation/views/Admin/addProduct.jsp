<jsp:directive.include file="header.html" />
<main class="main">
	<div class="page-header text-center" style="background-image:
			url('assets/images/page-header-bg.jpg')">
		<div class="container">
			<h1 class="page-title">Add Product</h1>
		</div><!-- End .container -->
	</div><!-- End .page-header -->
	<nav aria-label="breadcrumb" class="breadcrumb-nav">
		<div class="container">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
				<li class="breadcrumb-item"><a href="#">Add Product</a></li>
			</ol>
		</div><!-- End .container -->
	</nav><!-- End .breadcrumb-nav -->

	<div class="page-content">
		<div class="checkout">
			<div class="container">

				<form action="/petpet/add-product" method="POST" enctype="multipart/form-data">
					<div class="row">
						<div class="col-lg-9">
							<h2 class="checkout-title">Product Details</h2><!-- End .checkout-title -->
							<div class="row">
								<div class="col-sm-6">
									<label>Product Name *</label>
									<input type="text" class="form-control" name="product_name" required
										value="${requestScope.product.getName()}">
								</div><!-- End .col-sm-6 -->
								<div class="col-sm-6">

									<label>Category Name</label>
									<select class="form-control" name="category">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
									</select>


								</div><!-- End .col-sm-6 -->

							</div><!-- End .row -->

							<label>Product Price</label>
							<input type="text" class="form-control" name="product_price" value="${requestScope.product.getPrice()}">

							<label>Product Quantity *</label>
							<input type="number" class="form-control" name="product_quantity" required value="${requestScope.product.getQuantity()}">
							<label>Product Description (optional)</label>
							<textarea class="form-control" cols="30" rows="4" placeholder="Notes
									about your Product" name="product_description">${requestScope.product.getDescription()}</textarea>
						</div><!-- End .col-lg-9 -->
						<aside class="col-lg-3">
							<div class="summary">
								<h3 class="summary-title">Your Product Images</h3><!-- End .summary-title -->

								<button type="submit" class="btn btn-outline-primary-2 btn-order btn-block">
									<span class="btn-text">Place Order</span>
									<span class="btn-hover-text">Proceed to Checkout</span>
								</button>
							</div><!-- End .summary -->
						</aside><!-- End .col-lg-3 -->
					</div><!-- End .row -->
					<div class="container">
						<div class="row">
							<div class="my-2">
								<input type="file" class="form-control" id="images" name="images[]"
									onchange="preview_images();" multiple />
							</div>
							<div>
								<input onclick="upload_files()" type="button" class="btn btn-primary"
									name='submit_image' value="Upload Multiple Image" />
								<input onclick="return resetForm();" type="reset" class="btn btn-danger"
									name='reset_images' value="Reset" />
							</div>
						</div>
						<hr>
						<div class="row" id="image_preview"></div>
					</div>
				</form>
			</div><!-- End .container -->
		</div><!-- End .checkout -->
	</div><!-- End .page-content -->
</main><!-- End .main -->
<script src="/petpet/presentation/assets/js/Admin/addProduct.js"></script>
<%@ include file="footer.html" %>