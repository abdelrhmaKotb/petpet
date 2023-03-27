<%@taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:directive.include file="AdminHeader.html" />
        <main class="main" style="margin-top:5em">
        	<div class="page-header text-center" style="background-image: url('assets/images/page-header-bg.jpg')">
        		<div class="container">
        			<h1 class="page-title">Order<span>Details</span></h1>
        		</div><!-- End .container -->
        	</div><!-- End .page-header -->
            <nav aria-label="breadcrumb" class="breadcrumb-nav">
                <div class="container">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/petpet/admin">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="/petpet/admin/review-customers">User</a></li>
                        <li class="breadcrumb-item"><a href="/petpet/admin/view-order">Orders</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Order Details</li>
                    </ol>
                </div><!-- End .container -->
            </nav><!-- End .breadcrumb-nav -->

            <div class="page-content">
            	<div class="container">
					<table class="table table-wishlist table-mobile">
						<thead>
							<tr>
								<th>Product</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Total Price</th>

							</tr>
						</thead>

						<tbody>
						   <c:forEach var = "orderDetail"  items = "${requestScope.orderDetails}">
							<tr>
								<td class="product-col">
									<div class="product">
										<figure class="product-media">
											<a href="#">
												<img src="/petpet${orderDetail.getProduct().getImagesUlrs().get(0)}" alt="Product image">
											</a>
										</figure>

										<h3 class="product-title">
											<a href="#">${orderDetail.getProduct().getName()}</a>
										</h3><!-- End .product-title -->
									</div><!-- End .product -->
								</td>
								<td class="price-col">${orderDetail.getProduct().getPrice()} EGP </td>
								<td class="price-col">${orderDetail.getQuantity()}</td>
								<td class="price-col">${orderDetail.getQuantity()*orderDetail.getProduct().getPrice()}</td>


							</tr>

							</c:forEach>

						</tbody>
					</table><!-- End .table table-wishlist -->
	            	<div class="wishlist-share">
	            		<div class="social-icons social-icons-sm mb-2">
	            			<label class="social-label">Share on:</label>
	    					<a href="#" class="social-icon" title="Facebook" target="_blank"><i class="icon-facebook-f"></i></a>
	    					<a href="#" class="social-icon" title="Twitter" target="_blank"><i class="icon-twitter"></i></a>
	    					<a href="#" class="social-icon" title="Instagram" target="_blank"><i class="icon-instagram"></i></a>
	    					<a href="#" class="social-icon" title="Youtube" target="_blank"><i class="icon-youtube"></i></a>
	    					<a href="#" class="social-icon" title="Pinterest" target="_blank"><i class="icon-pinterest"></i></a>
	    				</div><!-- End .soial-icons -->
	            	</div><!-- End .wishlist-share -->
            	</div><!-- End .container -->
            </div><!-- End .page-content -->
        </main><!-- End .main -->
	<%@ include file="footer.html" %>