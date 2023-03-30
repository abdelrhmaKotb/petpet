function editUser(event) {
    let user = {

        id: $('#id').val(),
        firstName: $('#firstName').val(),
        creditLimit: $('#creditLimit').val(),
        job: $('#job').val(),
        phone: $('#phone').val(),
        country: $('#country').val(),
        city: $('#city').val(),
        street: $('#street').val(),
        zip: $('#zip').val(),
    }

    console.log(user);

    $.ajax
        (
            {
                url: '/petpet/editUser',
                data: {
                    "user": JSON.stringify(user),
                    "pass1": $('#pass1').val(),
                    "oldpassword": $('#oldpassword').val(),
                    "pass2": $('#pass2').val()
                },
                type: 'POST',
                cache: false,
                success: (data) => {
                    if(data.trim() == "ok"){
                        alert("data saved");
                    }else{
                        alert("no");
                    }
                },
                error: function () {
                    alert('error');
                }
            }
        );



}