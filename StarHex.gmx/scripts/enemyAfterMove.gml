///enemyAfterMove() Call with enemy
{
    //Register this enemy as having finished moving
    var moveStack = get_named_stack( "enemyMoveStack" );
    ds_stack_pop( moveStack );
    
    if ( ds_stack_empty( moveStack ) ){
        changeState( gameState.playerTurn );
    }
}
