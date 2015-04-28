///animateEnemies()
{
    var enemyList = get_named_list( "enemyList" );
    
    for ( var i = 0; i < ds_list_size( enemyList ); i++ ) {
        var enemy = enemyList[| i];
        with ( enemy ) script_execute( fn_animate );
    }
}
