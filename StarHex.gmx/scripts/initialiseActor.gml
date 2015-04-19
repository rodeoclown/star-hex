///initialiseActor()
{
    hex = undefined;
    targetHex = undefined;
    
    fn_beforeMove = NOP;
    fn_afterMove  = NOP;
    
    fn_makePlan = plan_nothing;
    fn_plannedAction = NOP;
}
