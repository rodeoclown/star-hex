///isNeighbourHex( hex, otherHex )
{
    var hex = argument[0];
    var otherHex = argument[1]
    
    var q_diff = hex.q - otherHex.q;
    var r_diff = hex.r - otherHex.r;
    var abs_q_diff = abs( q_diff );
    var abs_r_diff = abs( r_diff );
    
    return ( abs_q_diff < 2 && abs_r_diff < 2 && q_diff != r_diff )
}
