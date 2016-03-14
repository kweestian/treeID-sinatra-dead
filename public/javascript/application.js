$(document).ready(function(){
	$("#leafy").hover(function(){
		$("#img2").css("display", "block")
	});

	$("#evergreen").hover(function(){
		$("#img1").css("display", "block")
	});


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
	  // IIFE to ensure safe use of $
	(function( $ ) {

	  // Create plugin
	  $.fn.tooltips = function(el) {

	    var $tooltip,
	      $body = $('body'),
	      $el;

	    // Ensure chaining works
	    return this.each(function(i, el) {

	      $el = $(el).attr("data-tooltip", i);

	      // Make DIV and append to page
	      var $tooltip = $('<div class="tooltip" data-tooltip="' + i + '">' + $el.attr('title') + '<div class="arrow"></div></div>').appendTo("body");

	      // Position right away, so first appearance is smooth
	      var linkPosition = $el.position();

	      $tooltip.css({
	        top: linkPosition.top - $tooltip.outerHeight() + 150,
	        left: linkPosition.left - ($tooltip.width()/2) + 390
	      });

	      $el
	      // Get rid of yellow box popup
	      .removeAttr("title")

	      // Mouseenter
	      .hover(function() {

	        $el = $(this);

	        $tooltip = $('div[data-tooltip=' + $el.data('tooltip') + ']');

	        // Reposition tooltip, in case of page movement e.g. screen resize
	        var linkPosition = $el.position();

	        $tooltip.css({
	          top: linkPosition.top - $tooltip.outerHeight() + 150,
	          left: linkPosition.left - ($tooltip.width()/2) + 390
	        });

	        // Adding class handles animation through CSS
	        $tooltip.addClass("active");

	        // Mouseleave
	      }, function() {

	        $el = $(this);

	        // Temporary class for same-direction fadeout
	        $tooltip = $('div[data-tooltip=' + $el.data('tooltip') + ']').addClass("out");

	        // Remove all classes
	        setTimeout(function() {
	          $tooltip.removeClass("active").removeClass("out");
	          }, 300);

	        });

	      });

	    }

	})(jQuery);

	$(".link-tooltip a[title]").tooltips();



  });
