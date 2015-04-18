///moveActor( actor, targetHex )
{
    var actor = argument0;
    var targetHex = argument1;
    
    if ( is_undefined( actor.hex ) ) {
        // This actor isn't anywhere, so let's put them on the hex directly
        
        var lastHex = undefined;
        if ( !is_undefined( actor.fn_beforeMove ) ){
            with( actor ) script_execute( actor.fn_beforeMove, targetHex );
        }
        
        actor.hex = targetHex;
        actor.x = targetHex.x;
        actor.y = targetHex.y;
        actor.depth = -actor.y;   
        targetHex.actor = actor;
        
        if ( !is_undefined( actor.fn_beforeMove ) ){
            with( actor ) script_execute( actor.fn_afterMove, lastHex );
        }
    }
    else 
    {
        // Check the actor is moving to a neighbouring hex
        if ( isNeighbourHex( actor.hex, targetHex ) && isHexEmpty( targetHex ) ) {
            // TODO - This needs to animate, not just dump them there
            
            var lastHex = actor.hex;
            if ( !is_undefined( actor.fn_beforeMove ) ) {
                with( actor ) script_execute( actor.fn_beforeMove, targetHex );
            }
            
            actor.hex = targetHex;
            actor.x = targetHex.x;
            actor.y = targetHex.y;
            actor.depth = -actor.y;
            
            targetHex.actor = actor;
            lastHex.actor = undefined;
            
            if ( !is_undefined( actor.fn_beforeMove ) ){
                with ( actor ) script_execute( actor.fn_afterMove, lastHex );
            }
        }
    }
}
