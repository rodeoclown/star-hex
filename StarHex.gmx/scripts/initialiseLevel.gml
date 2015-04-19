///initialiseLevel()
{
    buildHexGrid( x, y, 0, 0, 5 );
    buildHexGrid( x, y, 0, 1, 5 );

    global.player = addActor( o_player, getHex( 0, 5 ) );
    global.exitPortal = addExitPortal( getHex( 0, -4 ) );
    
    generateTerrain();
    
    changeState( gameState.playerTurn );
    
    repeat(5) {
        var hex = undefined;
        do {
            hex = getRandomHex( global.player.hex );
        } until ( is_undefined( hex.actor ) )
        addEnemy( o_simpleEnemy, hex );
    }
}
