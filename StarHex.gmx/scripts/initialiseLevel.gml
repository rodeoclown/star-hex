///initialiseLevel()
{
    audio_stop_all();
    
    buildHexGrid( x, y, 0, 0, 5 );
    buildHexGrid( x, y, 0, 1, 5 );

    global.player = addActor( o_player, getHex( 0, 5 ) );
    global.exitPortal = addExitPortal( getHex( 0, -4 ) );
    
    generateTerrain();
    generateStars();
    changeState( gameState.playerTurn );

    removeAllActorsFromList( get_named_list( "enemyList" ) );
    //ds_map_clear( get_named_map( "enemyMap" ) );
    
    repeat( min( global.levelNum + 2, 25 ) ) {
        var hex = undefined;
        do {
            hex = getRandomHex( global.player.hex );
        } until ( is_undefined( hex.actor ) )
        addEnemy( o_simpleEnemy, hex );
    }
}
