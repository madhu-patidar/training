 function validateform(){ 
    var firstname = document.myform.firstname.value;
    var lastname = document.myform.lastname.value;
    var phone = document.myform.phone.value; 
    var office = document.myform.office.value;
    var email = document.myform.email.value;
    var password = document.myform.password.value;
    var password1 = document.myform.password1.value; 
    var residence1 = document.getElementById('residence1').checked;
    var residence2 = document.getElementById('residence2').checked;

    var checkbox_sample18 = document.getElementById('checkbox_sample18').checked;
    var checkbox_sample19 = document.getElementById('checkbox_sample19').checked;
    var checkbox_sample20 = document.getElementById('checkbox_sample20').checked;
    var about_you = document.myform.about_you.value;
    var atposition=email.indexOf("@");  
    var dotposition=email.lastIndexOf("."); 
    var re = /(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])/;  
    if (firstname==null || firstname==""){  
        alert("First Name can't be blank");
        document.myform.firstname.focus();  
        return false;
    }else if (lastname==null || lastname==""){  
        alert("Last Name can't be blank");
        document.myform.lastname.focus();  
        return false; 
    }else if (phone==null || phone==""){  
        alert("Phone Number can't be blank");
        document.myform.phone.focus();   
        return false;
    }else if (isNaN(phone) == true){  
        alert("Only Number Acceptd");
        document.myform.phone.focus();   
        return false;
    }else if (phone.length != 10 ){  
        alert("Phone Number exact 10 digit");
        document.myform.phone.focus();   
        return false;
    }else if (isNaN(office) == true){  
        alert("Only Number Acceptd");
        document.myform.office.focus();   
        return false; 
    }else if (atposition < 1 || dotposition < atposition+2 || dotposition+2 >= email.length  || email.match(/\@/g).length > 1){  
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
    }else if (!re.test(password)){
        alert("Password should accept only Upper-case, lower-case and Numerical characters, No Special characters");
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
    }else if(residence1 == false && residence2 == false){ 
        alert("Please select Gender");  
        document.myform.residence1.focus(); 
        return false; 
    }else if(checkbox_sample18 == false && checkbox_sample19 == false && checkbox_sample20 == false){ 
        alert("Please should have minimum 1 value selected");  
        document.myform.checkbox_sample18.focus(); 
        return false;
    }else if (about_you==null || about_you=="" || about_you.length < 10){  
        alert("About you minimum 10 characters are Compulsory");
        document.myform.about_you.focus();   
        return false; 
    }  else return true;

} 


function calculate_age()
{

    today_date = new Date();
    today_year = today_date.getFullYear();
    today_month = today_date.getMonth();
    today_day = today_date.getDate();
    var birth_year = document.myform.year.value;
    var birth_month = document.myform.month.value;
    var birth_day = document.myform.day.value;
    var age1 = today_year - birth_year;



    if ( today_month < (birth_month - 1))
    {
        age1--;
        var month1 = ((12 - birth_month) + today_month + 1 )/12;
        age1 += month1;
    }

    if ( today_month > (birth_month - 1))
    {
        age1--;
        var month2 = ((12 - birth_month) + today_month + 1 )/12;
        age1 += month2;
    }
    if (((birth_month - 1) == today_month) && (today_day < birth_day))
    {
        age1--;
    }
    document.getElementById("demo").value =age1;
}