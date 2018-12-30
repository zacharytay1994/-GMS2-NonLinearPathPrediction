//if instance_exists(obj_enemy)
//{
//	var _faralong = obj_enemy.faralongin0and1_
//var _dist = point_distance(x, y, obj_enemy.x, obj_enemy.y)

//var _timeenemycompletion = ((1-_faralong)*obj_enemy.lengthofpath_)/obj_enemy.pathspeed_

//var _wcs = _dist / (12 - obj_enemy.pathspeed_)

//if _wcs < _timeenemycompletion
//{
//	var _possible = true
//}
//else
//{
//	_possible = false
//}

//if _possible
//{
//	// The point you have decided to fire to, 100% accuracy because of absolute check above
//          var _pointafterwcs = (_faralong * obj_enemy.lengthofpath_
//        + _wcs * obj_enemy.pathspeed_)/obj_enemy.lengthofpath_ + 0.1

//// The distance in pixels the enemy is from reaching that point
//         var _pointpathdist = (_pointafterwcs - _faralong) * obj_enemy.lengthofpath_
//// The distance in steps the enemy is from reaching that point
//          var _enemystepstoreach = _pointpathdist / obj_enemy.pathspeed_


//var _bullettraveldist = point_distance(x, y, _xx, _yy) // SHIFT THESE TWO UP
//        var _delay = _enemystepstoreach - _bullettraveldist/12

//    var additionaldist = _delay * obj_enemy.pathspeed_ / obj_enemy.lengthofpath_ // ADD THESE TWO LINES IN
//    _pointafterwcs -= additionaldist

//        _xx = path_get_x(path_random, _pointafterwcs)
//        _yy = path_get_y(path_random, _pointafterwcs)

 
	
//	//alarm[0] = _delay
//	//instance_create_layer(x, y, "Instances", obj_bullet)
//}

//}
image_angle = direction
s_aim(obj_enemy, 12)