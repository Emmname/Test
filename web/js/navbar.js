/* 
Description: drop down menu mouse responsive effect
Author: Enime Team(Rui Hu,Jorden Donelly, Haiyun Yu)
CSS Design: HaiyunYu
*/

$(".list")
  .mouseover(function() {
  $(".dropdown").show(300);
});
$(".list")
  .mouseleave(function() {
  $(".dropdown").hide(300);     
});


