
// mp_potential_step(528, 400, 4, false); // mp_potential

var path;
path = path_add();

var mx = 238;
var my = 242;
var dx = 0;
var dy = 0;
dx = -(mx%global.TILE_W)+global.TILE_W/2;
dy = -(my%global.TILE_H)+global.TILE_H/2;

if mp_grid_path(global.room_grid, path, x, y, 240, 240, 1) //to reach the upper player
{
    path_start(path, 4, path_action_stop, 0);
}

