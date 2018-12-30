if keyboard_check_pressed(vk_space)
{
	_faralong = obj_enemy.faralongin0and1_
	_dist = point_distance(x, y, obj_enemy.x, obj_enemy.y)
	
	_timeenemycompletion = ((1-_faralong)*obj_enemy.lengthofpath_)/obj_enemy.pathspeed_
	
	_wcs = _dist / (12 - obj_enemy.pathspeed_)
	
	if _wcs < _timeenemycompletion
	{
		_possible = true
	}
	else
	{
		_possible = false
	}
	
	if _possible
	{
		_pointafterwcs = (_faralong * obj_enemy.lengthofpath_
		+ _wcs * obj_enemy.pathspeed_)/obj_enemy.lengthofpath_ + 0.1
		
		_pointpathdist = (_pointafterwcs - _faralong) * obj_enemy.lengthofpath_
		_enemystepstoreach = _pointpathdist / obj_enemy.pathspeed_
		
		_xx = path_get_x(path_random, _pointafterwcs)
		_yy = path_get_y(path_random, _pointafterwcs)
		instance_create_layer(_xx, _yy, "Instances", obj_point_check)
		
		_bullettraveldist = point_distance(x, y, _xx, _yy)
		_delay = _enemystepstoreach - _bullettraveldist/12
		alarm[0] = _delay
		//instance_create_layer(x, y, "Instances", obj_bullet)
	}
}