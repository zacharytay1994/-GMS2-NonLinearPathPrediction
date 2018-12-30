if _wcs > 0
{
	_wcs -= 1
}
else
{
	_wcs = 0
	instance_destroy()
}

if _enemyeta > 0
{
	_enemyeta -= obj_enemy.pathspeed_
}