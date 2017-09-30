// argument 0 indique le skin du perso

scr_global();

numPlayer = ds_list_size(global.equipe);
ds_list_add(global.equipe,id);

speedv = 0;
speedh = 0;
speedv_max = global.TILE_H/8;
speedh_max = global.TILE_W/8;

switch(argument0) {
case 1:
    animation_idle[3] = 0;
    animation_idle[global.BAS] = spr_player1_idle_bas;
    animation_idle[global.GAUCHE] = spr_player1_idle_gauche;
    animation_idle[global.DROITE] = spr_player1_idle_droite;
    animation_idle[global.HAUT] = spr_player1_idle_haut;
    
    animation_walk[3] = 0;
    animation_walk[global.BAS] = spr_player1_walk_bas;
    animation_walk[global.GAUCHE] = spr_player1_walk_gauche;
    animation_walk[global.DROITE] = spr_player1_walk_droite;
    animation_walk[global.HAUT] = spr_player1_walk_haut;
    
    animation_attack[3] = 0;
    animation_attack[global.BAS] = spr_player1_attack_gauche; //
    animation_attack[global.GAUCHE] = spr_player1_attack_gauche;
    animation_attack[global.DROITE] = spr_player1_attack_droite;
    animation_attack[global.HAUT] = spr_player1_attack_gauche; //
    
    icone_interface = instance_create(-1,-1,obj_interface_player);
    with(icone_interface) { player_id = other.id; }
    break;
default:
    //erreur
    break;
}

image_speed = 0.125;

path = path_add();
path_speed_max = 4;

