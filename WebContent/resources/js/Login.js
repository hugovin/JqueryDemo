$(document).ready(function() {
	BindActions();
	CreateSpinner('spinnerPlaceHolder');
});

function BindActions(){
	$('#btnSignIn').bind('click',function(){
		DoSignIn();
	});
	
	$('#inputEmail').blur(function(){
		ValidateEmail();
	});
	
}

function DoSignIn(){
	if(ValidateEmail() && ValidatePassword())
	{
		var email = $('#inputEmail').val();
		var password = $('#inputPassword').val();
		$("#btnSignIn").attr("disabled", "disabled");
		$("#divSpinner").removeClass('hide');
		$.ajax({
			  url: './Login',
			  type: 'GET',
			  cache: false,
			  data: {'username':email, 'password': password},
			  success: function (data, status) {
				  if(data.UserId == 0)
				  {
					  $("#spanAccountError").removeClass('hide');
					  $("#divSpinner").addClass('hide');
					  $("#btnSignIn").removeAttr("disabled");  
					  return false;
				  }
				  $("#btnSignIn").removeAttr("disabled");   
				  $("#spanAccountError").addClass('hide');
				  $("#divSpinner").addClass('hide');
				  var href = "./Dashboard.jsp";
				  window.location = href;
				  
			  },
			  error: function (xhr, desc, err) {
				  $("#spanAccountError").removeClass('hide');
				  $("#btnSignIn").removeAttr("disabled");   
				  $("#divSpinner").addClass('hide');
				  return false;
			  }
	     });
	}	
	
	
	
}

function ValidateEmail()
{
	var email = $('#inputEmail').val();
    if(isEmail(email)){         
        $('#emailControl').removeClass('error');
        $('#spanEmailError').addClass('hide');
		return true;  
    }
    $('#emailControl').addClass('error');
    $('#spanEmailError').removeClass('hide');
    return false;
 }

function ValidatePassword()
{
	var password = $('#inputPassword').val();
    if(!isEmpty(password)){         
        $('#passwordControl').removeClass('error');
        $('#spanPasswordError').addClass('hide');
		return true;  
    }
    $('#passwordControl').addClass('error');
    $('#spanPasswordError').removeClass('hide');
    return false;
 }

