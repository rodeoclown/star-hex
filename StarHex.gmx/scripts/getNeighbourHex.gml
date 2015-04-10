///getNeighbourHex( startHex, hexDir, createIfNotExist?=false )
{
    var startHex = argument[0];
    var hexDir = argument[1];
    var createIfNotExist = false;
    if ( argument_count > 2 ){
        createIfNotExist = argument[2];
    }

    var q = startHex.q;
    var r = startHex.r;

    switch hexDir
    {
        case hexDirection.rightDown:    q++;        break;
        case hexDirection.down:         r++;        break;
        case hexDirection.leftUp:       q--;        break;
        case hexDirection.up:           r--;        break;
        case hexDirection.rightUp:      q++; r--;   break;
        case hexDirection.leftDown:     q--; r++;   break;
    }

    return getHex( q, r, createIfNotExist );
}
