///initialise()
{
    if ( !global.initialised ) {
        randomize();
        initialiseDataStructures();
        global.currentState = undefined;
        global.initialised = true;
        global.isDebug = false;
        initialiseStars();
    }
    score = 100;
    global.levelNum = 1;
    room_goto( r_hexGrid );
}
