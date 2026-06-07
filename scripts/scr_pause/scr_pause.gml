function scr_pause(){
	if(instance_exists(obj_pause)){
		image_speed = 0;
		return true;
	} else {
		image_speed = 1;
		return false;
	}
}