///addEnemy( enemyType, hex )
{
    var enemyType = argument0;
    var hex = argument1;
    
    var actor = addActor( enemyType, hex );
    var enemyList = get_named_list( "enemyList" );
    ds_list_add( enemyList, actor );
}
