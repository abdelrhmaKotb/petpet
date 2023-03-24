let selectedCategories = [];
document.querySelectorAll(".next").forEach(link => link.addEventListener('click', (e) => {
        var p = e.target.closest('a');
        e.preventDefault();
        let pageNumber = p.getAttribute("data-id") ;
        $("#currentPage").text(pageNumber)

        console.log(pageNumber);
             $.ajax
                    (
                        {
                            url:'/petpet/Shop',
                            data:{"pageNumber":pageNumber},
                            type:'post',
                            cache:false,
                            success:function(data){
                             const obj = JSON.parse(data);
                             $(".productsDiv").html("");
                             createCards(obj);
                             console.log(obj);
                            },
                            error:function(){
                            Console.log('error');
                            }
                        }
                    );

 }));

function createCards(data){
       data.forEach(createCard);
}

function createCard(item, index, arr) {

let html =`
            <div class="col-6 col-md-4 col-lg-4 col-xl-3 col-xxl-2">
                <div class="product">
                    <figure class="product-media">
                        <span class="product-label label-new">New</span>

                        <a href="/petpet/product?id=${item.id}">
                            <img src="/petpet${item.imagesUlrs[0]}" alt="Product image"
                                class="product-image">
                        </a>

                        <div class="product-action-vertical">
                            <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add
                                    to wishlist</span></a>
                        </div><!-- End .product-action -->

                        <div class="product-action action-icon-top">
                            <a data-id="${item.id}" data-price="${item.price}"
                                data-name="${item.name}"
                                class="btn-product btn-cart addToCart"><span>add
                                    to cart</span></a>
                            <a href="" class="btn-product btn-quickview" title="Quick view"><span>quick
                                    view</span></a>

                        </div><!-- End .product-action -->
                    </figure><!-- End .product-media -->

                    <div class="product-body">
                        <div class="product-cat">
                            <a href="#">${item.category.name}</a>
                        </div><!-- End .product-cat -->
                        <h3 class="product-title"><a
                                href="/petpet/product?id=${item.id}">${item.name}</a>
                        </h3><!-- End .product-title -->
                        <div class="product-price">
                            ${item.price}
                        </div><!-- End .product-price -->

                    </div><!-- End .product-body -->
                </div><!-- End .product -->
            </div><!-- End .col-sm-6 col-lg-4 col-xl-3 -->`;
            $(".productsDiv").append(html);
}
function CleanAllFilters(e){
    e.preventDefault();



}



function filter(event){
     $(".pagination").html("")
    var p = event.target.closest('a');
    event.preventDefault();
    let  priseSliderValue = $("#priseSliderValue").text();
    let boxes = $('input[name=category]:checked');
    selectedCategories =[];
       Object.keys(boxes).forEach(key => {
           if(boxes[key].id != null){
                selectedCategories.push(boxes[key].id);
             }
      });
    console.log(priseSliderValue);
    console.log(JSON.stringify(selectedCategories));
         $.ajax
                (
                    {
                        url:'/petpet/product-filter',
                        data:{"priceRange":priseSliderValue,"SelectedCategories":JSON.stringify(selectedCategories)},
                        type:'post',
                        cache:false,
                        success:function(data){
                         const obj = JSON.parse(data);
                         $(".productsDiv").html("");

                          createCards(obj);
                         console.log(obj);
                        },
                        error:function(){
                        Console.log('error');
                        }
                    }
                );
}

