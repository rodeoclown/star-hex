///animate_move() [call with actor]
{
    var moveSpeed = max( point_distance( x, y, targetHex.x, targetHex.y )/2 , 9 );
    
    if ( abs( x - targetHex.x ) < moveSpeed && abs( y - targetHex.y ) < moveSpeed ) {
        speed = 0;
        x = targetHex.x;
        y = targetHex.y;
        depth = -y;
        
        fn_animate = NOP;        
        script_execute( fn_afterMove, lastHex );
    }
    else {
        direction = point_direction( lastHex.x, lastHex.y, targetHex.x, targetHex.y );
        speed = moveSpeed;
        script_execute( fn_duringMove );    
    }
}
