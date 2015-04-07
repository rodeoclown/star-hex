///buildHexGrid( start_x, start_y, start_q, start_r, radius )

// The hex grid will be using Axial co-ordinates described here: http://www.redblobgames.com/grids/hexagons/#coordinates
// To work correctly, grid size must be (a multiple of 4)-1 ), so 31, or 63, etc
{
    var start_x = argument0;
    var start_y = argument1;
    
    var start_q = argument2;
    var start_r = argument3;
    var radius  = argument4;
    
    enum hexDirection {
         rightDown,
         rightUp,
         up,
         leftUp,
         leftDown,
         down        
    }
    
    var centreHex = getHex( start_q, start_r, true );
    initialiseHex( centreHex, start_x, start_y );
    
    var tempHex = centreHex;
    
    for( var ring = 1; ring <= radius; ring++ ){
        tempHex = getNeighbourHex( tempHex, hexDirection.leftDown, true );
    
        for( var dir = 0; dir <= 6; dir++ ){
            for( var i = 0; i < ring; i++ ){
                if ( !tempHex.initialised ){
                    initialiseHex( tempHex, start_x, start_y );
                }
                tempHex = getNeighbourHex( tempHex, dir, true );            
            }
        }
    }
}
