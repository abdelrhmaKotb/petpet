function preview_images() {
    var total_file = document.getElementById("images").files.length;
    console.log(total_file);
    for(var i=0;i<total_file;i++){
        console.log(event.target.files[i]);
      $('#image_preview').append(`
                  <div class='col-md-3'>
                      <img style='width:100%' class='img-fluid' src='${URL.createObjectURL(event.target.files[i])}'>
                  </div>`);
    }
  }
  function resetForm(){
    $("#image_preview").html("");
    $("#images").val("");

  }