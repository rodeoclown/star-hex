///initialiseLevel()
{
    buildHexGrid( x, y, 0, 0, 5 );
    buildHexGrid( x, y, 0, 1, 5 );

    global.player = addActor( o_player, getHex( 0, 5 ) );
    var hex = getRandomHex( global.player.hex );
    addActor( o_simpleEnemy, hex );
}
