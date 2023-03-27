// $(document).ready(function () {
const params = new Proxy(new URLSearchParams(window.location.search), {
  get: (searchParams, prop) => searchParams.get(prop),
});
// Get the value of "some_key" in eg "https://example.com/?some_key=some_value"
let value = params.cart; // "some_value"

console.log(value);

if(value){
  localStorage.setItem('cart','');
}
console.log(localStorage);
// })
var table = document.getElementById("UserOrderTable");

document.querySelectorAll(".orders").forEach(link => link.addEventListener('click', (e) => {

  var p = e.target.closest('a');
  e.preventDefault();
  let pageNumber = 0;

  console.log(pageNumber);

  $.ajax
    (
      {
        url: '/petpet/userOrders',
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

  data.forEach(createRows)

}

function createRows(item, index, arr) {

  // Find a <table> element with id="myTable":

  // Create an empty <tr> element and add it to the 1st position of the table:
  var row = table.insertRow(-1);

  // Insert new cells (<td> elements) at the 1st and 2nd position of the "new" <tr> element:
  var cell1 = row.insertCell(0);
  var cell2 = row.insertCell(1);
  var cell3 = row.insertCell(2);
  var cell4 = row.insertCell(3);
  var cell5 = row.insertCell(4);

  // Add some text to the new cells:
  cell1.innerHTML = item.id;
  cell2.innerHTML = item.createdAt;
  cell3.innerHTML = item.totalPrice;
  cell4.innerHTML = item.status;
  cell5.innerHTML = `<button type="button" rel="tooltip" class="btn  btn-link btn-just-icon btn-sm" data-original-title="" title="Edit">
                                                                        <c:set var="foo" scope="request" value="..." />
                                                                        <a href="/petpet/Edit-Product?id=${item.id}"><i
                                                                                class="icon-edit"></i></a>

                                                                    </button>`;
  console.log($(cell5).find('button'));
  $(cell5).find('button').addClass('td-actions text-right');
}
