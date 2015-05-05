///initialiseStars()
{
        global.starfield = part_system_create();
        global.starfieldEmitter = part_emitter_create( global.starfield );
        global.starfieldType = part_type_create();
        
        part_emitter_region( global.starfield, global.starfieldEmitter, 0, room_width, 0, room_height, ps_shape_rectangle, ps_distr_invgaussian );
        
        part_type_shape( global.starfieldType, pt_shape_pixel );
        part_type_size( global.starfieldType, 1, 1, 0, 0 );
        part_type_scale( global.starfieldType, 1, 1 );
        part_type_speed( global.starfieldType, 0, 0, 0, 0 );
        part_type_blend( global.starfieldType, false );
        part_type_colour_mix( global.starfieldType, c_white, c_yellow );
        part_type_life( global.starfieldType, 9999, 99999 );
}
