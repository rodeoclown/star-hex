///playerAfterMove( previousHex )
{
    var previousHex = argument0;
    
    var enemyList = get_named_list( "enemyList" );
    var enemyCount = ds_list_size( enemyList );
    
    for( var i = enemyCount -1; i >= 0; i-- ) {
        var enemy = enemyList[| i];
        
        if( isNeighbourHex( enemy.hex, previousHex ) &&
            isNeighbourHex( enemy.hex, hex ) ) {
            // The enemy was next to the player the whole way through the move, so they are toast
            removeEnemy( enemy );
        }
    }
    
    // Check for exiting the level
    if( hex == global.exitPortal.hex ) {
        completeLevel();
        return undefined;
    }
    
    changeState( gameState.enemyTurn );
}