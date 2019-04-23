function validate(){
    var f=document.getElementById("form");
     var hasPasswordError = validatePassword(f);
    var hasFirstNameError = firstNameValidate(f);
    var hasLastNameError = lastNameValidate(f)
    var hasContactError = contactValidate(f);
    if(!hasPasswordError || !hasFirstNameError || !hasLastNameError || !hasContactError)
return false;
else
return true;
}
function  validatePassword(form){
    var error1=document.getElementById("passwordError");
    var error2=document.getElementById("confirmPasswordError");
    error1.innerHTML="Give Password";
    
    var password=form["password"].value;
    
    error1.innerHTML="";
    error2.innerHTML="";
    
    var confirmPassword=form["confirmPassword"].value;
    
    if( password==null || password==""){
    error1.innerHTML="Give Password";
    }
    
    
    
    else if( confirmPassword==null || confirmPassword==""){
    error2.innerHTML="Confirm Password";
    }
    
    
    
    else if(password.length<6 || password.length>8){
    error1.innerHTML="Password has to be 6 to 8 chars"
    }
    
    else if(password != confirmPassword){
    error2.innerHTML="Password Does Not Match"
    }
    if(error1.innerHTML.length > 0 || error2.innerHTML.length > 0)
    return false;
    else
    return true;
     }
function firstNameValidate(form){
    var error=document.getElementById("firstNameError");
   
       var firstName=form["firstName"].value;
   
       error.innerHTML="";
   
       if( firstName==null || firstName==""){
           error.innerHTML="Input Your FirstName";
       }
   
       else if(!isNaN(id)){
           error.innerHTML="Name Can Not be a number";
       }
   
       else if(firstName.length<1 || firstName.length>10){
           error1.innerHTML="Name has to be 1 to 10 chars"
       }
   
   
       }


       function lastNameValidate(from){
        var error=document.getElementById("lastNameError");
       
           var lastName=form["lastName"].value;
       
           error.innerHTML="";
       
           if( lastName==null || lastName==""){
               error.innerHTML="Input Your LastName";
           }
       
           else if(!isNaN(id)){
               error.innerHTML="Name Can Not be a number";
           }
       
           else if(lastName.length<5 || lastName.length>10){
               error1.innerHTML="Name has to be 5 to 10 chars"
           }       
       
       }
       function contactValidate(from){
           var error=document.getElementById("contactError");
       
           var contact=form["contact"].value;
       
           error.innerHTML="";
       
           if( contact==null || contact==""){
               error.innerHTML="Input Your Contact";
           }
       
           else if(isNaN(id)){
               error.innerHTML="Name Can Not be alphabate";
           }
       
           else if(contact.length<5 || contact.length>10){
               error1.innerHTML="Contact has to be 5 to 10 chars"
           }       
       
       }