///playerBeforeMove()
{
    changeState( gameState.playerAnimating );
    audio_play_sound( snd_playerMove, 50, false );
}