///processGameState()
{
    switch ( global.currentState ){
        case gameState.playerTurn:
            // Do nothing
            break;
        case gameState.playerAnimating:
            // Animate the player's action
            with ( global.player ) script_execute( fn_animate );
            break;
        case gameState.enemyTurn:
            // Process the enemies turn
            processEnemyTurn();
            break;
        case gameState.enemyAnimating:
            // Animate the enemies
            animateEnemies();
            break;
    }
}
