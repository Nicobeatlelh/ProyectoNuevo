function print_today() {
  
  var now = new Date();
  var months = new Array('Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre');
  var date = ((now.getDate()<10) ? "0" : "")+ now.getDate();
  function fourdigits(number) {
    return (number < 1000) ? number + 1900 : number;
  }
  var today =  date + " de " + months[now.getMonth()]  + " del " + (fourdigits(now.getYear()));
  return today;
}


$(document).ready(function(){
	var palabra = "";
	var nombre = "";
	var palabra2 = "";
	$('#date').html(print_today());
	$( "#idCli" ).keypress(function( event ) {
		if(event.keyCode!=13){
			 palabra+=event.key;
				$('#idCliForm').html(parseInt(palabra));
	
		}else{
//			$('#idCliForm').val(parseInt(palabra));
//			$('#enviar').trigger('click');	
			window.location.href = 'Clientes/'+parseInt(palabra)+'/buscarId';
		}
	});
	$("#crearFac").click(function(){
		window.location.href = 'factura/'+parseInt($('#idCli').html())+'/crear';
	});
	$( "#nomProd" ).keypress(function( event ) {
		if(event.keyCode!=13){
			 nombre+=event.key;
			 $('#nomProdForm').val(nombre);
			 console.log(nombre);
		}else{
			window.location.href = 'Productos/'+nombre+'/'+palabra2+'/buscar';
		}
	});
	
	$( "#pesoProd" ).keypress(function( event ) {
		if(event.keyCode!=13){
			 palabra2+=event.key;
			 $('#pesoProdForm').val(palabra2);
			 console.log(palabra2);
		}else{
			window.location.href = 'Productos/'+nombre+'/'+palabra2+'/buscar';	
		}
	});
	
	/* ----------------------------------------- */
	
	$("#paid").blur(update_balance);
	   
	  $("#addrow").click(function(){
	    $(".item-row:last").after('<tr class="item-row"><th scope="row"><div class="delete-wpr"><a class="delete" href="javascript:;" title="Remove row">X</a><span id="nomProd" contentEditable="true"><c:choose><c:when test="${prodObt!=null}"><c:out value = "${prodObt.prod_nom}"/></c:when><c:otherwise>Inserte nombre</c:otherwise></c:choose></span></div></th><td><span id="pesoProd" contentEditable="true"><c:choose><c:when test="${prodObt!=null}"><c:out value = "${prodObt.peso}"/></c:when><c:otherwise>Inserte peso</c:otherwise></c:choose></span></td><td><c:out value = "${prodObt.stock}"/></td><td><textarea class="cost">	<c:out value = "${prodObt.precio_v}"/></textarea></td><td><textarea class="qty"> </textarea></td><td class="price"></td></tr>');
	    if ($(".delete").length > 0) $(".delete").show();
	    bind();
	  });
	  
	  bind();
	  
	  $(document).on("click",".delete",function(){
	    $(".delete").parents('.item-row').remove();
	    update_total();
	    if ($(".delete").length < 2) $(".delete").hide();
	  });
	  
	  $("#cancel-logo").click(function(){
	    $("#logo").removeClass('edit');
	  });
	  $("#delete-logo").click(function(){
	    $("#logo").remove();
	  });
	  $("#change-logo").click(function(){
	    $("#logo").addClass('edit');
	    $("#imageloc").val($("#image").attr('src'));
	    $("#image").select();
	  });
	  $("#save-logo").click(function(){
	    $("#image").attr('src',$("#imageloc").val());
	    $("#logo").removeClass('edit');
	  });
	  
	  $("#date").val(print_today());
})



function roundNumber(number,decimals) {
  var newString;// The new rounded number
  decimals = Number(decimals);
  if (decimals < 1) {
    newString = (Math.round(number)).toString();
  } else {
    var numString = number.toString();
    if (numString.lastIndexOf(".") == -1) {// If there is no decimal point
      numString += ".";// give it one at the end
    }
    var cutoff = numString.lastIndexOf(".") + decimals;// The point at which to truncate the number
    var d1 = Number(numString.substring(cutoff,cutoff+1));// The value of the last decimal place that we'll end up with
    var d2 = Number(numString.substring(cutoff+1,cutoff+2));// The next decimal, after the last one we want
    if (d2 >= 5) {// Do we need to round up at all? If not, the string will just be truncated
      if (d1 == 9 && cutoff > 0) {// If the last digit is 9, find a new cutoff point
        while (cutoff > 0 && (d1 == 9 || isNaN(d1))) {
          if (d1 != ".") {
            cutoff -= 1;
            d1 = Number(numString.substring(cutoff,cutoff+1));
          } else {
            cutoff -= 1;
          }
        }
      }
      d1 += 1;
    } 
    if (d1 == 10) {
      numString = numString.substring(0, numString.lastIndexOf("."));
      var roundedNum = Number(numString) + 1;
      newString = roundedNum.toString() + '.';
    } else {
      newString = numString.substring(0,cutoff) + d1.toString();
    }
  }
  if (newString.lastIndexOf(".") == -1) {// Do this again, to the new string
    newString += ".";
  }
  var decs = (newString.substring(newString.lastIndexOf(".")+1)).length;
  for(var i=0;i<decimals-decs;i++) newString += "0";
  //var newNumber = Number(newString);// make it a number if you like
  return newString; // Output the result to the form field (change for your purposes)
}

function update_total() {
	  var total = 0;
	  $('.price').each(function(i){
	    price = $(this).html().replace("$","");
	    if (!isNaN(price)) total += Number(price);
	  });

	  total = roundNumber(total,2);

	  $('#subtotal').html("$"+total);
	  $('#total').html("$"+total);
	  
	  update_balance();
	}

	function update_balance() {
	  var due = $("#total").html().replace("$","") - $("#paid").val().replace("$","");
	  due = roundNumber(due,2);
	  
	  $('.due').html("$"+due);
	}

	function update_price() {
	  var row = $(this).parents('.item-row');
	  var price = row.find('.cost').val().replace("$","") * row.find('.qty').val();
	  price = roundNumber(price,2);
	  isNaN(price) ? row.find('.price').html("N/A") : row.find('.price').html("$"+price);
	  
	  update_total();
	}

	function bind() {
	  $(".cost").blur(update_price);
	  $(".qty").blur(update_price);
	}