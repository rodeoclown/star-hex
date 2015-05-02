///initialiseActor()
{
    hex = undefined;
    lastHex = undefined;
    targetHex = undefined;
    isBlocking = false;
    
    fn_beforeMove = NOP;
    fn_animate = NOP;
    fn_duringMove = NOP;
    fn_afterMove  = NOP;
    
    fn_makePlan = plan_nothing;
    fn_plannedAction = NOP;
    
    fn_takeDamage = NOP;
}
