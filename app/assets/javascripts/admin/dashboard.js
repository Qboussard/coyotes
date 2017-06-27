// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$( document ).ready(function() {
	console.log('ready');
	$(".top-nav").on("swipe",function(){
		console.log('hide');
		$(this).hide();
	});
});