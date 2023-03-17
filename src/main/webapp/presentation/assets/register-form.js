var Firstname, username, password, phone, job, street, city, country, credit , d;

$(document).ready(function () {


})
InputBody = {
    Name: Firstname,
    username: username
}
function checkName() {

    Firstname = $("#register-Name").val()
    if (!Firstname) {
        $("#register-Name").replaceWith(`
         
        <input type="text" class="form-control is-invalid" id="register-Name" value="" onblur="checkName()"  name="register-Name" required="">
    
    `);
    }
    else {
        $("#register-Name").replaceWith(`
         
        <input type="text" class="form-control is-valid" id="register-Name" value=${Firstname} onblur="checkName()"  name="register-Name" required="">
    
    `);
    }
};

function checkBD() {
     d = $("#register-birth-2").val();

    if (!d){
        $("#register-birth-2").replaceWith(`
            <input type="date" class="form-control" id="register-birth-2"
                                                    name="register-birth" value="${d}">
        `)
    }

}

function validateEmail(input) {
    let emailRegex =
        /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
    if (!emailRegex.test(input)) {
        return false;
    }
    return true;
}

function checkUsername() {
    username = $("#register-username").val()
    if(!username){
        $("#register-username").replaceWith(`
             
                <input type="email" class="form-control is-invalid" id="register-username" name="register-username" aria-describedby="inputGroupPrepend" onblur="checkUsername()" value="" required />
                
        `)
    }
    let emailJson = {
        email: username
    }
    console.log("My json " + emailJson);
    $.get("/petpet/register?email="+username,callBack)
}

function callBack(data) {

    console.log("Data " + data);



    if(data.match("true")){
        console.log("here")
        $("#register-username").replaceWith(`
                <input type="email" class="form-control is-invalid" id="register-username" name="register-username" aria-describedby="inputGroupPrepend" onblur="checkUsername()" value="${username}" required />
        `)
    }
    else {
        $("#register-username").replaceWith(`
             
                <input type="email" class="form-control is-valid" id="register-username" name="register-username" aria-describedby="inputGroupPrepend" onblur="checkUsername()" value="${username}" required />
                
        `)
    }
}

function checkPassword() {
    password = $("#register-password-1").val();
    var pass2 = $("#register-password-2").val();

    if (!password) {
        $("#register-password-1").replaceWith(`
        <input type="password" class="form-control" id="register-password-1"
        name="register-password-1" value="" onblur="checkPassword()" required>
        `)
    }

    else if (password.length < 8 || password.length > 20) {
        $("#register-password-1").replaceWith(`
        <input type="password" class="form-control is-invalid" id="register-password-1"
        name="register-password-1" value=${password}  onblur="checkPassword()" required>
        `)
    }

    else {
        $("#register-password-1").replaceWith(`
        <input type="password" class="form-control is-valid" id="register-password-1"
        name="register-password-1" value=${password}  onblur="checkPassword()" required>
        `)
    }


}

function checkMatchPassword() {
    var pass2 = $("#register-password-confirm").val();
    console.log("password " + password);
    console.log("pass " + pass2);

    if (!pass2) {
        $("#register-password-confirm").replaceWith(`
        <input type="password" class="form-control" id="register-password-confirm"
        name="register-password-confirm" value="" onblur="checkMatchPassword()" required>
        `)
    }

    if ((pass2.length > 8 || pass2.length < 20) && (password == pass2)) {
        $("#register-password-1").replaceWith(`
        <input type="password" class="form-control is-valid" id="register-password-1"
        name="register-password-1" value=${password}  onblur="checkPassword()" required>
        `)
        $("#register-password-confirm").replaceWith(`
        <input type="password" class="form-control is-valid" id="register-password-confirm"
        name="register-password-confirm" value=${pass2} onblur="checkMatchPassword()" required>
        `)
    }


    else {
        $("#register-password-confirm").replaceWith(`
        <input type="password" class="form-control is-invalid" id="register-password-confirm"
        name="register-password-confirm" value="" onblur="checkMatchPassword()" required>
        `)
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
        $("#register-phone").replaceWith(`
        <input type="tel" class="form-control is-valid" id="register-phone"
        name="register-phone" value="${phone}" onblur="checkPhone()" required="">
        `)
    }
    else {
        $("#register-phone").replaceWith(`
        <input type="tel" class="form-control is-invalid" id="register-phone"
        name="register-phone" value="${phone}" onblur="checkPhone()" required="">
        `)
    }
}
function checkJob() {
    job = $("#register-job").val()
    if (!job) {
        $("#register-job").replaceWith(`
        <input type="text" class="form-control is-invalid" id="register-job"
        name="register-job" value="" onblur="checkJob()" required="">
        `)
    }
    else {
        $("#register-job").replaceWith(`
        <input type="text" class="form-control is-valid" id="register-job"
        name="register-job" value=${job} onblur="checkJob()" required="">
        `)
    }

}

function checkCredit() {
    credit = $("#register-credit").val()
    if (!credit) {
        $("#register-credit").replaceWith(`
        <input type="text" class="form-control is-invalid" id="register-credit"
        name="register-credit" onblur="checkCredit()" required="">
        `)
    }
    else {
        $("#register-credit").replaceWith(`
        <input type="text" class="form-control is-valid" id="register-credit"
        name="register-credit" value=${credit} onblur="checkCredit()" required="">
        `)
    }

}


function checkStreet() {
    street = $("#register-street").val()
    if (!street) {
        $("#register-street").replaceWith(`
        <input type="tel" class="form-control is-invalid" id="register-street"
        name="register-street" value="" onblur="checkStreet()" required="">
        `)
    }



    else {
        $("#register-street").replaceWith(`
        <input type="tel" class="form-control is-valid" id="register-street"
        name="register-street" value=${street} onblur="checkStreet()" required="">
        `)
    }
}

function checkCity() {
    city = $("#register-city").val()
    if (!city) {
        $("#register-city").replaceWith(`
        <input type="tel" class="form-control is-invalid" id="register-city"
        name="register-city" value="" onblur="checkCity()" required="">
        `)
    }

    else {
        $("#register-city").replaceWith(`
        <input type="tel" class="form-control is-valid" id="register-city"
        name="register-city" value=${city} onblur="checkCity()" required="">
        `)
    }
}

function checkCountry() {
    country = $("#register-country").val()
    if (!country) {
        $("#register-country").replaceWith(`
        <input type="tel" class="form-control is-invalid" id="register-country"
        name="register-country" value="" onblur="checkCountry()" required="">
        `)
    }

    else {
        $("#register-country").replaceWith(`
        <input type="tel" class="form-control is-valid" id="register-country"
        name="register-country" value=${country} onblur="checkCountry()" required="">
        `)
    }
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
    $.post("/petpet/register",jsonUser, callBackSucess)
}

function callBackSucess() {
    console.log("sent success");
}