$("button").click(function(){

    		var content= $("#title").val();
    		var c_time=new Date($.now());
    		var t=c_time.getHours()+":"+c_time.getMinutes()+":"+c_time.getSeconds();
    		var d=c_time.getDate()+"/"+(c_time.getMonth()+1)+"/"+c_time.getFullYear();
           
       		$('#post').prepend('<li class="post_list">' +content+'<span class="close"><img src="close.png"/></span>'+'<span class="time" ><br>'+t+':'+d+'</span>'+'</li>');
    		$("#title").val('');
    		$(".post_list").mouseenter(function()
    			{$(this).find(".close").css("visibility","visible")});
    		$(".post_list").mouseleave(function()
    			{$(this).find(".close").css("visibility","hidden")});
    		 });
    		$(document).on('submit','.close',function()
    			{
    				
    				$(this).parent().fadeOut(300,0,function()
    					{
    						$(this).remove();
    					});
    			});
   
   
    $('#text').keyup(function() {
        var text_length = $('#text').val().length;
        

          });

	
