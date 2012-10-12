$(document).ready(function() {
	BindActions();
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
	if(ValidateEmail())
	{
		var email = $('#inputEmail').val();
		var password = $('#inputPassword').val();
		$.ajax({
			  url: './Login',
			  type: 'GET',
			  cache: false,
			  data: {'username':email, 'password': password},
			  success: function (data, status) {
				  alert("welDone");
			  },
			  error: function (xhr, desc, err) {
				  alert(desc);
			  }
	     });
	}	
	
	
	
}

function ValidateEmail()
{
	var email = $('#inputEmail').val();
    var pattern=/^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
    if(pattern.test(email)){         
        $('#emailControl').removeClass('error');
        $('#spanEmailError').addClass('hide');
		return true;  
    }
    $('#emailControl').addClass('error');
    $('#spanEmailError').removeClass('hide');
    return false;
 }

