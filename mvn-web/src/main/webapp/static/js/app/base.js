$(function() {

	$("html").niceScroll({
		styler : "fb",
		cursorcolor : "#e8403f",
		cursorwidth : '6',
		cursorborderradius : '10px',
		background : '#404040',
		spacebarenabled : false,
		cursorborder : '',
		autohidemode : false,
		zindex : '1000'
	});
	
});

/*---LEFT BAR ACCORDION----*/
$(function() {
	$('#nav-accordion').dcAccordion({
		eventType : 'click',
		autoClose : true,
		saveState : true,
		disableLink : true,
		speed : 'slow',
		showCount : false,
		autoExpand : true,
		// cookie: 'dcjq-accordion-1',
		classExpand : 'dcjq-current-parent'
	});
});

// right slidebar
$(function() {

	$.slidebars();

	jQuery('#sidebar .sub-menu > a').click(function() {
		var o = ($(this).offset());
		diff = 250 - o.top;
		if (diff > 0)
			$("#sidebar").scrollTo("-=" + Math.abs(diff), 500);
		else
			$("#sidebar").scrollTo("+=" + Math.abs(diff), 500);
	});

	$('.fa-bars').click(function() {
		if ($('#sidebar > ul').is(":visible") === true) {
			$('#main-content').css({
				'margin-left' : '0px'
			});
			$('#sidebar').css({
				'margin-left' : '-210px'
			});
			$('#sidebar > ul').hide();
			$("#container").addClass("sidebar-closed");
		} else {
			$('#main-content').css({
				'margin-left' : '210px'
			});
			$('#sidebar > ul').show();
			$('#sidebar').css({
				'margin-left' : '0'
			});
			$("#container").removeClass("sidebar-closed");
		}
	});

	function responsiveView() {
		var wSize = $(window).width();
		if (wSize <= 768) {
			$('#container').addClass('sidebar-close');
			$('#sidebar > ul').hide();
		}

		if (wSize > 768) {
			$('#container').removeClass('sidebar-close');
			$('#sidebar > ul').show();
		}
	}
	$(window).on('load', responsiveView);
	$(window).on('resize', responsiveView);

	$('.tooltips').tooltip();

	$("#sidebar").niceScroll({
		styler : "fb",
		cursorcolor : "#e8403f",
		cursorwidth : '3',
		cursorborderradius : '10px',
		background : '#404040',
		spacebarenabled : false,
		cursorborder : ''
	});

	// $("html").niceScroll({styler:"fb",cursorcolor:"#e8403f", cursorwidth:
	// '6', cursorborderradius: '10px', background: '#404040',
	// spacebarenabled:false, cursorborder: '', zindex: '1000'});
});