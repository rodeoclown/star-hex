///onKeyDown( lastKeyPressed )
{
    var lastKeyPressed = argument[0];
    
    switch( lastKeyPressed ){
        case ord('Q'): moveActorInDirection( global.player, hexDirection.leftUp );
            break;
        case ord('W'): moveActorInDirection( global.player, hexDirection.up );
            break;
        case ord('E'): moveActorInDirection( global.player, hexDirection.rightUp );
            break;
        case ord('A'): moveActorInDirection( global.player, hexDirection.leftDown );
            break;
        case ord('S'): moveActorInDirection( global.player, hexDirection.down );
            break;
        case ord('D'): moveActorInDirection( global.player, hexDirection.rightDown );
            break;
    }
}
