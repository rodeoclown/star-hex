///generateStars()
{
    part_particles_clear( global.starfield );
    
    part_emitter_burst( global.starfield, global.starfieldEmitter, global.starfieldType, irandom_range( 50, 300 ) );   
}
