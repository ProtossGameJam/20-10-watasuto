/// room_change(room)

if !instance_exists(o_room_changer){
	var i = instance_create(0,0,o_room_changer);
	i.action = argument0;	
}
