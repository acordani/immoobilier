$(document).ready(function(){
	$(".skill-choice").click(function(){
		$(this).toggleClass("active");
	});

	$("#profile_skill_ids_12").change(function() {

    if ( $("#profile_skill_ids_12").val() == "12"){

    $("#profile_city").hide();
    }
    else {

     $("#announce_tax_month").show();

    }
  });
});