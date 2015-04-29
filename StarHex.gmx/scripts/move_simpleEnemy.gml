///move_simpleEnemy() - Call with enemy
{
    var targetHex = getClosestHexToPlayer( hex );
    if ( is_defined( targetHex ) )
    {
        move( targetHex );
    }
    else {
        fn_animate = animate_NOP;
    }
}
