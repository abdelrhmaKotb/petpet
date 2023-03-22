window.addEventListener('load', function() {
    var xhr = new XMLHttpRequest();
xhr.open('GET', '/petpet/add-category');
xhr.onload = function() {
  if (xhr.status === 200) {
    var stringList = JSON.parse(xhr.responseText);
    var selectElement = document.getElementById('mySelect');
    for (var i = 0; i < stringList.length; i++) {
      var optionElement = document.createElement('option');
      optionElement.value = stringList[i];
      optionElement.innerHTML = stringList[i];
      selectElement.appendChild(optionElement);
    }
  } else {
    console.log('Request failed. Status code: ' + xhr.status);
  }
};
xhr.send();
});

// var selectElement = document.getElementById('mySelect');
// var hiddenInputElement = document.getElementById('selectedValue');
// selectElement.addEventListener('onChange', function() {
//   hiddenInputElement.value = selectElement.value;
// });


// var submitButton = document.querySelector('button[type="submit"]');
// submitButton.addEventListener('click', function(event) {
//   event.preventDefault();
//   var xhr = new XMLHttpRequest();
//   xhr.open('POST', '/petpet/add-category');
//   xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
//   xhr.onload = function() {
//     if (xhr.status === 200) {
//       console.log('Request succeeded');
//     } else {
//       console.log('Request failed. Status code: ' + xhr.status);
//     }
//   };
//   var formData = new FormData(document.querySelector('form'));
//   xhr.send(new URLSearchParams(formData));
// });