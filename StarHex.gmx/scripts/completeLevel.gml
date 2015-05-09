///completeLevel()
{
    with (global.player){
        hex.actor = undefined;
        instance_destroy();
    }
    // Gain 100 points for completing a level
    score += 100;
    global.levelNum++;
    initialiseLevel();
}
