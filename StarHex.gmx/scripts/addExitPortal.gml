///addExitPortal( startingHex )
{
    var startingHex = argument0;
    
    var exitPortal = instance_find( o_exitPortal, 0 );
    if( exitPortal == noone ) {
        exitPortal = instance_create( startingHex.x, startingHex.y, o_exitPortal );    
    }

    with( exitPortal ) { 
        hex = startingHex;
        x = startingHex.x;
        y = startingHex.y; 
        depth = -y + 50;
    }
    
    return exitPortal;
}