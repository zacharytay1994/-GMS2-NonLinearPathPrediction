for (var i = 0; i < 1; i += 0.1)
{
	instance_create_layer(path_get_x(path_random, i),
	path_get_y(path_random, i), "Instances", obj_point_check)
}