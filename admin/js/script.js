$(document).ready(function() {

	$('.delete').click(function(){
		
		var rel = $(this).attr("rel");
		
		$.confirm({
			'title'		: 'Подтверждение удаления',
			'message'	: 'После удаления восстановление будет невозможно! Продолжить?',
			'buttons'	: {
				'Да'	: {
					'class'	: 'blue',
					'action': function(){
						location.href = rel;
					}
				},
				'Нет'	: {
					'class'	: 'gray',
					'action': function(){}
				}
			}
		});
		
	});

	  $('#select-links').click(function(){
	 $("#list-links,#list-links-sort").slideToggle(200);     
	 }); 

	  $('.h3click').click(function(){ 
	 $(this).next().slideToggle(400); 
	 });

	  var count_input = 1;

	  $("#add-input").click(function(){
	    
	  count_input++;  
	  
	  $('<div id="addimage'+count_input+'" class="addimage"><input type="hidden" name="MAX_FILE_SIZE" value="2000000"/><input type="file" name="galleryimg[]" /><a class="delete-input" rel="'+count_input+'" >Удалить</a></div>').fadeIn(300).appendTo('#objects'); 
	   
	  }); 

	  $('.delete-input').live('click',function(){
    
		var rel = $(this).attr("rel");
	  
		$("#addimage"+rel).fadeOut(300,function(){	   
	    $("#addimage"+rel).remove();      
		});

		});


});