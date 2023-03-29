$(document).ready(function () {
  $(".addToCart").on('click', function () {

    let productId = $(this).attr("data-id");
    let productName = $(this).attr("data-name");
    let productPrice = $(this).attr("data-price");
    let productImage = $(this).attr("data-image");
    let productQty = $("#qty").val();

    if(!productQty){
      productQty = 1;
    }

    console.log(productQty);

    let cartItem = {
      productId,
      productName,
      productQty,
      productPrice,
      productImage
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
      obj.productQty =  +obj.productQty + +productQty;
    } else {
      cart.push(cartItem);
    }

    let cartJSON = JSON.stringify(cart);
    console.log(cart);

    $.ajax
      (
        {
          url: '/petpet/addToCart',
          data: { "cart": cartJSON },
          type: 'post',
          cache: false,
          success: (data) => {

            console.log("here " + data);


            if (data.trim() === 'invalid') {
              console.log("you must login");
              Swal.fire({
                position: 'bottom-end',
                title: 'you must login',
                showClass: {
                  popup: 'animate__animated animate__fadeInDown'
                },
                hideClass: {
                  popup: 'animate__animated animate__fadeOutUp'
                },
                showConfirmButton: false,
                timer: 1500
              })
            } else {
              console.log("valid");
              localStorage.setItem('cart', cartJSON);
              $(this).after(`<a href="/petpet/cart" class="btn-product btn-cart">view cart</a>`);
              $(this).remove()

              $.get('/petpet/presentation/views/usercart.jsp',function(params) {
                $('#cartContainer').html(params);
              })
            }


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
      let productImage = $(this).find('img').attr('data-src');
      // console.log(productImage)

      table.push({ productId, productName, productQty, productPrice,productImage });
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
            $.get('/petpet/presentation/views/usercart.jsp',function(params) {
              $('#cartContainer').html(params);
            })
          },
          error: function () {
            alert('error');
          }
        }
      );


  });
});