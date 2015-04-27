///generateTerrain()
{
    var MAX_TERRAIN_HEXES = 16;
    var MAX_LOCAL_TERRAIN_HEXES = 8;
    var MAX_TERRAIN_BLOBS = 3;
    
    var terrainHexes = 0;
    var localTerrainHexes = 0;
    var terrainBlobs = 0;
    
    var terrainList = get_named_list( "terrainList" );
    removeAllActorsFromList( terrainList );
    
    var currentHex = undefined;
    
    while ( terrainHexes < MAX_TERRAIN_HEXES ) {
        
        if ( is_undefined( currentHex ) ) {
            // 1 - Check we don't have too many blobs already
            if (terrainBlobs >= MAX_TERRAIN_BLOBS){
                break;
            }
            
            // We don't have a hex to use so:
            // 2 - pick a random hex
            currentHex = getRandomHex( global.player.hex );
            // 3 - if it's valid, put a terrain hex there and increment all counters
            if ( isValidTerrainHex( currentHex ) ) {
                ds_list_add( terrainList, addActor( o_terrain, currentHex ) );
                
                localTerrainHexes = 1;
                terrainBlobs++;
                terrainHexes++;

            }
            else {
                currentHex = undefined;
            }
        }
        else {
            // We've already got a hex, so we'll try and walk in a random direction
            currentHex = getNeighbourHex( currentHex, irandom(5) );
            if ( !is_undefined( currentHex ) && isValidTerrainHex( currentHex ) ){
                ds_list_add( terrainList, addActor( o_terrain, currentHex ) );
                
                terrainHexes++;
                localTerrainHexes++;
                
                if ( localTerrainHexes >= MAX_LOCAL_TERRAIN_HEXES ) {
                    currentHex = undefined;
                }
            }
        }
    }
}
