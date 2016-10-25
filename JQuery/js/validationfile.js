 function validateform(){ 
    var firstName = document.myform.firstname.value;
    var lastName = document.myform.lastname.value;
    var phone = document.myform.phone.value; 
    var office = document.myform.office.value;
    var email = document.myform.email.value;
    var password = document.myform.password.value;
    var password1 = document.myform.password1.value; 
    var birthYear = document.myform.year.value; 
    var residence1 = document.getElementById('residence1').checked;
    var residence2 = document.getElementById('residence2').checked;

    var checkbox_sample18 = document.getElementById('checkbox_sample18').checked;
    var checkbox_sample19 = document.getElementById('checkbox_sample19').checked;
    var checkbox_sample20 = document.getElementById('checkbox_sample20').checked;
    var about_you = document.myform.about_you.value;
    var atPosition=email.indexOf("@");  
    var dotPosition=email.lastIndexOf("."); 
    var re = /(?=.*[0-9])/ ;
    var re2 = /(?=.*[a-z])/; 
     var re3 = /(?=.*[A-Z])/;   
    if (firstName==null || firstName==""){  
        alert("First Name can't be blank");
        document.myform.firstName.focus();  
        return false;
    }else if (lastName==null || lastName==""){  
        alert("Last Name can't be blank");
        document.myform.lastName.focus();  
        return false; 
    }else if (phone==null || phone==""){  
        alert("Phone Number can't be blank");
        document.myform.phone.focus();   
        return false;
    }else if (isNaN(phone) == true){  
        alert("Only Number Accepted");
        document.myform.phone.focus();   
        return false;
    }else if (phone.length != 10 ){  
        alert("Phone Number exact 10 digit");
        document.myform.phone.focus();   
        return false;
    }else if (isNaN(office) == true){  
        alert("Only Number Accepted");
        document.myform.office.focus();   
        return false; 
    }else if (atPosition < 1 || dotPosition < atPosition+2 || dotPosition+2 >= email.length  || email.match(/\@/g).length > 1){  
        alert("Please enter a valid e-mail address (Format:abc123@xyz.com)");  
        return false;
    }else if (password==null || password==""){  
        alert("password can't be blank");
        document.myform.phone.focus();   
        return false;    
    }else if(password.length < 8 || password.length > 12){  
        alert("Password length must be between 8 to 12 characters ."); 
        document.myform.password.focus(); 
        return false; 
    }else if (!re.test(password) || (!re2.test(password) && !re3.test(password))){
        alert("Password should accept only Alphanumeric characters, No Special characters");
        document.myform.password.focus();
        return false;
    }else if (password1 == null || password1 == ""){  
        alert("Confirm Password is Compulsory");
        document.myform.password1.focus();  
        return false; 

    }else if(password != password1){ 
        alert("password must be same!");  
        document.myform.password1.focus();
        return false; 
    }else if (isNaN(birthYear) == true ){  
        alert("Date of birth is Compulsory");
        document.myform.phone.focus();   
        return false;
    }else if(residence1 == false && residence2 == false){ 
        alert("Please select Gender");  
        document.myform.residence1.focus(); 
        return false; 
    }else if(checkbox_sample18 == false && checkbox_sample19 == false && checkbox_sample20 == false){ 
        alert("Please should have minimum 1 value selected");  
        document.myform.checkbox_sample18.focus(); 
        return false;
    }else if (aboutYou==null || aboutYou==""){  
        alert("About you is Compulsory");
        document.myform.about_you.focus();   
        return false; 
    }  else return true;

} 


function calculate_age()
{

    todayDate = new Date();
    todayYear = todayDate.getFullYear();
    todayMonth = todayDate.getMonth();
    todayDay = todayDate.getDate();
    var birthYear = document.myform.year.value;
    var birthMonth = document.myform.month.value;
    var birthDay = document.myform.day.value;
    var age = todayYear - birthYear;


    age1--;
    var month1 = ((12 - birthMonth) + todayMonth + 1 )/12;
    age1 += month1;
    if (((birthMonth - 1) == todayMonth) && (todayDay < birthDay))
    {
        age--;
    }
var n = age.toPrecision(4);
    document.getElementById("demo").value = n;
}