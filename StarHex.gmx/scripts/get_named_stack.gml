///get_named_stack( name )
{
    var name = argument0;
    
    if ( named_stack_exists( name ) ) {
        return ds_map_find_value( global.MAP_OF_STACKS, name );
    }
    
    var stack = ds_stack_create();
    ds_map_replace( global.MAP_OF_STACKS, name, stack );
    
    show_debug_message("Created Stack: " + name );
    
    return stack;
}
