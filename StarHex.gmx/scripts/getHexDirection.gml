///getHexDirection( fromHex, toHex ): hexDirection
{
    var fromHex = argument0;
    var toHex = argument1;
    var dir = point_direction( fromHex.x, fromHex.y, toHex.x, toHex.y );
    
    if ( dir <  60 ) return hexDirection.rightUp;
    if ( dir < 120 ) return hexDirection.up;
    if ( dir < 180 ) return hexDirection.leftUp;
    if ( dir < 240 ) return hexDirection.leftDown;
    if ( dir < 300 ) return hexDirection.down;
    return hexDirection.rightDown;
}
