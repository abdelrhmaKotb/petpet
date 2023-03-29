window.addEventListener('load', function () {
  var xhr = new XMLHttpRequest();
  xhr.open('GET', '/petpet/admin/add-category');
  xhr.onload = function () {
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

