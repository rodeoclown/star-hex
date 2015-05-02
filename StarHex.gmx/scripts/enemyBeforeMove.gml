///enemyBeforeMove() Call with enemy
{
    //Register this enemy as moving
    var moveStack = get_named_stack( "enemyMoveStack" );
    ds_stack_push( moveStack, id );
    
    if ( !audio_is_playing( snd_enemyMove ) ) {
        audio_play_sound( snd_enemyMove, 50, false );
    }
}
