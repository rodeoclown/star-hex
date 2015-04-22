{
    // Simple enemy AI - move closer to the player, and attack if in a neighbouring cell
    var pathingMap = get_named_map( "pathingMap" );
    var currentRange = pathingMap[? hexHash( hex )];
    
    fn_plannedAction = NOP;
    
    if ( is_undefined( currentRange ) ) {
        return plan.doNothing;
    }
    
    if ( currentRange == 1 ) {
        fn_plannedAction = attack;
        targetHex = global.player.hex;
        return plan.doAttack;
    }
    
    targetHex = getClosestHexToPlayer( hex );
    if ( is_defined( targetHex ) ) {
        fn_plannedAction = move;
        return plan.doMove;
    }
    
    return plan.doNothing;
}
