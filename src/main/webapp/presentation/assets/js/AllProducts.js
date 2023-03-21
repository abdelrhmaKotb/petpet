$(document).ready(function () {
  $(".addToCart").on('click', function () {

    let productId = $(this).attr("data-id");
    let productName = $(this).attr("data-name");
    let productPrice = $(this).attr("data-price");
    let productQty = 1;

    let cartItem = {
      productId,
      productName,
      productQty,
      productPrice
    };


    let cart = [];

    if (sessionStorage.getItem('cart')) {
      cart = JSON.parse(sessionStorage.getItem('cart'));
    }

    let obj = cart.find(function (ele) {
      return ele.productId === productId;
    });

    console.log(obj);

    if (obj) {
      obj.productQty++;
    } else {
      cart.push(cartItem);
    }

    let cartJSON = JSON.stringify(cart);
    sessionStorage.setItem('cart', cartJSON);
    console.log(cart);

    $.ajax
      (
        {
          url: '/petpet/addToCart',
          data: { "cart": cartJSON },
          type: 'post',
          cache: false,
          success: function (data) {
            // swalWithBootstrapButtons.fire(
            //   'Deleted!',
            //   'Your Product has been Added To Your Cart.',
            //   'success'
            // )
            // e.target.closest('tr').remove();
          },
          error: function () {
            alert('error');
          }
        }
      );

  });

  function addTochoping(e) {
    $.ajax
      (
        {
          url: '/petpet/Delete-Product',
          data: { "id": selectedId },
          type: 'post',
          cache: false,
          success: function (data) {
            swalWithBootstrapButtons.fire(
              'Deleted!',
              'Your Product has been deleted.',
              'success'
            )
            e.target.closest('tr').remove();
          },
          error: function () {
            alert('error');
          }
        }
      );
  }
});