///addActor( actorType, startingHex )
{
    var actorType = argument0;
    var startingHex = argument1;
    
    var actor = instance_create( startingHex.x, startingHex.y, actorType );
    with( actor ) move( startingHex );
    
    return actor;
}
