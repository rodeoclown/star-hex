///getClosestHexToPlayer( hex ): hex
{
    var hex = argument0;

    var currentRange = 9999;
    var closestHex = undefined;
    var pathingMap = get_named_map( "pathingMap" );
    
    for ( var dir = 0; dir < 6; dir++ ) {
        var neighbour = getNeighbourHex( hex, dir );
        if ( is_defined( neighbour ) ) {
            var nextRange = pathingMap[? hexHash( neighbour )];
            if ( nextRange < currentRange ) {
                currentRange = nextRange;
                closestHex = neighbour;
            }
            else if ( nextRange == currentRange && irandom(1) ) {
                // These two hexes are equidistant, let's pick one at random
                closestHex = neighbour;
            }
            
            
        }
    }
    
    return closestHex;
}
