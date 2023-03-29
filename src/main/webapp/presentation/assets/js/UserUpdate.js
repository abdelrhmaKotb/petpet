var useremal = document.getElementById('update-username');
var usernam = document.getElementById('update-Name');
var birth = document.getElementById('update-birth');
var userphon = document.getElementById("upd-phon");
var job = document.getElementById('update-job');
var credit = document.getElementById('update-credit');
var street = document.getElementById('update-street');
var city = document.getElementById('update-city');

var country = document.getElementById('update-country');
var pass = document.getElementById('update-password-1');
var passconf = document.getElementById('update-password-confirm');
var UpdateButton = document.getElementById("savebutton");
// UpdateButton.classList.add("hidden");


// window.addEventListener('load', () => {

//     //     var userId = document.getElementById("userId").value;
//     var url = "/petpet/updateuser";
//     data = {
//         userId: 16
//     };
//     $.ajax({
//         url: url,
//         type: "POST",

//         data: data,
//         dataType: 'json',
//         success: function (response) {
//             // Handle the user data here
//             console.log(response);
//             usernam.value = response.name;
//             usernam.readOnly = true;
//             console.log(response.name);

//             useremal.value = response.email;
//             useremal.readOnly = true;

//             console.log(response.Phone);
//             userphon.value = response.Phone;
//             userphon.readOnly = true;

//             birth.value = response.BirthDate;
//             birth.readOnly = true;

//             job.value = response.job;
//             job.readOnly = true;

//             credit.value = response.creditLimit;
//             credit.readOnly = true;

//             street.value = response.Street;
//             street.readOnly = true;

//             city.value = response.city;
//             city.readOnly = true;

//             country.value = response.County;
//             country.readOnly = true;

//             pass.readOnly = true;

//             passconf.readOnly = true;


//         },
//         error: function (xhr) {

//             console.log(xhr.statusText);
//         }
//     });

// });


function toggleReadonlyname() {

    if (usernam.readOnly) {
        usernam.readOnly = false;
        UpdateButton.classList.remove("hidden");
    }
}
function toggleReadonlypass() {
    if (pass.readOnly) {
        pass.readOnly = false;
        passconf.readOnly = false;
        UpdateButton.classList.remove("hidden");
    }
}
function toggleReadonlyphone() {
    if (userphon.readOnly) {
        userphon.readOnly = false;
        UpdateButton.classList.remove("hidden");
    }
}
function toggleReadonlyBirth() {
    if (birth.readOnly) {
        birth.readOnly = false;
        UpdateButton.classList.remove("hidden");

    }
}
function toggleReadonlyjob() {
    if (job.readOnly) {
        job.readOnly = false;
        UpdateButton.classList.remove("hidden");

    }
}
function toggleReadonlycredit() {
    if (credit.readOnly) {
        credit.readOnly = false;
        UpdateButton.classList.remove("hidden");
    }
}
function toggleReadonlyAddress() {
    if (street.readOnly) {
        street.readOnly = false;
        city.readOnly = false;
        country.readOnly = false;
        UpdateButton.classList.remove("hidden");
    }
}

function checkName() {

    usernam = $("#update-Name").val()
    if (!usernam) {
        $("#update-Name").removeClass("form-control is-valid").addClass("form-control is-invalid")
    } else {
        $("#update-Name").removeClass("form-control is-invalid").addClass("form-control is-valid")
    }
};

function checkBD() {
    birth = $("#update-birth-2").val();

    if (!d) {
        $("#update-birth-2").addClass("form-control is-invalid")
    }
    else {
        $("#update-birth-2").removeClass("form-control is-invalid").addClass("form-control is-valid")
    }

}

function validateEmail(input) {
    let emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    console.log(emailRegex.test(input) + " check")
    return (emailRegex.test(input))
}



function callBack(data) {

    console.log("Data " + data);
    if (validateEmail(useremal) && data.match("true")) {
        console.log("here")
        $("#update-username").removeClass("form-control is-invalid").addClass("form-control is-valid")
    } else if (!validateEmail(useremal) && data.match("invalid")) {
        $("#emailfeedback").text("Email is empty or invalid format")
        $("#update-username").addClass("form-control is-invalid")
    }
    else if (data.match("false")) {
        $("#emailfeedback").text("Email already exists")
        $("#update-username").addClass("form-control is-invalid")

    }

}

function checkPassword() {
    pass = $("#update-password-1").val().trim();

    if (!pass) {
        $("#update-password-1").removeClass("form-control is-valid").addClass("form-control is-invalid")
    } else if (pass.length < 8 || pass.length > 20) {
        $("#update-password-1").removeClass("form-control is-valid").addClass("form-control is-invalid")
    } else {

        $("#update-password-1").removeClass("form-control is-invalid").addClass("form-control is-valid")
    }


}

