///getRandomHex( excludeHex )
{
    var excludeHex = argument0;
    
    var randomHex = undefined;
    var hexList = get_named_list( 'hexList' );
    var hexCount = ds_list_size( hexList );
    do {
        randomHex = hexList[| irandom( hexCount -1 )];
    } until(randomHex != excludeHex);
    
    return randomHex;
}
