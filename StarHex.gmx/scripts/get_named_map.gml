///get_named_map( name )
{
    var name = argument0;
    
    if ( named_map_exists( name ) ) {
        return ds_map_find_value( global.MAP_OF_MAPS, name );
    }
    
    var map = ds_map_create();
    ds_map_replace( global.MAP_OF_MAPS, name, map );
    
    show_debug_message("Created Map: " + name );
    
    return map;
}
