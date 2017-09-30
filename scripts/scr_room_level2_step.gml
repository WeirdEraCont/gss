
var dx = 0;
var dy = 0;


/* // METHODE SOURIS AU BORD DE L'ECRAN
var x11 = view_xview[0];
var x12 = view_xview[0]+global.view_move_bord_w;
var x21 = view_xview[0]+view_wview[0]-global.view_move_bord_w;
var x22 = view_xview[0]+view_wview[0];
var y11 = view_yview[0];
var y12 = view_yview[0]+global.view_move_bord_h;
var y21 = view_yview[0]+view_hview[0]-global.view_move_bord_h;
var y22 = view_yview[0]+view_hview[0];

var mx = mouse_x;
var my = mouse_y;

if(x11 < mx and mx < x12) dx = -6;
if(x21 < mx and mx < x22) dx = 6;
if(y11 < my and my < y12) dy = -6;
if(y21 < my and my < y22) dy = 6;
*/

if(keyboard_check(ord("Z"))) dy += -6;
if(keyboard_check(ord("S"))) dy += 6;
if(keyboard_check(ord("Q"))) dx += -6;
if(keyboard_check(ord("D"))) dx += 6;

view_xview[0] += dx;
view_yview[0] += dy;


