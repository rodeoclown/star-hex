///processEnemyTurn()
{
    var enemyList = get_named_list( "enemyList" );
    var enemyPQ = ds_priority_create();
    
    // Have each enemy make a plan
    for ( var i = 0; i < ds_list_size( enemyList ); i++ ) {
        var enemy = enemyList[| i];
        var plan = undefined;
        with (enemy) { plan = script_execute( fn_makePlan ) };
        var distance = getDistanceFromHex( enemy.hex, global.player.hex );
            // enemy plans are prioritised by their planned action, then by distance away (so closer enemies act sooner)
        var priority = plan * 100 * distance;        
        ds_priority_add( enemyPQ, enemy, priority );
    }
    
    
    // Execute the plan
    while ( !ds_priority_empty( enemyPQ ) ) {
        var enemy = ds_priority_delete_max( enemyPQ );
        with ( enemy ) script_execute( fn_plannedAction );
    }
    ds_priority_destroy( enemyPQ );
    
    
    // Wrap up
    if ( ds_list_empty( enemyList ) ){
        changeState( gameState.playerTurn );
    }
    else {
        changeState( gameState.enemyAnimating );
    }
}
