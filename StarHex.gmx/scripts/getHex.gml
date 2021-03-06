///getHex( q, r, createIfNotExist?=false )
{
    var q = argument[0];
    var r = argument[1];
    var createIfNotExist = false;
    if (argument_count > 2 ) {
         createIfNotExist = argument[2];
    }

    var hexMap = get_named_map( 'hexMap' );
    var hash = gridHash( q, r );

    var hex = hexMap[? hash];   

    if ( is_undefined( hex ) && createIfNotExist ) {
        hex = instance_create( 0, 0, o_hex );
        hex.q = q;
        hex.r = r;
        hex.actor = undefined;
        
        var hexList = get_named_list( 'hexList' );
        hexList[| ds_list_size( hexList )] = hex;
        hexMap[? hash] = hex;
    }
    
    return hex;
}