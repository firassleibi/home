function add_to_cart(pid){
  jQuery.post( "./?post_type=product&add-to-cart="+pid, function( data ) {
    var fragments = data.fragments;
    console.log(data);
    if ( fragments ) {

        $.each(fragments, function(key, value) {
            $(key).replaceWith(value);
        });

    }
    jQuery('#myModal').modal('show');
  });
  return false;

}
