///removeEnemy( enemyInstance )
{
    var enemyInstance = argument0;

    var enemyList = get_named_list( "enemyList" );
    var i = ds_list_find_index( enemyList, enemyInstance );
    
    with( enemyInstance ) {
        ds_list_delete( enemyList, i );
        hex.actor = undefined;
        instance_destroy();
    }
}
