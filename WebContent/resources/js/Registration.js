$(document).ready(function() {
	BindActions();
});

function BindActions() {
	$('#inputEmail').blur(function() {
		ValidateRegistrationEmail();
	});
	$('#inputConfirmPassword').blur(function() {
		ConfirmPassword();
	});
	$('#inputUser').blur(function() {
		ValidateAnyEmpty('inputUser', 'userControl', 'spanUserError');
	});
	$('#inputDealer').blur(function() {
		ValidateAnyEmpty('inputDealer', 'dealerControl', 'spanDealerError');
	});
	$('#inputCompany').blur(function() {
		ValidateAnyEmpty('inputCompany', 'companyControl', 'spanCompanyError');
	});
	$('#inputPhone').blur(function() {
		ValidateAnyEmpty('inputPhone', 'phoneControl', 'spanPhoneError');
	});
	$('#inputPhone').blur(function() {
		ValidateAnyEmpty('inputPhone', 'phoneControl', 'spanPhoneError');
	});
	$('#inputStreet').blur(function() {
		ValidateAnyEmpty('inputStreet', 'streetControl', 'spanStreetError');
	});
	$('#inputCity').blur(function() {
		ValidateAnyEmpty('inputCity', 'cityControl', 'spanCityError');
	});

	$('#inputZip').blur(function() {
		ValidateZipCode();
	});

	$('#inputWebSite').blur(function() {
		ValidateWebsite();
	});
	
	$('#btnSave').click(function(){
		doRegistration();
	});

	$('#btnClear').click(function() {
		ClearForm();
	});
}

function doRegistration(){
	if( ConfirmPassword() && ValidateAnyEmpty('inputUser', 'userControl', 'spanUserError') 
		&& 	ValidateAnyEmpty('inputCompany', 'companyControl', 'spanCompanyError') && ValidateWebsite() && ValidateAnyEmpty('inputPhone', 'phoneControl', 'spanPhoneError')
		&& ValidateAnyEmpty('inputStreet', 'streetControl', 'spanStreetError') && ValidateAnyEmpty('inputCity', 'cityControl', 'spanCityError') &&  ValidateZipCode()
		&& ValidateAnyEmpty('inputEmail', 'emailControl', 'spanEmailError')){
		var email = $('#inputEmail').val();
		var password = $('#inputPassword').val();
		var user = $('#inputUser').val();
		var company = $('#inputCompany').val();
		var webSite = $('#inputWebSite').val();
		var phone = $('#inputPhone').val();
		var street = $('#inputStreet').val();
		var city = $('#inputCity').val();
		var zipCode = $('#inputZip').val();
		var country = $('#selectCountry option:selected').val();
		var remarks =  $('#areaRemarks').val();
		$.ajax({
			url : './Registration',
			type : 'POST',
			cache : false,
			data : {
				'email' : email,
				'password' : password,
				'user' : user,
				'company' : company,
				'webSite' : webSite,
				'phone' : phone,
				'street' : street,
				'city' : city,
				'zipCode' : zipCode,
				'country' : country,
				'remarks' : remarks,
				
			},
			success : function(data, status) {
				

			},
			error : function(xhr, desc, err) {

			}
		});	
		
		
	}
	
}

function ValidateZipCode() {
	if (!ValidateAnyEmpty('inputZip', 'zipControl', 'spanZipError')) {
		$('#spanZipError').html("*Required field");
		return false;
	}
	if (!isNaN($('#inputZip').val())) {
		$('#zipControl').removeClass('error');
		$('#spanZipError').addClass('hide');
		return true;
	}
	$('#zipControl').addClass('error');
	$('#spanZipError').html("Use Only Numbers").removeClass('hide');
	return false;

}

function ValidateWebsite() {
	if (!ValidateAnyEmpty('inputWebSite', 'webControl', 'spanWebError')) {
		$('#spanWebError').html("*Required field");
		return false;
	}
	var value = /^(https?:\/\/)?([\w\d\-_]+\.)+\/?/.test($('#inputWebSite')
			.val());
	if (value) {
		$('#webControl').removeClass('error');
		$('#spanWebError').addClass('hide');
		return true;
	}
	$('#webControl').addClass('error');
	$('#spanWebError').html("Invalid address").removeClass('hide');
	return false;
}

function ValidateAnyEmpty(inputId, fieldControl, spanError) {
	if (!isEmpty($('#' + inputId).val())) {
		$('#' + fieldControl).removeClass('error');
		$('#' + spanError).addClass('hide');
		return true;
	}
	$('#' + fieldControl).addClass('error');
	$('#' + spanError).removeClass('hide');
	return false;
}

function ValidateRegistrationEmail() {
	if (!ValidateAnyEmpty('inputEmail', 'emailControl', 'spanEmailError')) {
		$('#spanEmailError').html("*Required field");
		return false;
	}
	var email = $('#inputEmail').val();
	if (!isEmail(email)) {
		$('#emailControl').addClass('error');
		$('#spanEmailError').removeClass('hide').html("Invalid email");
		return false;
	}
	if (!UniqueEmail(email)) {
		return false;
	}

	$('#emailControl').removeClass('error');
	$('#spanEmailError').addClass('hide');
	return true;
}

function UniqueEmail(email) {
	$.ajax({
		url : './Validations',
		type : 'GET',
		cache : false,
		data : {
			'validate' : 'email',
			'email' : email
		},
		success : function(data, status) {
			if (data.UserId == 0) {
				$("#spanEmailError").addClass('hide');
				$('#emailControl').removeClass('error');
				return true;

			}
			$("#spanEmailError").removeClass('hide').html(
					"Email is already in use");
			$('#emailControl').addClass('error');
			return false;

		},
		error : function(xhr, desc, err) {
			$("#spanEmailError").removeClass('hide').html(
					"Unable to validate this email");
			return false;
		}
	});
}

function ConfirmPassword() {
	if ($('#inputPassword').val() != "" && $('#inputConfirmPassword').val()
			&& $('#inputPassword').val() == $('#inputConfirmPassword').val()) {
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

function ClearForm() {
	$("#spanEmailError").addClass('hide');
	$('#emailControl').removeClass('error');
	$('#inputEmail').val('');
	$("#spanConfirmPasswordError").addClass('hide');
	$('#confirmPasswordControl').removeClass('error');
	$('#passwordControl').removeClass('error');
	$('#inputPassword').val('');
	$('#inputConfirmPassword').val('');

}


