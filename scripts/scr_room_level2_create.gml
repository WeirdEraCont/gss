scr_global();
scr_room_create();

global.room_grid = mp_grid_create(128, 128, 40, 40, global.TILE_W, global.TILE_H); // mp_grid
mp_grid_add_instances(global.room_grid,obj_obstacle,false); // mp_grid

view_xview[0] = 500;
view_yview[0] = 300;
