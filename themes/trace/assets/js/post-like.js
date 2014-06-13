jQuery(document).ready(function() {
	jQuery('body').on('click','.jm-post-like',function(event){
		event.preventDefault();
		heart = jQuery(this);
		post_id = heart.data("post_id");
		heart.html("<i class='fa fa-user'></i>&nbsp;<i class='fa fa-cog fa-spin'></i>");
		jQuery.ajax({
			type: "post",
			url: ajax_var.url,
			data: "action=jm-post-like&nonce="+ajax_var.nonce+"&jm_post_like=&post_id="+post_id,
			success: function(count){
				if( count.indexOf( "already" ) !== -1 )
				{
					var lecount = count.replace("already","");
					if (lecount == 0)
					{
						var lecount = "Be part of this event";
					}
					heart.prop('title', 'Be part of this event');
					heart.removeClass("participated");
					heart.html("<i class='fa fa-user-o'></i>&nbsp;"+lecount);
				}
				else
				{
					heart.prop('title', 'Unparticipate');
					heart.addClass("participated");
					heart.html("<i class='fa fa-user'></i>&nbsp;"+count);
				}
			}
		});
	});
});
