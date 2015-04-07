///createHex( q, r )
{
    var q = argument0;
    var r = argument1;
    
    hex = instance_create( 0, 0, o_hex );
    hex.q = q;
    hex.r = r;
    
    var hexMap = get_named_map( 'hexMap' );
    var hash = gridHash( q, r );
    hexMap[? hash] = hex;
           
    var hexList = get_named_list( 'hexList' );
    hexList[| ds_list_size( hexList )] = hex;   
    
    return hex;
}
