$(document).ready(function() {
	 BindActions();
});

function BindActions(){
	$('#inputEmail').blur(function(){
		ValidateRegistrationEmail();
	});
	$('#btnClear').click(function(){
		ClearForm();
	});
	$('#inputConfirmPassword').blur(function(){
		ConfirmPassword();
	});
}

function ValidateRegistrationEmail(){
	var email = $('#inputEmail').val();
    if(!isEmail(email)){         
        $('#emailControl').addClass('error');
        $('#spanEmailError').removeClass('hide').html("Invalid email");
        return false;
    }
    if(!UniqueEmail(email))
    {
    	return false;
    }
    
    $('#emailControl').removeClass('error');
    $('#spanEmailError').addClass('hide'); 
    return true;
}

function UniqueEmail(email){
	$.ajax({
		  url: './Validations',
		  type: 'GET',
		  cache: false,
		  data: {'validate':'email', 'email': email},
		  success: function (data, status) {
			  if(data.UserId == 0)
			  {
				  $("#spanEmailError").addClass('hide');
				  $('#emailControl').removeClass('error');
				  return true;

			  } 			  
			  $("#spanEmailError").removeClass('hide').html("Email is already in use");
			  $('#emailControl').addClass('error');
			  return false;
			  
			  
		  },
		  error: function (xhr, desc, err) {
			  $("#spanEmailError").removeClass('hide').html("Unable to validate this email");
			  return false;
		  }
   });
}

function ConfirmPassword(){
	if($('#inputPassword').val() == $('#inputConfirmPassword').val()){
		  $("#spanConfirmPasswordError").addClass('hide');
		  $('#confirmPasswordControl').removeClass('error');
		  $('#passwordControl').removeClass('error');
		return true;
	}
	  $("#spanConfirmPasswordError").removeClass('hide');
	  $('#confirmPasswordControl').addClass('error');
	  $('#passwordControl').addClass('error');
	  return false;
}


function ClearForm(){
	  $("#spanEmailError").addClass('hide');
	  $('#emailControl').removeClass('error');
	  $('#inputEmail').val('');
	  $("#spanConfirmPasswordError").addClass('hide');
	  $('#confirmPasswordControl').removeClass('error');
	  $('#passwordControl').removeClass('error');
	  $('#inputPassword').val(''); 
	  $('#inputConfirmPassword').val('');

}