///moveActorInDirection( actor, hexDirection )
{
    var actor = argument[0];
    var hexDirection = argument[1];
    
    var moveToHex = getNeighbourHex( actor.hex, hexDirection );
    if ( !is_undefined( moveToHex ) ) {
        moveActor( actor, moveToHex );
    }
}
