{
    // Simple enemy AI - move closer to the player, and attack if in a neighbouring cell
    var playerHex = global.player.hex;
    
    if ( isNeighbourHex( hex, playerHex ) ) {
        fn_plannedAction = NOP;
        target_hex = playerHex;
        return plan.doAttack;
    }
    
    fn_plannedAction = move;
    targetHex = getNeighbourHex( hex, getHexDirection( hex, playerHex ) );
    return plan.doMove;
}
