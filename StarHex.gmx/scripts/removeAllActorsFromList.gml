///removeAllActorsFromList( list )
{
    var list = argument0;
    
    for( var i = ds_list_size( list ) -1; i >= 0; i-- ) {
        actor = list[| i];
        with( actor ) {
            ds_list_delete( list, i );
            hex.actor = undefined;
            instance_destroy();
        }
    }
}
