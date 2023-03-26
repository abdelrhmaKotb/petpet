var table = document.getElementById("OrderTable");

document.querySelectorAll(".next").forEach(link => link.addEventListener('click', (e) => {
        var p = e.target.closest('a');
        e.preventDefault();
        let pageNumber = p.getAttribute("data-id") ;
        let userId = p.getAttribute("data-userId") ;

        console.log(userId);
        console.log(pageNumber);
             $.ajax
                    (
                        {
                            url:'/petpet/admin/view-order',
                            data:{"userId":userId,"pageNumber":pageNumber},
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

       data.forEach(createRows)

}

function createRows(item, index, arr) {


     var row = table.insertRow(-1);


     var cell1 = row.insertCell(0);
     var cell2 = row.insertCell(1);
     var cell3 = row.insertCell(2);
     var cell4 = row.insertCell(3);
     var cell5 = row.insertCell(4);

     cell1.innerHTML = item.id;
     cell2.innerHTML = item.createdAt;
     cell3.innerHTML = item.totalPrice;
     cell4.innerHTML = item.status;
     cell5.innerHTML = `<button type="button" rel="tooltip" class="btn btn-success btn-link btn-just-icon btn-sm" data-original-title="" title="Edit">
                                                                        <a href="/petpet/admin/edite-product?id=${item.id}"><i class="icon-edit"></i></a>
                                                                         </button>`;

      $(cell5).find('button').addClass('td-actions text-right');
}