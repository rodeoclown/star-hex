///enemyBeforeMove() Call with enemy
{
    //Register this enemy as moving
    var moveStack = get_named_stack( "enemyMoveStack" );
    ds_stack_push( moveStack, id );
}
