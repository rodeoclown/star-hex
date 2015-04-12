///moveActor( actor, targetHex )
{
    var actor = argument0;
    var targetHex = argument1;
 
    if ( is_undefined( actor.hex ) ) {
        // This actor isn't anywhere, so let's put them on the hex directly
        actor.lastHex = actor.hex;
        actor.hex = targetHex;
        actor.x = targetHex.x;
        actor.y = targetHex.y;
        actor.depth = -actor.y;   
    }
    else 
    {
        // Check the actor is moving to a neighbouring hex
        if ( isNeighbourHex( actor.hex, targetHex ) ) {
            // TODO - This needs to animate, not just dump them there
            actor.lastHex = actor.hex;
            actor.hex = targetHex;
            actor.x = targetHex.x;
            actor.y = targetHex.y;
            actor.depth = -actor.y;
        }
    }
}
