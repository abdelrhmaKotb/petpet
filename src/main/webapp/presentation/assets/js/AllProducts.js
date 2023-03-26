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

    if (localStorage.getItem('cart')) {
      cart = JSON.parse(localStorage.getItem('cart'));
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
    localStorage.setItem('cart', cartJSON);
    console.log(cart);

    $.ajax
      (
        {
          url: '/petpet/addToCart',
          data: { "cart": cartJSON },
          type: 'post',
          cache: false,
          success: (data) => {
            $(this).text("view cart");
            $(this).attr("href", '/petpet/cartt');

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

  $('#updatecart').on('click', function () {
    let table = [];
    $("#products-cart > tbody > tr").each(function () {
      console.log(this);
      let productId = $(this).attr('data-id');
      let productPrice = $(this).find('td').eq(1).text().trim();
      let productName = $(this).find('a').text().trim();
      let productQty = $(this).find('input').val();

      table.push({ productId, productName, productQty, productPrice });
    });

    console.log(table);

    let cart = JSON.stringify(table);

    localStorage.setItem('cart', cart);

    $.ajax
      (
        {
          url: '/petpet/addToCart',
          data: { "cart": cart },
          type: 'post',
          cache: false,
          success: (data) => {
           location.reload();
          },
          error: function () {
            alert('error');
          }
        }
      );
  });

  $('.btn-remove').on('click', function () {
    let id = $(this).attr('data-id');

    console.log("remove id " + id);

    let cart = [];

    if (localStorage.getItem('cart')) {
      cart = JSON.parse(localStorage.getItem('cart'));
    }

    let obj = cart.find(function (ele) {
      return ele.productId === id;
    });

    console.log(obj);

    if (obj) {
      cart = cart.filter(item => item.productId != id);
    }

    let cartJSON = JSON.stringify(cart);
    localStorage.setItem('cart', cartJSON);
    console.log(cart);

    $.ajax
      (
        {
          url: '/petpet/addToCart',
          data: { "cart": cartJSON },
          type: 'post',
          cache: false,
          success: (data) => {
            $(this).closest("tr").remove();
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