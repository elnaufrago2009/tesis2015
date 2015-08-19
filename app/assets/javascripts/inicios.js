$(document).ready(function(){
	$('#boton_enviar').click(function(){
	var gender=$('#radio_5').val();
	var color=$('#color').val();
	if ($("#gender:checked").length == 0){
		$('#dis').slideDown().html('<span id="error">Please choose gender</span>');
		return false;
	}
	if ($("#color:checked").length == 0){
		$('#dis').slideDown().html('<span id="error">Please choose color</span>');
		return false;
	}

	});
});