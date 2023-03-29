


var table = document.getElementById("usersTable");

document.querySelectorAll(".next").forEach(link => link.addEventListener('click', (e) => {
  var p = e.target.closest('a');
  console.log("from next");
  e.preventDefault();
  let pageNumber = p.getAttribute("data-id");


  console.log(pageNumber);
  $.ajax
    (
      {
        url: '/petpet/admin/review-customers',
        data: { "pageNumber": pageNumber },
        type: 'post',
        cache: false,
        success: function (data) {
          const obj = JSON.parse(data);
          fillTable(obj);
        },
        error: function () {
          alert('error');
        }
      }
    );

}));

function fillTable(data) {

  while (table.rows.length > 1) {
    table.deleteRow(-1);
  }

  data.forEach(createRows);

}

function createRows(item, index, arr) {
console.log(item);

  var row = table.insertRow(-1);


      var cell1 = row.insertCell(0);
      var cell2 = row.insertCell(1);
      var cell3 = row.insertCell(2);
      var cell4 = row.insertCell(3);
      var cell5 = row.insertCell(4);
      var cell6= row.insertCell(5);
      var cell7= row.insertCell(6);
      var cell8= row.insertCell(7);

      cell1.innerHTML = item.id == null?"-":item.id;
      cell2.innerHTML = item.firstName== null?"-":item.firstName;
      cell3.innerHTML = item.userName== null?"-":item.userName;
      cell4.innerHTML = item.creditLimit== null?"-":item.creditLimit;
      cell5.innerHTML = item.birthday== null?"-":item.birthday;
      cell6.innerHTML = item.job== null?"-":item.job;
      cell7.innerHTML = item.country== null ?"-":item.country;
      cell8.innerHTML = ` <button type="button" rel="tooltip"
                                         class="btn btn-success btn-link
                                                     btn-just-icon btn-sm"
                                         data-original-title="" title="Edit">
                                     <a href = "/petpet/admin/view-order?id=${item.id}">
                                         <i class="icon-cart-arrow-down"></i></a>`;



  $(cell1).addClass('text-center');
  $(cell2).addClass('text-center');
  $(cell3).addClass('text-center');
  $(cell4).addClass('text-center');
  $(cell5).addClass('text-center');
  $(cell6).addClass('text-center');
  $(cell7).addClass('text-center');
  $(cell8).addClass('text-center text-right');
}

