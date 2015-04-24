///move_simpleEnemy() - Call with enemy
{
    var targetHex = getClosestHexToPlayer( hex );
    if ( is_defined( targetHex ) )
    {
        move( targetHex );
    }  
}
