///animateEnemyEndAttack() [Call with enemy]
{

    fn_animate = NOP;
    with( global.player ) script_execute( fn_takeDamage );
}
