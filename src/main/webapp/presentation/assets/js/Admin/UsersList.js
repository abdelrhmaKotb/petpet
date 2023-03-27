


var table = document.getElementById("productTable");

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

      cell1.innerHTML = item.name;
      cell2.innerHTML = item.email;
      cell3.innerHTML = item.creditLimit;
      cell4.innerHTML = item.birthday;
      cell5.innerHTML = item.job;
      cell6.innerHTML = item.country;


  $(cell1).addClass('text-center');
  $(cell2).addClass('text-center');
  $(cell3).addClass('text-center');
  $(cell4).addClass('text-center');
  $(cell5).addClass('text-center');
  $(cell6).addClass('text-center');
}

