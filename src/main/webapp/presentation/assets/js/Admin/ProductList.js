const swalWithBootstrapButtons = Swal.mixin({
  customClass: {
    confirmButton: 'btn btn-success',
    cancelButton: 'btn btn-danger'
  },
  buttonsStyling: false
})
function addListener(){
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
                            url:'/petpet/admin/delete-product',
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
                            error:function(){
                               Swal.fire({
                                 icon: 'error',
                                 title: 'Oops...',
                                 text:  "Can't Delete this Product !",
                                 footer: ''
                               })
                            }
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

}
addListener();

 var table = document.getElementById("productTable");

 document.querySelectorAll(".next").forEach(link => link.addEventListener('click', (e) => {
         var p = e.target.closest('a');
         console.log("from next");
         e.preventDefault();
         let pageNumber = p.getAttribute("data-id") ;


         console.log(pageNumber);
              $.ajax
                     (
                         {
                             url:'/petpet/admin/products',
                             data:{"pageNumber":pageNumber},
                             type:'post',
                             cache:false,
                             success:function(data){
                              const obj = JSON.parse(data);
                              fillTable(obj);
                             },
                             error:function(){
                             alert('error');
                             }
                         }
                     );

  }));

 function fillTable(data){

       while(table.rows.length > 1) {
         table.deleteRow(-1);
       }

        data.forEach(createRows);
        addListener();

 }

 function createRows(item, index, arr) {


      var row = table.insertRow(-1);


      var cell1 = row.insertCell(0);
      var cell2 = row.insertCell(1);
      var cell3 = row.insertCell(2);
      var cell4 = row.insertCell(3);
      var cell5 = row.insertCell(4);
      var cell6= row.insertCell(5);
      var cell7= row.insertCell(6);

      cell1.innerHTML = item.id;
      cell2.innerHTML = item.name;
      cell3.innerHTML = item.category.name;
      if(item.quantity==0){
           cell4.innerHTML = `<span class="out-of-stock">Out stock</span></td>`;
      }else {
          cell4.innerHTML = `<span class="in-stock">Out stock</span></td>`;
      }
      $(cell4).addClass("stock-col");
      cell5.innerHTML = item.prise +"EGP";
      cell6.innerHTML = item.quantity;
      cell7.innerHTML = `<button type="button" rel="tooltip" class="btn btn-success btn-link
                                                          btn-just-icon btn-sm" data-original-title="" title="Edit">
                                                      <a href="/petpet/admin/edit-product?id=${item.id}"><i
                                                              class="icon-edit"></i></a>

                                                  </button>
                                                  <button type="button" rel="tooltip" data-id="${item.id}" class="deleteProduct btn btn-danger btn-link
                                                          btn-just-icon btn-sm" data-original-title="" title="Delete">
                                                      <i class="icon-close"></i>
                                                  </button>`;

       $(cell5).find('button').addClass('td-actions text-right');
 }

