<%@taglib prefix="c" uri="jakarta.tags.core" %>

<div class="dropdown cart-dropdown">
    <a href="#" class="dropdown-toggle" role="button" data-toggle="dropdown"
        aria-haspopup="true" aria-expanded="false" data-display="static">
        <i class="icon-shopping-cart"></i>
        <span class="cart-count">${cartItemCount}</span>
    </a>

    <div class="dropdown-menu dropdown-menu-right" style="max-height: 300px;overflow-y: auto;">
        <div class="dropdown-cart-products">

            <c:forEach var="item" items="${cart}">
                <div class="product">
                    <div class="product-cart-details">
                        <h4 class="product-title">
                            <a href="/petpet/product?id=${item.getProductId()}">${item.getProductName()}</a>
                        </h4>

                        <span class="cart-product-info">
                            <span class="cart-product-qty">${item.getProductQty()}</span>
                            $ ${item.getProductPrice()}
                        </span>
                    </div><!-- End .product-cart-details -->

                    <figure class="product-image-container">
                        <a href="/petpet/product?id=${item.getProductId()}" class="product-image">
                            <img src="/petpet/${item.getProductImage()}"
                                alt="product">
                        </a>
                    </figure>
                    <a href="#" class="btn-remove" title="Remove Product"><i
                            class="icon-close"></i></a>
                </div><!-- End .product -->
            </c:forEach>

        </div><!-- End .cart-product -->

        <div class="dropdown-cart-total">
            <span>Total</span>

            <span class="cart-total-price">$ ${total}</span>
        </div><!-- End .dropdown-cart-total -->

        <div class="dropdown-cart-action">
            <a href="/petpet/cart" class="btn btn-primary">View Cart</a>
            <a href="/petpet/checkout" class="btn btn-outline-primary-2"><span>Checkout</span><i
                    class="icon-long-arrow-right"></i></a>
        </div><!-- End .dropdown-cart-total -->
    </div><!-- End .dropdown-menu -->
</div><!-- End .cart-dropdown -->
