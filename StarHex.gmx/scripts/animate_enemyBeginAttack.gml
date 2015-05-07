///animateEnemyBeginAttack() [Call with enemy]
{
    var moveStack = get_named_stack( "enemyMoveStack" );
    ds_stack_push( moveStack, id );
    
    var targetHex = global.player.hex;
    var moveSpeed = max( point_distance( x, y, targetHex.x, targetHex.y )/2 , 9 );

    if ( !audio_is_playing( snd_enemyShoot ) ) { audio_play_sound( snd_enemyShoot, 50, false ); }
    if ( abs( x - targetHex.x ) < moveSpeed && abs( y - targetHex.y ) < moveSpeed ) {
        speed = 0;
        depth = -1000;
                
        fn_animate = animate_enemyEndAttack;
    }
    else {
        direction = point_direction( hex.x, hex.y, targetHex.x, targetHex.y );
        speed = moveSpeed;
    }
}
