$(document).ready(function() {
	$("#form").submit(function(event) {
		data = $(this).serialize();
		url = $(this).attr("action");

		$.ajax({
			type: "POST",
			url: url,
			date: data,
			success: function(data){
				$(".container").html(data);	
			}

		});
	});
});
