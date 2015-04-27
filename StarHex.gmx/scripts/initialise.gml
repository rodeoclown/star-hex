///initialise()
{
    if ( !global.initialised ) {
        randomize();
        initialiseDataStructures();
        global.currentState = undefined;
        global.initialised = true;
    }
    global.levelNum = 1;
    room_goto( r_hexGrid );
}
