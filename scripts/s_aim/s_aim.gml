var target = argument0 // Target to aim at
var weaponSpeed = argument1 // Projectile speed

if instance_exists(target)
{
	// How far in percentage the target is along the path, between 0 - 1
	var _faralong = target.faralongin0and1_
	
	// How far the calling instance is from the target in pixels
	var _dist = point_distance(x, y, target.x, target.y)
	
	// How long in steps will the enemy take to complete the path
	var _timeenemycompletion = ((1-_faralong)*target.lengthofpath_)/target.pathspeed_
	
	// The longest possible time in steps the projectile might take to hit the target
	var _wcs = _dist / (weaponSpeed - target.pathspeed_)
	
	// The check to see if the projectile can hit the target with a 100% chance
	if _wcs < _timeenemycompletion
	{
		var _possible = true // If possible to hit it with a 100% chance
	}
	else
	{
		_possible = false // If not possible to hit it with a 100% chance
	}
		
	if _possible
	{
		// The point you have decided to fire to, 100% accuracy because of absolute check above
		// Point is the percentage along the path between 0 - 1. E.g. 0.4
		var _pointafterwcs = (_faralong * target.lengthofpath_
		       + _wcs * target.pathspeed_)/target.lengthofpath_ + 0.1
		
		// The distance in pixels the enemy is from reaching that point
		var _pointpathdist = (_pointafterwcs - _faralong) * target.lengthofpath_
		
		// The distance in steps the enemy is from reaching that point
		var _enemystepstoreach = _pointpathdist / target.pathspeed_
		
		// The distance in pixels the projectile is from reaching the point
		if variable_instance_exists(id,"_xx") && variable_instance_exists(id,"_yy")
		{
			var _bullettraveldist = point_distance(x, y, _xx, _yy)
		}
		else
		{
			variable_instance_set(id,"_xx",0)
			variable_instance_set(id,"_yy",0)
			var _bullettraveldist = point_distance(x, y, _xx, _yy)
		}		
		
		// The time in steps between the enemy reaching the point and the projectile reaching the point
		var _delay = _enemystepstoreach - _bullettraveldist/12
		
		// Getting the new point after offsetting the time
		_pointafterwcs -= _delay * obj_enemy.pathspeed_ / obj_enemy.lengthofpath_
		
		// Getting coordinates to aim at
		_xx = path_get_x(path_random, _pointafterwcs)
		_yy = path_get_y(path_random, _pointafterwcs)
		
		// Getting angle to aim at
		direction = point_direction(x, y, _xx, _yy)
	}
}
