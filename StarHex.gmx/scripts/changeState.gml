///changeState( newState: gameState )
{
    var newState = argument0;
    show_debug_message("Changing state: " + getGameStateName( global.currentState ) + " -> " + getGameStateName( newState ) );
    global.currentState = newState;
}
