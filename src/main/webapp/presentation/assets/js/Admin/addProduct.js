let productName=false ;
let productPrice=false ;
let productQuantity=false;
let produuctImages =false ;
const addProductBtn = document.querySelector('#addProductBtn');
addProductBtn.disabled = true;
function preview_images() {
    var total_file = document.getElementById("images").files.length;
    console.log(total_file);
    if(total_file>0){produuctImages= true;}
    else{produuctImages = false;}
    for(var i=0;i<total_file;i++){
        console.log(event.target.files[i]);
      $('#image _preview').append(`
                  <div class='col-md-3'>
                      <img style='width:100%' class='img-fluid' src='${URL.createObjectURL(event.target.files[i])}'>
                  </div>`);
    }
  }
  function resetForm(){
    $("#image_preview").html("");
    $("#images").val("");

  }

  var validation = {
      isNumber:function(str) {
          var pattern = /^\d+\.?\d*$/;
          return pattern.test(str);  // returns a boolean
      }
  };

 $("input").change(function(){
    console.log("input changed");
    if(produuctImages&&productQuantity&&productPrice&&productName){
        addProductBtn.disabled =false;
    }else {
    addProductBtn.disabled = true;
    }
 });
$("#productPrice").keyup(function() {
    numbersValidation(this,"#wrongPrice","price");

});
$("#productQuantity").keyup(function() {
    console.log($(this).val());
    numbersValidation(this,"#wrongQuantity","Quantity");

});
$("#productName").keyup(function() {
     if(validation.isNumber($('#productName').val())) {
        $("#wrongName").text("The product name need to contain a characters");
        $("#wrongName").removeClass("d-none");
        $(this).removeClass("form-control is-valid").addClass("form-control is-invalid");
        productName =false;
    }else {
        $("#wrongName").addClass("d-none");
        $(this).removeClass("form-control is-invalid").addClass("form-control is-valid");
        productName =true;
    }
});
function numbersValidation(element, errorElement,erroeMsg){
  if($(element).val()<= 0 ){
         $(errorElement).text("only positive numbers greater than 0 are allowed");
         $(errorElement).removeClass("d-none");
         $(element).removeClass("form-control is-valid").addClass("form-control is-invalid");
         putvalidation(erroeMsg,false);
    }
    else if($(element).val()> 0 ){
          $(errorElement).addClass("d-none");
          $(element).removeClass("form-control is-invalid").addClass("form-control is-valid");
          putvalidation(erroeMsg,true);

    }else if($(element).val() == null || $('#productPrice').val() == "") {
         $(errorElement).text( erroeMsg+" is required");
         $(errorElement).removeClass("d-none");
         $(element).removeClass("form-control is-valid").addClass("form-control is-invalid");
         putvalidation(erroeMsg,false);
    } else if(!validation.isNumber($('#productPrice').val())) {
        $(errorElement).text("only numbers are allowed");
        $(errorElement).removeClass("d-none");
        $(element).removeClass("form-control is-valid").addClass("form-control is-invalid");
        putvalidation(erroeMsg,false);
    }else if(validation.isNumber($(element).val())) {
        $(errorElement).addClass("d-none");
        $(element).removeClass("form-control is-invalid").addClass("form-control is-valid");
        putvalidation(erroeMsg,true);
    }else {
       $(errorElement).addClass("d-none");
       $(element).removeClass("form-control is-invalid").addClass("form-control is-valid");
       putvalidation(erroeMsg,true);
         }

}
function putvalidation(erroeMsg,value){
    switch(erroeMsg) {
        case "price":
            productPrice=value;
            break;
        case "Quantity":
            productQuantity = value;
            break;
     }
}



