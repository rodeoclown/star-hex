///destroy_named_stack( name )
{
    if( !named_stack_exists( argument0 ) ) {
        return 0;
    }

    var stack = ds_map_find_value( global.MAP_OF_STACKS, argument0 );
    ds_stack_destroy( stack );
    ds_map_delete( global.MAP_OF_STACKS, argument0 );
}
