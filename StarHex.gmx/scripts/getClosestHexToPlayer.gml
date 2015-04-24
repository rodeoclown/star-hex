///getClosestHexToPlayer( hex ): hex
{
    var hex = argument0;

    var closestHex = undefined;
    var pathingMap = get_named_map( "pathingMap" );
    var currentRange = pathingMap[? hexHash( hex )];
    if ( !def( currentRange ) ) currentRange = 9999;
    
    for ( var dir = 0; dir < 6; dir++ ) {
        var neighbour = getNeighbourHex( hex, dir );
        if ( def( neighbour ) && isHexEmpty( neighbour ) ) {
            var nextRange = pathingMap[? hexHash( neighbour )];
            if ( nextRange < currentRange ) {
                currentRange = nextRange;
                closestHex = neighbour;
            }
            else if ( nextRange == currentRange && 
                getDistanceFromHex( hex, global.player.hex ) > getDistanceFromHex( neighbour, global.player.hex ) ) {
                // These two hexes are equidistant in moves, let's pick the closest one in pixels
                closestHex = neighbour;
            }            
        }
    }
    
    // If there's no path to the player, let's at least try and move closer
    if ( !def( closestHex ) )
    {
        var distance = getDistanceFromHex( hex, global.player.hex );
        for ( var dir = 0; dir < 6; dir++ ) {
            var neighbour = getNeighbourHex( hex, dir );
            if ( def( neighbour ) && isHexEmpty( neighbour ) ) {
                var newDist = getDistanceFromHex( neighbour, global.player.hex );
                if ( newDist < distance ) {
                    distance = newDist;
                    closestHex = neighbour;
                }
            }
        }
    }
    
    return closestHex;
}
