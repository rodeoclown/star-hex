///enemyAfterMove() Call with enemy
{
    //Register this enemy as having finished moving
    var moveStack = get_named_stack( "enemyMoveStack" );
    var stackSize = ds_stack_size( moveStack );
    if ( stackSize > 0 ) {
        ds_stack_pop( moveStack );
    }
    
    if ( ds_stack_empty( moveStack ) ){
        changeState( gameState.playerTurn );
    }
}
