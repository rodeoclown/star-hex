///moveInDirection( hexDirection )
{
    var hexDirection = argument0;
    
    var moveToHex = getNeighbourHex( hex, hexDirection );
    if ( !is_undefined( moveToHex ) ) {
        move( moveToHex );
    }
}
