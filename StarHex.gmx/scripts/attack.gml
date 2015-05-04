///attack() (call with an actor)
{
    var targetHex = global.player.hex;

    // Check the actor is attacking a neighbouring hex
    if ( !isNeighbourHex( hex, targetHex ) ) {
        fn_animate = NOP;
    }
    else {
        fn_animate = animate_enemyBeginAttack;
    }
}
