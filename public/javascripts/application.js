$(function() {
	/*****
		For the new respondent form
	*****/
	$( "#gender_and_age_form" ).buttonset();
	
	/*****
		For the mama said / i say forms
	******/
	$( "#preference_expressed_form" ).buttonset();
	//wire up the buttons to show/hide relevant parts of the form
	$( "#kind_of_preference_form" ).hide();	
	$( "#relationship_preference_any_preference_expressed_true" ).click(function(){
		$( "#kind_of_preference_form" ).fadeIn();
	});	
	$( "#relationship_preference_any_preference_expressed_false" ).click(function(){
		$( "#kind_of_preference_form" ).fadeOut();
	});
	
});