function checkMatchPassword() {
    var pass2 = $("#update-password-confirm").val().trim();
    console.log("password " + pass);
    console.log("pass " + pass2);

    if (!pass2) {
        $("#update-password-confirm").addClass("form-control is-invalid")
    }
    if ((pass2.length > 8 || pass2.length < 20) && (pass == pass2) && pass2) {
        $("#update-password-1").removeClass("form-control is-invalid").addClass("form-control is-valid")
        $("#update-password-confirm").removeClass("form-control is-invalid").addClass("form-control is-valid")
    } else {
        $("#update-password-confirm").removeClass("form-control is-valid").addClass("form-control is-invalid")
    }

}

function validePhone(mob) {
    var pattern = /^01[0125][0-9]{8}$/

    if (!pattern.test(mob)) {
        return false;
    }
    return true;
}

// function phoneSeq(phone){
//     var pattern = /+20[0-9]{3}\s[0-9]{3}\s[0-9]{4}/g;
//    var res = phone.match(pattern);
//     console.log(res);
// }

function checkPhone() {
    userphon = $("#upd-phon").val();
    // phoneSeq(phone);
    if (validePhone(userphon)) {
        $("#upd-phon").removeClass("form-control is-invalid").addClass("form-control is-valid")
    } else {
        $("#upd-phon").removeClass("form-control is-valid").addClass("form-control is-invalid")
    }
}

function checkJob() {
    job = $("#update-job").val()
    if (!job) {
        $("#update-job").addClass("form-control is-invalid")
    } else {
        $("#update-job").removeClass("form-control is-invalid").addClass("form-control is-valid")
    }

}

function checkCredit() {
    credit = $("#update-credit").val()
    if (!credit) {
        $("#update-credit").addClass("form-control is-invalid")
    } else {
        $("#update-credit").removeClass("form-control is-invalid").addClass("form-control is-valid")
    }

}


function checkStreet() {
    street = $("#update-street").val()
    if (!street) {
        $("#update-street").addClass("form-control is-invalid")
    } else {
        $("#update-street").removeClass("form-control is-invalid").addClass("form-control is-valid")
    }
}

function checkCity() {
    city = $("#update-city").val()
    if (!city) {
        $("#update-city").addClass("form-control is-invalid")
    } else {
        $("#update-city").removeClass("form-control is-invalid").addClass("form-control is-valid")
    }
}

function checkCountry() {
    country = $("#update-country").val()
    if (!country) {
        $("#update-country").addClass("form-control is-invalid")
    } else {
        $.get("/petpet/checkcountry?country=" + country, callBackCountry)

    }
}
function callBackCountry(data) {
    if (data.match("true")) {
        $("#update-country").removeClass("form-control is-invalid").addClass("form-control is-valid")
    }
    else {
        $("#update-country").addClass("form-control is-invalid")
    }
}

function userInterests() {
    var selectedElements = $("#multiple-select-field").val();
    selectedElements.forEach(function (value) {
        console.log(value)
    })
}


function UpdateUser() {
    userId = 16;
    let jsonUser = {

        firstName: usernam,
        userName: useremal,
        phone: userphon,
        password: pass,
        job: job,
        creditLimit: credit,
        country: country,
        street: street,
        city: city,
        birthday: birth,
        userId: userId
    }
console.log("kotb")
     console.log(jsonUser);
    var xhttp = new XMLHttpRequest();
    xhttp.open("POST", "/petpet/saveupdateuser", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.onreadystatechange = function(response) {
        if (this.readyState == 4 && this.status == 200) {
    xhttp.onreadystatechange = function(response) {
            console.log(response);
        }
      };
      
    
    }
    xhttp.send(JSON.stringify(jsonUser));
    // $.ajax({
    //     url: "/petpet/saveupdateuser",
    //     type: "POST",
    //     data: jsonUser,
    //     dataType: 'json',
    //     success: function (response) {
    //         console.log(response);
    //     },
    //     error: function (xhr) {

    //         console.log(xhr.statusText);
    //     }
    // });


    // $.ajax({
    //     url: "/petpet/saveupdateuser",
    //     type: "POST",

    //     data: jsonUser,
    //     dataType: 'json',
    //     success: function (response) {
    //         // Handle the user data here
    //         console.log("success");
    //     },
    //     error: function (xhr) {

    //         console.log(xhr.statusText);
    //     }
    // });
}

function callBackSucess() {
    console.log("sent success");
}






