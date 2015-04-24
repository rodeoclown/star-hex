{
    // Simple enemy AI - move closer to the player, and attack if in a neighbouring cell        
    if ( isNeighbourHex( hex, global.player.hex) ) {
        fn_plannedAction = attack;
        return plan.doAttack;
    }
    
    fn_plannedAction = move_simpleEnemy;   
    return plan.doMove;
}
