///initialisePlayer() [Call with player]
{   
    event_inherited();
    fn_afterMove = playerAfterMove;
    fn_beforeMove = playerBeforeMove;
    fn_takeDamage = playerTakeDamage;
}
