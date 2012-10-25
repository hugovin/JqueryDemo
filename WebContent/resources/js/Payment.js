$(document).ready(function() {
	BindActions();
});

function BindActions() {
	$('#name_on_card').blur(function() {
		ValidateAnyEmpty('name_on_card', 'cardNameControl', 'spanNameError');
	});
	$('#cvv').blur(function() {
		ValidateCCV();
	});
	$('#btnCC').bind('click',function(){
		SendPaymentCC();
	});
	
	$('#btnPayCheck').bind('click',function(){
		SenPaymentcheck();
	});
	
	
	
}


function SendPaymentCC(){
	if(ValidateAnyEmpty('name_on_card', 'cardNameControl', 'spanNameError') && ValidateCCV() && ValidateCardNunber()){
		  var href = "./Confirm.jsp";
		  window.location = href;
	}
}

function SenPaymentcheck(){
	  var href = "./Confirm.jsp";
	  window.location = href;
}

function ValidateCardNunber(){
	if (!ValidateAnyEmpty('card_number', 'cardControl', 'spanCardError')) {
		$('#spanCardError').html("*Required field");
		return false;
	}
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

function ValidateCCV(){
	if (!ValidateAnyEmpty('cvv', 'ccvControl', 'spanCcvError')) {
		$('#spanCcvError').html("*Required field");
		return false;
	}
	
	if (!isNaN($('#cvv').val())) {
		$('#ccvControl').removeClass('error');
		$('#spanCcvError').addClass('hide');
		return true;
	}
	$('#ccvControl').addClass('error');
	$('#spanCcvError').html("Use Only Numbers").removeClass('hide');
	return false;
}

(function() {

	$(function() {
		$('.demo .numbers li').wrapInner('<a href="#"></a>').click(function(e) {
			e.preventDefault();
			return $('#card_number').val($(this).text()).trigger('input');
		});
		$('.vertical.maestro').hide().css({
			opacity : 0
		});
		return $('#card_number').validateCreditCard(function(result) {
			if (!(result.card_type != null)) {
				$('.cards li').removeClass('off');
				$('#card_number').removeClass('valid');
				$('.vertical.maestro').slideUp({
					duration : 200
				}).animate({
					opacity : 0
				}, {
					queue : false,
					duration : 200
				});
				return;
			}
			$('.cards li').addClass('off');
			$('.cards .' + result.card_type.name).removeClass('off');
			if (result.card_type.name === 'maestro') {
				$('.vertical.maestro').slideDown({
					duration : 200
				}).animate({
					opacity : 1
				}, {
					queue : false
				});
			} else {
				$('.vertical.maestro').slideUp({
					duration : 200
				}).animate({
					opacity : 0
				}, {
					queue : false,
					duration : 200
				});
			}
			if (result.length_valid && result.luhn_valid) {
				$('#cardControl').removeClass('error');
				$('#spanCardError').addClass('hide');
				return true;
				//return $('#card_number').addClass('valid');
			} else {

				$('#cardControl').addClass('error');
				$('#spanCardError').removeClass('hide');
				$('#spanCardError').html("Invalid Card");
				return false;
				//return $('#card_number').removeClass('valid');
			}
		});
	});

}).call(this);