
if(place_meeting(x,y,obj_player))
{
    image_speed = image_speed_max;
    if(image_index == image_number-1)
    {
        visible = false;
        image_speed = 0;
    }
}
else
{
    image_speed = -image_speed_max;
    if(image_index == 0)
        image_speed = 0;
    visible = true;
}

