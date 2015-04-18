///initialise()
{
    if ( !global.initialised ) {
        randomize();
        initialiseDataStructures();
        global.currentState = undefined;
        global.initialised = true;
    }
    room_goto( r_hexGrid );
}
