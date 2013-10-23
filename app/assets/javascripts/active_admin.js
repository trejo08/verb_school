//= require active_admin/base


$(function(){

	//function for add fields on nested models
	$("form").on("click",".add_fields",function(event){		
		event.preventDefault();
		time = new Date().getTime();
		regexp = new RegExp($(this).data('id'), 'g');
		$(this).before($(this).data('fields').replace(regexp, time));  
	});

	//function for remove fields
	$("form").on("click", ".remove_fields", function(event){
		event.preventDefault();
		var _this = $(this);
		_this.closest("fieldset").find("input[type='hidden']").attr("value",1);
		_this.closest('fieldset').hide();        	
	});
});