
// mp_potential_step(528, 400, 4, false); // mp_potential

var path;
path = path_add();
if mp_grid_path(global.room_grid, path, x, y, 500, 400, 1)
{
    path_start(path, 4, path_action_stop, 0);
}

