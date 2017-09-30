/*
if((x+global.ORIGINE_CENTREE*global.TILE_W/2)%global.TILE_W == 0) speedh = 0; // le perso bouge jusqu'à ce qu'il arrive pile dans une case
if((y+global.ORIGINE_CENTREE*global.TILE_H/2)%global.TILE_H == 0) speedv = 0;
*/

xprev = x;
yprev = y;

if(id == global.idEntiteSelectionnee) // entrees clavier
{
    if(keyboard_check(vk_up)) speedv = -speedv_max;
    if(keyboard_check(vk_down)) speedv = speedv_max;
    
    if(keyboard_check(vk_left)) speedh = -speedh_max;
    if(keyboard_check(vk_right)) speedh = speedh_max;
    
    
    if(mouse_check_button_released(mb_right))
    {
        path = path_add();
        var mx = mouse_x;
        var my = mouse_y;
        var dx = 0;
        var dy = 0;
        dx = -(mx%global.TILE_W)+global.TILE_W/2;
        dy = -(my%global.TILE_H)+global.TILE_H/2;
        if mp_grid_path(global.room_grid, path, x, y, mx+dx, my+dy, 0)
        {
            path_start(path, path_speed_max, path_action_stop, 1);
        }
    }
}

var move = path_position != 0 and path_position != 1;

// gestion collision
var dir;
if(move)
{
    var path_ecart_pix = global.path_ecart_check/path_get_length(path);
    var xsuiv = path_get_x(path,path_position+path_ecart_pix);
    var ysuiv = path_get_y(path,path_position+path_ecart_pix);
    var objPorte = collision_circle(xsuiv,ysuiv,global.TILE_W/2-2,obj_porte,false,true);
    if(objPorte != noone) // la porte n'est pas ouverte ou au moins pas complètement
    {
        if(objPorte.solid == 1)
        {
            if(objPorte.fermee == 1) // la porte n'est pas entrain de s'ouvrir
            {
                objPorte.active = 1;
            }
            path_speed = 0;
        }
        else
        {
            path_speed = path_speed_max;
        }
    }
    
    var xact = path_get_x(path,path_position);
    var yact = path_get_y(path,path_position);
    var objPorteAct = collision_circle(xact,yact,global.TILE_W/2-2,obj_porte,false,true);
    var xprev = path_get_x(path,path_position-path_ecart_pix);
    var yprev = path_get_y(path,path_position-path_ecart_pix);
    var objPortePrec = collision_circle(xprev,yprev,global.TILE_W/2-2,obj_porte,false,true);
    if(objPortePrec != noone and objPorteAct == noone) // la porte n'est pas fermee ou au moins pas complètement
    {
        if(objPortePrec.solid == 0)
        {
            if(objPortePrec.fermee == 0) // la porte n'est pas entrain de se fermer
            {
                objPortePrec.active = 1;
            }
            path_speed = 0;
        }
        else
        {
            path_speed = path_speed_max;
        }
    }
    
    dir = global.BAS;
    if(xact>xprev) dir = global.DROITE;
    else if (xact<xprev) dir = global.GAUCHE;
    if (yact>yprev) dir = global.BAS;
    else if (yact<yprev) dir = global.HAUT;
    
    /*if(speedh > 0) dir = global.DROITE;
    if(speedh < 0) dir = global.GAUCHE;
    if(speedv > 0) dir = global.BAS;
    if(speedv < 0) dir = global.HAUT;*/
    /*if(hspeed > 0) dir = global.DROITE;
    if(hspeed < 0) dir = global.GAUCHE;
    if(vspeed > 0) dir = global.BAS;
    if(vspeed < 0) dir = global.HAUT;*/
    
    sprite_index = animation_walk[dir];
}
else // est tourne dans la direction où il interragit
{
    dir = global.BAS; // TEMP !
    
    sprite_index = animation_idle[dir];
}

/*
x += speedh;
y += speedv;*/

