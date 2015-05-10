///changeState( newState: gameState )
{
    var newState = argument0;
    var oldState = global.currentState;
    
    //show_debug_message("Changing state: " + getGameStateName( oldState ) + " -> " + getGameStateName( newState ) );
    global.currentState = newState;
    
    if (oldState == gameState.playerAnimating){
        //show_debug_message("Generating pathing values");
        generatePathingValues();
    }
    
    if (newState == gameState.playerTurn){
        //show_debug_message("Checking for stuck player");
        var canMove = false;
        for( var dir = 0; dir < 6; dir++ ) {
            var hex = getNeighbourHex( global.player.hex, dir );
            canMove |= def( hex ) && isHexEmpty( hex );
        }
        if ( !canMove ) {
            changeState( gameState.enemyTurn );
        }
    }
}
