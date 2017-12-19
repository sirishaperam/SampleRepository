
function namevalid(){  
	var numbers = /^[A-Za-z]{4,10}$/g;
    var message1 = document.getElementById('message1');
    var x = document.getElementById('name').value;
    if (x.match(numbers)) {
        message1.innerHTML = "";
        return true;
    } else {
        message1.innerHTML = "Enter Minimum 4 Characters";
        return false;
    }
    if (x == '' || x == null) {
        message1.innerHTML = "Enter Minimum 4 Characters";
        return false;
    }
}

function emailvalid() {
    var x = document.forms["form1"]["email"].value;
    var message = document.getElementById('message2');
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
        message.innerHTML = "Not a valid e-mail address";
        return false;
    } else {
        message.innerHTML = "";
    }

}
function mobilevalid(inputtxt) {
    var numbers = /^[7-9][0-9]{9}$/g;
    var message = document.getElementById('message3');
    if (inputtxt.value.match(numbers)) {
        message.innerHTML = "";
        return true;
    } else {
        message.innerHTML = "Enter 10 digit Number";
        return false;
    }
}
function passd(){
    var password = document.getElementById("password").value;
    var retypepassword = document.getElementById("retypepassword").value;
    var message = document.getElementById('message4');
    var ok = true;
    if (password!=retypepassword) {
        message4.innerHTML = "Password do not match ";
        ok = false;
    } else {
        message4.innerHTML = "Password matched ";
    }
    return ok;
}
function formsubmit() {
    var password = document.getElementById("password").value;
    var retypepassword = document.getElementById("retypepassword").value;
    var message5 = document.getElementById('message5');
    var name= document.getElementById('name').value;
    var phone= document.getElementById('phone').value;
    var email= document.getElementById('email').value;
    if (document.form1.name.value == ''
            || document.form1.phone.value == ''
            || document.form1.email.value == '' || password != retypepassword) {
        message5.innerHTML = "Please, Fill the required fields";
        return false;
    } else {
        return true;
    }
}



