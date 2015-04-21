///attack() (call with an actor)
{
    var targetHex = global.player.hex;

    // Check the actor is attacking a neighbouring hex
    if ( isNeighbourHex( hex, targetHex ) ) {
        // TODO - This needs to animate
        with( targetHex.actor ) script_execute( fn_takeDamage );
    }
}
