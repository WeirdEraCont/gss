#define instance_xth_number
//instance_xth_number(obj,variable,value,operator)
var _check_;
_check_ = 0
with(argument0) {if variable_local_exists(argument1) or is_real(argument1) if evaluate(argument1,argument2,argument3) _check_ += 1}
return _check_
#define instance_xth_nearest
//instance_xth_nearest(x,y,obj,n,variable,value,operator)
//gives you the nth closest instance of type obj with expression = true to point x,y
//by Andy Johnson
var _temp_,_array_;
_array_ = ds_priority_create() //makes an array

with(argument2)
{
    if variable_local_exists(argument4) or is_real(argument4)
        if evaluate(argument4,argument5,argument6) 
            ds_priority_add(_array_,id,point_distance(x,y,argument0,argument1))
}
//^ adds the instance to the list, sorting the list by distance ^
repeat(max(argument3,1)-1)
{ds_priority_delete_min(_array_)} //deletes the closest ones until n is reached
if ds_priority_empty(_array_) return -1
_temp_ = ds_priority_find_min(_array_)
ds_priority_destroy(_array_)

if instance_exists(_temp_)
return _temp_ //returns the id of the nth-closest instance with var = val
else return -1
#define instance_xth_furthest
//instance_xth_furthest(x,y,obj,n,variable,value)
//gives you the nth furthest instance of type obj with variable = value to point x,y
//by Andy Johnson
var _temp_,_array_;
_array_ = ds_priority_create() //makes an array

with(argument2)
{
    if variable_local_exists(argument4) or is_real(argument4)
        if evaluate(argument4,argument5,argument6)
            ds_priority_add(_array_,id,point_distance(x,y,argument0,argument1))
}
//^ adds the instance to the list, sorting the list by distance ^
repeat(max(argument3,1)-1)
{ds_priority_delete_max(_array_)} //deletes the closest ones until n is reached
if ds_priority_empty(_array_) return -1
_temp_ = ds_priority_find_max(_array_)
ds_priority_destroy(_array_)

if instance_exists(_temp_)
return _temp_ //returns the id of the nth-closest instance with var = val
else return -1
#define instance_nth_nearest
//instance_nth_nearest(x,y,obj,n)

//gives you the nth nearest instance of type obj to point x,y

var _temp_,_array_;


_array_ = ds_priority_create()
with(argument2) 
{
	ds_priority_add(_array_,id,point_distance(x,y,argument0,argument1))
}


repeat(argument3-1)

{ds_priority_delete_min(_array_)}
if ds_priority_empty(_array_) return -1
_temp_ = ds_priority_find_min(_array_)

ds_priority_destroy(_array_)

return _temp_
#define instance_nth_furthest
//instance_nth_furthest(x,y,obj,n)

//gives you the nth furthest instance of type obj to point x,y

var _temp_,_array_;


_array_ = ds_priority_create()
with(argument2) 
{
	ds_priority_add(_array_,id,point_distance(x,y,argument0,argument1))
}


repeat(argument3-1)

{ds_priority_delete_max(_array_)}
if ds_priority_empty(_array_) return -1
_temp_ = ds_priority_find_max(_array_)

ds_priority_destroy(_array_)

return _temp_
#define evaluate
//evaluate(variable,value,operator)
if is_string(argument0)
{
    switch(string(argument2))
    {
        case "0":
        {
            if variable_local_get(argument0) = argument1 return 1 break
        }
        case "=":
        {
            if variable_local_get(argument0) = argument1 return 1 break
        }
        case ">":
        {
            if variable_local_get(argument0) > argument1 return 1 break
        }
        case "<":
        {
            if variable_local_get(argument0) < argument1 return 1 break
        }
        case "!=":
        {
            if variable_local_get(argument0) != argument1 return 1 break
        }
        case "<=":
        {
            if variable_local_get(argument0) <= argument1 return 1 break
        }
        case ">=":
        {
            if variable_local_get(argument0) >= argument1 return 1 break
        } 
    }
    return 0
}
else
{
    if !script_exists(argument0) return 0
    var val;
    val = script_execute(argument0)
    switch(string(argument2))
    {
        case "0":
        {
            if val = argument1 return 1 break
        }
        case "=":
        {
            if val = argument1 return 1 break
        }
        case ">":
        {
            if val > argument1 return 1 break
        }
        case "<":
        {
            if val < argument1 return 1 break
        }
        case "!=":
        {
            if val != argument1 return 1 break
        }
        case "<=":
        {
            if val <= argument1 return 1 break
        }
        case ">=":
        {
            if val >= argument1 return 1 break
        }
    }
    return 0
}
