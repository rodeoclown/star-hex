///named_map_destroy( name )
{
    if( !map_exists( argument0 ) ) {
        return 0;
    }

    var map = MAP_OF_MAPS[? argument0];
    ds_map_destroy( map );
    ds_map_delete( MAP_OF_MAPS, argument0 );
}
