///attack() (call with an actor)
{
    var targetHex = global.player.hex;

    // Check the actor is attacking a neighbouring hex
    if ( isNeighbourHex( hex, targetHex ) ) {
        // TODO - This needs to animate
        show_debug_message( "ATTACKED PLAYER" );
    }
}

