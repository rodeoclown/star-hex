///onKeyDown( lastKeyPressed )
{
    var lastKeyPressed = argument[0];
    var allowPlayerInput = ( global.currentState == gameState.playerTurn );
    show_debug_message( "allowPlayerInput: " + string(allowPlayerInput) + " " + string(global.currentState) + " " + string(gameState.playerTurn) )
    
    switch( lastKeyPressed ){
        case ord( 'Q' ): if ( allowPlayerInput ) with( global.player ) moveInDirection( hexDirection.leftUp );
            break;
        case ord( 'W' ): if ( allowPlayerInput ) with( global.player ) moveInDirection( hexDirection.up );
            break;
        case ord( 'E' ): if ( allowPlayerInput ) with( global.player ) moveInDirection( hexDirection.rightUp );
            break;
        case ord( 'A' ): if ( allowPlayerInput ) with( global.player ) moveInDirection( hexDirection.leftDown );
            break;
        case ord( 'S' ): if ( allowPlayerInput ) with( global.player ) moveInDirection( hexDirection.down );
            break;
        case ord( 'D' ): if ( allowPlayerInput ) with( global.player ) moveInDirection( hexDirection.rightDown );
            break;
            
        case ord( 'M' ): global.isDebug = !global.isDebug;
                         show_debug_overlay( global.isDebug );
                         keyboard_clear( ord( 'M' ) );
            break;
        case ord( 'R' ): game_restart();
            break;
        case ( vk_escape ): game_end();
            break;
    }
}
