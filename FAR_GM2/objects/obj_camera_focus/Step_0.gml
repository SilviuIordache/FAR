if (point_distance(obj_player.x, obj_player.y, mouse_x, mouse_y) < obj_system.maxCameraPanDistance)
    {
        x = (obj_player.x + mouse_x) /2
        y = (obj_player.y + mouse_y) /2
    }
else
    {
        x = ( obj_player.x + (obj_player.x + obj_system.maxCameraPanDistance  * cos(-degtorad(point_direction(obj_player.x , obj_player.y, mouse_x, mouse_y))))) / 2
        y = ( obj_player.y + (obj_player.y + obj_system.maxCameraPanDistance  * sin(-degtorad(point_direction(obj_player.x , obj_player.y, mouse_x, mouse_y))))) / 2
    }

