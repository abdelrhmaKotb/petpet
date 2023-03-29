var Firstname, username, password, phone, job, street, city, country, credit, d;

let isValidForm = true;

$(document).ready(function () {


})
InputBody = {
    Name: Firstname,
    username: username
}

function checkName() {

    Firstname = $("#register-Name").val()
    if (!Firstname) {
        $("#register-Name").removeClass("form-control is-valid").addClass("form-control is-invalid")
        isValidForm = false;
    } else {
        $("#register-Name").removeClass("form-control is-invalid").addClass("form-control is-valid")
    }
};

function checkBD() {
    d = $("#register-birth-2").val();

    if (!d) {
        $("#register-birth-2").addClass("form-control is-invalid")
        isValidForm = false;
    }
    else {
        $("#register-birth-2").removeClass("form-control is-invalid").addClass("form-control is-valid")
    }

}

function validateEmail(input) {
    let emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    console.log(emailRegex.test(input) + " check")
    return (emailRegex.test(input))
}

function checkUsername() {
    username = $("#register-username").val()

    console.log(username)
    if (username != "") {
        let emailJson = {
            email: username
        }
        console.log("My json " + emailJson);
        $.get("/petpet/register?email=" + username, callBack)
    } else {
        $("#register-username").addClass("form-control is-invalid");
        isValidForm = false;
    }
}

function callBack(data) {

    console.log("Data " + data);
    if (validateEmail(username) && data.match("true")) {
        console.log("here")
        $("#register-username").removeClass("form-control is-invalid").addClass("form-control is-valid")
    } else if (!validateEmail(username) && data.match("invalid")) {
        $("#emailfeedback").text("Email is empty or invalid format")
        $("#register-username").addClass("form-control is-invalid")
        isValidForm = false;
    }
    else if (data.match("false")) {
        $("#emailfeedback").text("Email already exists")
        $("#register-username").addClass("form-control is-invalid")
        isValidForm = false;

    }

}

function checkPassword() {
    password = $("#register-password-1").val().trim();

    if (!password) {
        $("#register-password-1").removeClass("form-control is-valid").addClass("form-control is-invalid")
        isValidForm = false;
    } else if (password.length < 8 || password.length > 20) {
        $("#register-password-1").removeClass("form-control is-valid").addClass("form-control is-invalid")
        isValidForm = false;
    } else {

        $("#register-password-1").removeClass("form-control is-invalid").addClass("form-control is-valid")
    }


}

function checkMatchPassword() {
    var pass2 = $("#register-password-confirm").val().trim();
    console.log("password " + password);
    console.log("pass " + pass2);

    if (!pass2) {
        $("#register-password-confirm").addClass("form-control is-invalid")
        isValidForm = false;
    }
    if ((pass2.length > 8 || pass2.length < 20) && (password == pass2) && pass2) {
        $("#register-password-1").removeClass("form-control is-invalid").addClass("form-control is-valid")
        $("#register-password-confirm").removeClass("form-control is-invalid").addClass("form-control is-valid")
    } else {
        $("#register-password-confirm").removeClass("form-control is-valid").addClass("form-control is-invalid")
        isValidForm = false;
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
    phone = $("#register-phone").val();
    // phoneSeq(phone);
    if (validePhone(phone)) {
        $("#register-phone").removeClass("form-control is-invalid").addClass("form-control is-valid")
    } else {
        $("#register-phone").removeClass("form-control is-valid").addClass("form-control is-invalid")
        isValidForm = false;
    }
}

function checkJob() {
    job = $("#register-job").val()
    if (!job) {
        $("#register-job").addClass("form-control is-invalid")
        isValidForm = false;
    } else {
        $("#register-job").removeClass("form-control is-invalid").addClass("form-control is-valid")
    }

}

function checkCredit() {
    credit = $("#register-credit").val()
    if (!credit) {
        $("#register-credit").addClass("form-control is-invalid")
        isValidForm = false;
    } else {
        $("#register-credit").removeClass("form-control is-invalid").addClass("form-control is-valid")
    }

}


function checkStreet() {
    street = $("#register-street").val()
    if (!street) {
        $("#register-street").addClass("form-control is-invalid")
        isValidForm = false;
    } else {
        $("#register-street").removeClass("form-control is-invalid").addClass("form-control is-valid")
    }
}

function checkCity() {
    city = $("#register-city").val()
    if (!city) {
        $("#register-city").addClass("form-control is-invalid")
        isValidForm = false;
    } else {
        $("#register-city").removeClass("form-control is-invalid").addClass("form-control is-valid")
    }
}

function checkCountry() {
    country = $("#register-country").val()
    if (!country) {
        $("#register-country").addClass("form-control is-invalid")
        isValidForm = false;
    } else {
        $.get("/petpet/checkcountry?country=" + country, callBackCountry)

    }
}
function callBackCountry(data) {
    if (data.match("true")) {
        $("#register-country").removeClass("form-control is-invalid").addClass("form-control is-valid")
    }
    else {
        $("#register-country").addClass("form-control is-invalid")
        isValidForm = false;
    }
}

function userInterests() {
    var selectedElements = $("#multiple-select-field").val();
    selectedElements.forEach(function (value) {
        console.log(value)
    })
}


function User(Firstname, username, phone, job, street, city, country, credit) {
    this.Firstname = Firstname;
    this.username = username;
    this.phone = phone;
    this.job = job;
    this.street = street;
    this.city = city;
    this.country = country;
    this.credit = credit;
}


function registerUser() {
    //var USER = new User(Firstname,username,phone,job,street,city,country,credit);
    //jsonUser = JSON.stringify(USER);
    let jsonUser = {
        firstName: Firstname,
        userName: username,
        phone: phone,
        password: password,
        job: job,
        creditLimit: credit,
        country: country,
        street: street,
        city: city,
        birthday: d
    }

    console.log(jsonUser);
    $.post("/petpet/register", jsonUser, callBackSucess)
}

function callBackSucess() {
    console.log("sent success");
}

function validateForm(event) {
    event.preventDefault();
    checkName();
    checkUsername();
    checkPassword();
    checkMatchPassword();
    checkPhone();
    checkJob();
    checkCredit();
    checkStreet();
    checkCity();
    checkCountry();
    userInterests();


    if (isValidForm) {
        event.currentTarget.submit();
    } else {
        isValidForm = true;
    }

}