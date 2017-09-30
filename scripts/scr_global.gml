// appele actuellement dans scr_player_create, dans menu à l'avenir
global.WIN_W = 1280;
global.WIN_H = 720;

global.idEntiteSelectionnee = 0;

global.TILE_H = 32;
global.TILE_W = 32;

global.BAS = 0;
global.GAUCHE = 1;
global.HAUT = 2;
global.DROITE = 3;


global.PIECE_SOIN = 0;
global.PIECE_TIR = 1;
global.PIECE_CARBURANT = 2;
global.PIECE_NOURRITURE = 3;
global.PIECE_AMMO = 4;
global.PIECE_REPOS = 5;


global.ORIGINE_CENTREE = 0; // 1 si origine des entites en (TILE_W/2;TILE_H/2), en 0;0 sinon

// mp_potential_settings(90, 90, 6, true); // mp_potential

global.path_ecart_check = 10;
global.path_centre16 = 1; // vrai si les objets sont placés avec offset 16 ie les centres sont sur pix multibles de 32


// UTILISE ??
global.view_move_bord_w = 50;
global.view_move_bord_h = 50;

