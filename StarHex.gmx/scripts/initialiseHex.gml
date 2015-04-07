///initialiseHex( hex, start_x, start_y )
{
    var hex = argument0;
    var start_x = argument1;
    var start_y = argument2;
    
    with( hex ){
        y = start_y + (( sprite_height -1 )*r ) + ( q * floor( sprite_height /2 ) );
        x = start_x + ((((( sprite_width +1 )/4 )*3 )-2 ) *q );
        depth = -y +1;
        
        initialised = true;
    }
}
