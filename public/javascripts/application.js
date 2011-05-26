// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

Cufon.replace('h1');
Cufon.replace('h2');


$(document).ready(function() {
  $("textarea").markItUp(mySettings);
});

$(document).ready(function FloatMenu(){
  var animationSpeed=1500;
  var animationEasing='easeOutQuint';
  var scrollAmount=$(document).scrollTop();
  var newPosition=menuPosition+scrollAmount;
  if($(window).height()<$('#fl_menu').height()+$('#fl_menu .menu').height()){
    $('#fl_menu').css('top',menuPosition);
  } else {
    $('#fl_menu').stop().animate({top: newPosition}, animationSpeed, animationEasing);
  }
}
$(window).load(function() {
  menuPosition=$('#fl_menu').position().top;
  FloatMenu();
});
$(window).scroll(function () { 
  FloatMenu();
});
$(document).ready(function(){
  var fadeSpeed=500;
  $("#fl_menu").hover(
    function(){ //mouse over
      $('#fl_menu .label').fadeTo(fadeSpeed, 1);
      $("#fl_menu .menu").fadeIn(fadeSpeed);
    },
    function(){ //mouse out
      $('#fl_menu .label').fadeTo(fadeSpeed, 0.75);
      $("#fl_menu .menu").fadeOut(fadeSpeed);
    }
  );
});