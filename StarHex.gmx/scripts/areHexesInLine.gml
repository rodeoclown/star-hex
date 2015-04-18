///areHexesInLine( fromHex, toHex ): Boolean
{
    var fromHex = argument0;
    var toHex = argument1;
    
    return fromHex.q == toHex.q || fromHex.r == toHex.r || ( fromHex.q + fromHex.r ) == ( toHex.q + toHex.r );
}
