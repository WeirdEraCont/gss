
scr_global(); // ############## pas ici plus tard mais dans menu
speedv = 0;
speedh = 0;
speedv_max = global.TILE_H/8;
speedh_max = global.TILE_W/8;

switch(argument0) {
case 1:
    animation_idle[3] = 0;
    animation_idle[global.BAS] = spr_zombie1_idle_gauche; //
    animation_idle[global.GAUCHE] = spr_zombie1_idle_gauche;
    animation_idle[global.DROITE] = spr_zombie1_idle_droite;
    animation_idle[global.HAUT] = spr_zombie1_idle_gauche; //
    
    animation_walk[3] = 0;
    animation_walk[global.BAS] = spr_zombie1_idle_gauche; //
    animation_walk[global.GAUCHE] = spr_zombie1_idle_gauche; //
    animation_walk[global.DROITE] = spr_zombie1_idle_gauche; //
    animation_walk[global.HAUT] = spr_zombie1_idle_gauche; //
    
    animation_attack[3] = 0;
    animation_attack[global.BAS] = spr_zombie1_attack_gauche; //
    animation_attack[global.GAUCHE] = spr_zombie1_attack_gauche;
    animation_attack[global.DROITE] = spr_zombie1_attack_droite;
    animation_attack[global.HAUT] = spr_zombie1_attack_gauche; //
    break;
default:
    //erreur
    break;
}

image_speed = 0.125;

path = path_add();
path_speed_max = 4;

