$( document ).ready(function() {
  function addTochoping(e){
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
               error:function(){
               alert('error');
               }
           }
       );
  }
});