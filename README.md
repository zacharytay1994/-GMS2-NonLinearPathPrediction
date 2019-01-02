# -GMS2-NonLinearPathPrediction
A path point prediction which predicts a point n along a non linear path with O(1) efficiency and 100% accuracy.

Just a short script used to fire a straight projectile to hit a target moving on a random non linear path! The script you will be looking for is s_aim!

**How To Use:**

Assign your **obj_target** any path and Initialize these variables.

In the Create Event **obj_target**:
```
pathspeed_ = 3 // This is the speed you want you target to travel
path_start(path_random, pathspeed_, path_action_stop, true) // path_random is the path ID
lengthofpath_ = path_get_length(path_random)
faralong_ = 0
faralongin0and1_ = 0
```
In the Step Event **obj_target**:
```
faralong_ += pathspeed_
faralongin0and1_ = faralong_ / lengthofpath_
```

Call the script in any object you want to use to aim, for example **obj_turret**.
In the Step Event **obj_turret**:
```
s_aim(target, 12) 
// 12 is the speed of your bullet, it can be anything,
// just make sure your bullet will be travelling at that speed.
// target is your obj_target instance id.
```

When ready to fire, fire a bullet in the same direction as **obj_turret**, at determined speed.
Example of creating a bullet **obj_bullet**:
```
inst = instance_create_layer(obj_turret.x, obj_turret.y, "Instances", obj_bullet)
inst.direction = direction
inst.speed = 12 // Speed 12 according to above example
```

**Pros:**
Fast tracking, guesses with 100% certainty a single point to fire at. Can be called on many objects simultaneously.
**Cons:**
Not "real-time" tracking, does not sequentially check all potential points. Needs at least 2 steps to reacquire new target. 1st step to get estimate, 2nd step to lock on.

**Progress/Demo Playlist:**
https://www.youtube.com/playlist?list=PLbWFLXf_CnsE71YcjEEGqQQ5zf19fyWNl

Check out my blog for more info among other things!
zactzy.weebly.com


