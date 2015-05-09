///playerAfterMove( previousHex )
{
    var previousHex = argument0;
    
    var enemyList = get_named_list( "enemyList" );
    var enemyCount = ds_list_size( enemyList );
    
    for( var i = enemyCount -1; i >= 0; i-- ) {
        var enemy = enemyList[| i];
        
        if( isNeighbourHex( enemy.hex, hex ) &&
            ( isNeighbourHex( enemy.hex, previousHex ) || ( areHexesInLine( enemy.hex, previousHex ) ) ) ) {
            // The enemy was next to the player the whole way through the move, or they were charged.
            // Either way, they are toast
            with( enemy ) script_execute(fn_takeDamage);
        }
    }
    
    // Check for exiting the level
    if( hex == global.exitPortal.hex ) {
        completeLevel();
        return undefined;
    }
    
    // Lose 5 points for each move
    score -= 5;
    
    changeState( gameState.enemyTurn );
}
