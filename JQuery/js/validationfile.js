
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
        age1--;
        var month1 = ((12 - birth_month) + today_month + 1 )/12;
        age1 += month1;
   

    if (((birth_month - 1) == today_month) && (today_day < birth_day))
    {
        age1--;
    }
    var n = age1.toPrecision(4);
    document.getElementById("demo").value =n;
}