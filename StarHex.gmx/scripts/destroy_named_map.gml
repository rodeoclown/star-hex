///destroy_named_map( name )
{
    if( !named_map_exists( argument0 ) ) {
        return 0;
    }

    var map = ds_map_find_value( MAP_OF_MAPS, argument0 );
    ds_map_destroy( map );
    ds_map_delete( MAP_OF_MAPS, argument0 );
}
