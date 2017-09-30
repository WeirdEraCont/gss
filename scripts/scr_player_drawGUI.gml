
var selec;
if(id == global.idEntiteSelectionnee) selec = true;
else selec = false;

with(icone_interface) {
 x = view_xview[0] + global.WIN_W-110;
 y = view_yview[0] + 10+other.numPlayer*110;
}

if(selec) {
    var haut_boite = 10+numPlayer*110
    var gauche_boite = global.WIN_W-350;
    var haut_logo = haut_boite+25;
    var gauche_logo = gauche_boite+7;
    var haut_jauge = haut_logo+10;
    var gauche_jauge = gauche_logo+40;
    var ecart_jauge = 40;
    var gauche_bouton = gauche_boite+9;
    var haut_bouton = haut_logo+130;
    var ecart_bouton = 50;
    draw_sprite(spr_boite_info_personnage,0,gauche_boite,haut_boite);
    draw_sprite(spr_logo,0,gauche_logo,haut_logo);
    draw_sprite(spr_jauge,0,gauche_jauge,haut_jauge+ecart_jauge*0);
    draw_sprite(spr_jauge,0,gauche_jauge,haut_jauge+ecart_jauge*1);
    draw_sprite(spr_jauge,0,gauche_jauge,haut_jauge+ecart_jauge*2);
    draw_sprite(spr_bouton_stats,0,gauche_bouton,haut_bouton+ecart_bouton*0);
    draw_sprite(spr_bouton_explore,0,gauche_bouton,haut_bouton+ecart_bouton*1);
}
