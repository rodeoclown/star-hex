///initialisePlayer() [Call with player]
{   
    event_inherited();
    fn_afterMove = playerAfterMove;
    fn_beforeMove = playerBeforeMove;
    fn_duringMove = playerDuringMove;
    fn_takeDamage = playerTakeDamage;
}
