///destroy_named_list( name )
{
    if( !named_list_exists( argument0 ) ) {
        return 0;
    }

    var list = ds_map_find_value( global.MAP_OF_LISTS, argument0 );
    ds_list_destroy( list );
    ds_map_delete( global.MAP_OF_LISTS, argument0 );
}
