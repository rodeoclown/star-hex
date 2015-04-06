///buildHexGrid( start_x, start_y, min_q, min_r, max_q, max_r )

// The hex grid will be using Axial co-ordinates described here: http://www.redblobgames.com/grids/hexagons/#coordinates
// To work correctly, grid size must be (a multiple of 4)-1 ), so 31, or 63, etc
{
    var start_x = argument0;
    var start_y = argument1;
    
    var min_q   = argument2;
    var min_r   = argument3;
    var max_q   = argument4;
    var max_r   = argument5;
    
    hexMap = get_named_map( 'hexMap' );
    hexList = get_named_list( 'hexList' );
    
    var i = ds_list_size( hexList );
    
    for( var _q = max_q; _q >= min_q; _q-- ){
        for( var _r = max_r; _r >= min_r; _r-- ){
        
            hash = gridHash( _q, _r );
            if ( is_undefined( hexMap[? hash] ) )
            {
                newHex = instance_create( start_x, start_y, o_hex );
                with( newHex ){              
                    q = _q;
                    r = _r;
                    
                    y = start_y + ( ( sprite_height -1 )*r ) + ( q * floor( sprite_height /2 ) );
                    x = start_x + ((((( sprite_width +1 )/4 )*3 )-2 ) *q );
    
                    //show_debug_message( "ADDED HEX: (" + string(q) + ", " + string(r) + ") => (" + string(x) + ", " + string(y)+ ")" );
                }
                
                hexMap[? hash] = newHex;
                hexList[| i] = newHex;
                i++;
            }
        }
    }
    
    show_debug_message( "Hexes: " + string( ds_list_size( hexList ) ) );
    show_debug_message( "Hexes: " + string( ds_map_size( hexMap ) ) );
}
