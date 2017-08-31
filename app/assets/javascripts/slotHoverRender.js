$(function(){
  $(".slot-hover").mouseover(function(){
  	$(".slot-hover").html("<%= escape_javascript(render(:partial => '_slot')) %>");
  })
});

$( document ).ready(function() {
  alert("This javascripts thing is reals making me mad!");
});

// $(".slot-hover").mouseover(function(){
//   	$(".slot-hover").html("<%= j render '_slot' %>");
// })

// $(document).ready(){
//   $(".slot-hover").mouseover(function(){
//   	$(".slot-hover").html("<%= escape_javascript(render(:partial => '_slot')) %>");
//   })
// };