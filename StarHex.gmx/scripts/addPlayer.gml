///addPlayer( q, r )
{
    var q = argument0;
    var r = argument1;
    
    var hex = getHex( q, r, false );
    var player = instance_create( hex.x, hex.y, o_player );
    player.q = q;
    player.r = r;
    player.depth = -player.y;
}
