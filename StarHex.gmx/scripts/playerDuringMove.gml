///playerDuringMove() [Call with player)
{
    var pathingMap = get_named_map( "pathingMap" );
    var enemyList = get_named_list( "enemyList" );
    
    var playShootSound = false;
    
    for( var i = ds_list_size( enemyList ) -1; i >= 0; i-- ) {
        var enemy = enemyList[| i];
        
        if( isNeighbourHex( enemy.hex, hex ) && isNeighbourHex( enemy.hex, lastHex ) ) {
            //show_debug_message( "Enemy was in neighbour hex, and is still in neighbour hex after move" );
            with( enemy ) image_alpha = image_alpha - 0.1;
            playShootSound = true;
        }
        
        var range = pathingMap[? hexHash( enemy.hex )];
        if ( !def( range ) ) range = 999;
        if( isNeighbourHex( enemy.hex, hex ) && range == 2 && areHexesInLine( enemy.hex, lastHex ) ) {
            //show_debug_message( "Enemy was 2 away && inline" );
            with( enemy ) image_alpha = image_alpha - 0.1;
            playShootSound = true;
        }
    }
    
    if ( playShootSound && !audio_is_playing( snd_playerShoot ) ) {
        audio_play_sound( snd_playerShoot, 55, false ); 
    }
}
