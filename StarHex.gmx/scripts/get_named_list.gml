///get_named_list( name )
{
    var name = argument0;
    
    if ( named_list_exists( name ) ) {
        return ds_map_find_value( global.MAP_OF_LISTS, name );
    }
    
    var list = ds_list_create();
    ds_map_replace( global.MAP_OF_LISTS, name, list );
    
    return list;
}
