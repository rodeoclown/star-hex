///initialise()
{
    if ( !global.initialised ) {
        randomize();
        initialiseDataStructures();
        global.initialised = true;
    }
    room_goto( r_hexGrid );
}
