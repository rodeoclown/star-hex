///move( targetHex ) (call with an actor)
{
    targetHex = argument0;
    
    if ( is_undefined( hex ) ) {
        // This actor isn't anywhere, so let's put them on the hex directly
        hex = targetHex;
        lastHex = hex;
        x = targetHex.x;
        y = targetHex.y;
        depth = -y;   
        targetHex.actor = id;
    }
    else 
    {
        // Check the actor is moving to a neighbouring hex
        if ( isNeighbourHex( hex, targetHex ) && isHexEmpty( targetHex ) ) {
            script_execute( fn_beforeMove, targetHex );
            
            lastHex = hex;
            hex = targetHex;
            fn_animate = animate_move;
            
            targetHex.actor = id;
            lastHex.actor = undefined;
        }
    }
}