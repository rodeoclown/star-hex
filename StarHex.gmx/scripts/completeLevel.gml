///completeLevel()
{
    with (global.player){
        hex.actor = undefined;
        instance_destroy();
    }
    global.levelNum++;
    initialiseLevel();
}
