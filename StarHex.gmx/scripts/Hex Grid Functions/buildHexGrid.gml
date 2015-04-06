///buildHexGrid( start_x, start_y, min_q, min_r, max_q, max_r )
/*
// The hex grid will be using Axial co-ordinates from here: http://www.redblobgames.com/grids/hexagons/#coordinates
{
    var start_x = argument0;
    var start_y = argument1;
    
    var min_q   = argument2;
    var min_r   = argument3;
    var max_q   = argument4;
    var max_r   = argument5;
    /*
    hexMap = ds_map_create();
    
    for( var q = max_q; q >= min_q; q-- ){
        for( var r = max_r; r >= min_r; r-- ){
            newHex = instance_create( start_x, start_y, o_hex );
            newHex.q = q;
            newHex.r = r;
            
            ds_map_add( hexMap, gridHash( q, r ), newHex );
        }
    }
    
    
    var size = ds_map_size(hexMap) - 1;
    var hex = ds_map_find_first(hexMap);
    for (var i = 0; i < size; i++;)
    {
        show_debug_message( "HEX: (" + hex.q + ", " + hex.r + ")" );
        first = ds_map_find_next(hexMap, hex);      
    }
    
    
    
    
    return 0;
    /
}*/
