function getProducts(product_type, rowperpage){
	$.ajax({
        url:'/ajax_request',
        type: "POST",
        data: {
           "product_type": product_type,
		   "rowperpage": rowperpage
        },
        async: true,
        success: function (data)
        {
			$('#product_display_area').html(data); 
        }
		
    });
}