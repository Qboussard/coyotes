// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$( document ).ready(function() {
	$('.dropdown-button').dropdown({
	      inDuration: 300,
	      outDuration: 225,
	      constrainWidth: false, // Does not change width of dropdown to that of the activator
	      hover: false, // Activate on hover
	      gutter: 0, // Spacing from edge
	      belowOrigin: false, // Displays dropdown below the button
	      alignment: 'left', // Displays dropdown with edge aligned to the left of button
	      stopPropagation: false // Stops event propagation
	    }
	  );
  $(document).ready(function(){
      $('.collapsible').collapsible();
  });
  $('.filter_bug').change(function(){
    if(this.checked){
      $('.filter_feature').attr('checked', false);
      $('.filter_wip').attr('checked', false);
      $('.feature_filter').parent().parent().show();
      $(".feature_filter.feature0").parent().parent().hide();
      $(".feature_filter.feature1").parent().parent().hide();
      $(".feature_filter.feature2").parent().parent().hide();
      $(".feature_filter.feature3").parent().parent().hide();

    }
    else{
      $('.feature_filter').parent().parent().show();
    }
  });
  $('.filter_feature').change(function(){
    if(this.checked){
      $('.filter_bug').attr('checked', false);
      $('.filter_wip').attr('checked', false);
      $('.feature_filter').parent().parent().show();
      $(".feature_filter.bug0").parent().parent().hide();
      $(".feature_filter.bug1").parent().parent().hide();

    }
    else{
      $('.feature_filter').parent().parent().show();
    }
  });

  $('.filter_wip').change(function(){
    if(this.checked){
      $('.filter_bug').attr('checked', false);
      $('.filter_feature').attr('checked', false);
      $('.feature_filter').parent().parent().show();
      $(".feature_filter.feature3").parent().parent().hide();
      $(".feature_filter.bug1").parent().parent().hide();
    }
    else{
      $('.feature_filter').parent().parent().show();
    }
  });
});