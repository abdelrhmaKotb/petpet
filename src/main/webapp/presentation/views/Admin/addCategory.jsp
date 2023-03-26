<jsp:directive.include file="AdminHeader.html" />
<main class="main" style="margin-top :5em">
	<div class="page-header text-center" style="background-image:
			url('assets/images/page-header-bg.jpg')">
		<div class="container">
			<h1 class="page-title">Add Category</h1>
		</div><!-- End .container -->
	</div><!-- End .page-header -->
	<nav aria-label="breadcrumb" class="breadcrumb-nav">
		<div class="container">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
				<li class="breadcrumb-item"><a href="#">Add Category</a></li>
			</ol>
		</div><!-- End .container -->
	</nav><!-- End .breadcrumb-nav -->

	<div class="page-content">
		<div class="checkout">
			<div class="container">

				<form action="/petpet/adimn/add-category" method="POST" >
					<div class="row">
						<div class="col-lg-9">
							<h2 class="checkout-title"> Adding Category </h2><!-- End .checkout-title -->
							<div class="row">
								<div class="col-sm-6">
									<label>Category Name *</label>
									<input type="text" class="form-control" id ="category_name" name="category_name" required>
								</div><!-- End .col-sm-6 -->
								<div class="col-sm-6">
									<label>Category Parent</label>
									<select name="mySelect" id="mySelect" class="form-control">
									</select>
									<!-- <input type="hidden" name="selectedValue" id="selectedValue"> -->
									

								</div><!-- End .col-sm-6 -->

							</div><!-- End .row -->

							
						</div><!-- End .col-lg-9 -->

					</div><!-- End .row -->
					<div id="errorMessage" style="color: red;" >${errorMessagecategore}</div>
					<button type="submit">Submit</button>
					
				</form>
			</div><!-- End .container -->
		</div><!-- End .checkout -->
	</div><!-- End .page-content -->
</main><!-- End .main -->
<script src="/petpet/presentation/assets/js/Admin/addCategory.js"></script>
	<%@ include file="footer.html" %>