///changeState( newState: gameState )
{
    var newState = argument0;
    var oldState = global.currentState;
    
    show_debug_message("Changing state: " + getGameStateName( oldState ) + " -> " + getGameStateName( newState ) );
    global.currentState = newState;
    
    if (oldState == gameState.playerTurn){
        show_debug_message("Generating pathing values");
        generatePathingValues();
    }
}
