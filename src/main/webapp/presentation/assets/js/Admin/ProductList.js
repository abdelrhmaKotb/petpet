const swalWithBootstrapButtons = Swal.mixin({
  customClass: {
    confirmButton: 'btn btn-success',
    cancelButton: 'btn btn-danger'
  },
  buttonsStyling: false
})

document.querySelectorAll(".deleteProduct").forEach(link => link.addEventListener('click', (e) => {
     var p = e.target.closest('button');
     console.log(p);
    swalWithBootstrapButtons.fire({
      title: 'Are you sure?',
      text: "You won't be able to revert this!",
      icon: 'warning',
      showCancelButton: true,
      confirmButtonText: 'delete!',
      cancelButtonText: 'cancel!',
      reverseButtons: true
    }).then((result) => {
      if (result.isConfirmed) {
        let selectedId = p.getAttribute("data-id") ;
        console.log(selectedId);
             $.ajax
                    (
                        {
                            url:'/petpet/Delete-Product',
                            data:{"id":selectedId},
                            type:'post',
                            cache:false,
                            success:function(data){
                                swalWithBootstrapButtons.fire(
                                  'Deleted!',
                                  'Your Product has been deleted.',
                                  'success'
                                )
                                    e.target.closest('tr').remove();
                            },
                            error:function(){alert('error');}
                        }
                    );
      } else if (
        /* Read more about handling dismissals below */
        result.dismiss === Swal.DismissReason.cancel
      ) {
        swalWithBootstrapButtons.fire(
          'Cancelled',
          'Your  Product is safe :)',
          'error'
        )
      }
    });
 }));

