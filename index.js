	//GET DATA FOR SEARCH
$(document).ready(function(){

	$('.searchDestination').click(function(){

    	$(this).text('Computing...');
        $(this).css('background-color','transparent');
        $(this).css('border','none');
        $(this).css('color','red');
        //$(this).append($("<i class='fa fa-circle-o-notch fa-spin fa-lg fa-fw spinner'></i>"));

        var myId = $(this).attr('id');
        var mydata = $('#home_form').serialize();

        console.log(mydata);

  $.post('searchDestination.php',mydata).done(function(data){
      
      if(data==0){
        alert('YOUR SEARCH RETURNED NO RESULTS. PLEASE TRY AGAIN.');

        $('#'+myId).removeAttr('style');
        $('.spinner').remove();
        $('#'+myId).text('SEARCH');
        $('#'+myId).css('background-color','#337ab7');
        $('#'+myId).css('border-color','#2e6da4');

      }else{
        window.location.replace('http://localhost/ma3 terminus/filtered.html');
      }
      

    });
  return false;

    });
           
	});