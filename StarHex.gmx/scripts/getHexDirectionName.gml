///getHexDirectionName( dir ): String
{
    var dir = argument0;
    
    switch ( dir ) {
        case hexDirection.rightDown: return "rightDown";
        case hexDirection.rightUp: return "rightUp";
        case hexDirection.up: return "up";
        case hexDirection.leftUp: return "leftUp";
        case hexDirection.leftDown: return "leftDown";
        case hexDirection.down: return "down";
    }
    return "None";
}
