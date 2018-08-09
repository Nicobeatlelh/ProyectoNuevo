$(document).ready(function(){
	$(".item-row").each(function(){
		$(this).children(".prod-total").val($(this).children(".cant").val()*$(this).children(".cost").val());
	})
})