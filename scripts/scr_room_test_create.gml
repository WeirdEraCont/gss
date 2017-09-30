scr_global();
scr_room_create();


global.room_grid = mp_grid_create(0,0, 30, 20, 32, 32); // mp_grid
mp_grid_add_instances(global.room_grid,obj_obstacle,false); // mp_grid


