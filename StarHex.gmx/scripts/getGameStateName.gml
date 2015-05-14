///getGameStateName( state: gameState ): string
{
    if ( is_undefined( argument0 ) ) return "Undefined";
    
    switch ( argument0 ){
        case gameState.playerTurn: return "playerTurn";
        case gameState.playerAnimating: return "playerAnimating";
        case gameState.enemyTurn: return "enemyTurn";
        case gameState.enemyAnimating: return "enemyAnimating";
        case gameState.gameOver: return "gameOver";
    }
}
