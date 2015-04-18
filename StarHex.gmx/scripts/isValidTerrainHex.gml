///isValidTerrainHex( hex ): boolean
{
    var hex = argument0;
    
    // 1 - Can't be on the player start hex, or any of its neighbours
    var startHex = global.player.hex;
    if ( hex == startHex || isNeighbourHex( hex, startHex ) ) {
        return false;
    }   
    
    // 2 - Can't be on the exit portal hex, or any of its neighbours
    var exitHex = global.exitPortal.hex;
    if ( hex == exitHex || isNeighbourHex( hex, exitHex ) ) {
        return false;
    }
    
    // 3 - Can't have an actor on it (only actors at this stage will be existing terrain)
    if ( !is_undefined( hex.actor ) ) {
        return false;
    }
    
    // 4 - Can't block off a route to the exit. [TODO]
    
    return true;
}
