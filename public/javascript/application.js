$(document).ready(function(){

	$('#form1').on('click', '.delete', function(e){
	 	e.preventDefault();

	 	var $parent = $(this).parent("p");
		var val = $parent.attr('data-value');
		$parent.remove();

		x.splice(x.indexOf(val),1);
	});




	x = new Array();
  $(".select").change(function() {
    //add name of search item in to "search area"
    var val = $(this).val()
	    if (x.indexOf(val) == -1)
	    {
	      x.push(val);
	      $("#form_array")[0].value = x;
	      $(".panel-body").append("<p class=\"checked\" name=\"search\" data-value="+val+">"+val+" <a href=\"\" style=\"color:red;\" class=\"delete\">x</a></p>");



	    }
	    else{
	      removeable = $(".checked[data-value^='"+val+"']");
	      removeable.remove();
	      console.log(val);
	      x.splice(x.indexOf(val),1);


    }
  });
});
