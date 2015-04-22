///generatePathingValues): void
{
    var pathingMap = get_named_map( "pathingMap" );
    var currentStack = ds_stack_create();
    var nextStack = ds_stack_create();
    var range = 0;
    
    // Starting with the player, we're going to work our way through all accessible hexes
    // putting the range to the player's hex in a map
    // For each hex, we'll check the neighbouring hex to see if it's traversible
    ds_map_clear( pathingMap );
    
    ds_stack_push( nextStack, global.player.hex );
    while( ds_stack_size( nextStack ) > 0 ) {
        var tempStack = currentStack;
        currentStack = nextStack;
        nextStack = tempStack;
        
        while( ds_stack_size( currentStack ) > 0 ) {
            var hex = ds_stack_pop( currentStack );
            var hash = hexHash( hex );
            
            if ( is_undefined( pathingMap[? hash] ) ){
                pathingMap[? hash] = range;
                
                for( var dir = 0; dir < 6; dir++ ) {
                    var neighbour = getNeighbourHex( hex, dir );
                    if ( !is_undefined( neighbour ) && 
                        ( is_undefined( neighbour.actor ) || !neighbour.actor.isBlocking ) ) {
                        // This neighbouring hex exists, and is not blocked, so add it to the 'next' stack
                        ds_stack_push( nextStack, neighbour );
                    }
                }
            }
        }
        range++;
    }
    
    ds_stack_destroy( currentStack );
    ds_stack_destroy( nextStack );
}
