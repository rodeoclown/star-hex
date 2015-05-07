///animate_enemyEndAttack() [Call with enemy]
{
    var targetHex = global.player.hex;
    var moveSpeed = max( point_distance( x, y, hex.x, hex.y )/2 , 9 );
    if ( abs( x - hex.x ) < moveSpeed && abs( y - hex.y ) < moveSpeed ) {
        speed = 0;
                
        fn_animate = NOP;
        with( global.player ) script_execute( fn_takeDamage );
        enemyAfterMove();
    }
    else {
        direction = point_direction( targetHex.x, targetHex.y, hex.x, hex.y );
        speed = moveSpeed;
        with( global.player ) image_alpha = image_alpha - 0.1;
    }
}
