///move( targetHex ) (call with an actor)
{
    var targetHex = argument0;
    
    if ( is_undefined( hex ) ) {
        // This actor isn't anywhere, so let's put them on the hex directly
        hex = targetHex;
        x = targetHex.x;
        y = targetHex.y;
        depth = -y;   
        targetHex.actor = id;
    }
    else 
    {
        // Check the actor is moving to a neighbouring hex
        if ( isNeighbourHex( hex, targetHex ) && isHexEmpty( targetHex ) ) {
            // TODO - This needs to animate, not just dump them there    
            script_execute( fn_beforeMove, targetHex );
            
            var lastHex = hex;
            hex = targetHex;
            x = targetHex.x;
            y = targetHex.y;
            depth = -y;
            
            targetHex.actor = id;
            lastHex.actor = undefined;
            
            script_execute( fn_afterMove, lastHex );
        }
    }
}
