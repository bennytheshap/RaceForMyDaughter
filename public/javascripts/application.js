//for the new respondent form
$(function() {
	$( "#gender_and_age_form" ).buttonset();
});

//for the mama said / i say forms
$(function() {
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