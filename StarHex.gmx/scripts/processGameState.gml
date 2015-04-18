///processGameState()
{
    switch ( global.currentState ){
        case gameState.playerTurn:
            // Do nothing
            break;
        case gameState.playerAnimating:
            // Animate the player's action
            break;
        case gameState.enemyTurn:
            // Process the enemies turn
            processEnemyTurn();
            break;
        case gameState.enemyAnimating:
            // Animate the enemies
            break;
    }
}
