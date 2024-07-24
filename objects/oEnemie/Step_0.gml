#region Movimento

key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_atk = mouse_check_button(mb_left);

	var xMov = key_right - key_left;
	var yMov = key_down - key_up;
	
#region Som dos Passos

	if (xMov != 0 || yMov != 0)  {
		
		if(walking_sound = false) {
		audio_play_sound(RASTEJANDO, 0, true, 0.3); 
        walking_sound = true; }
		
		} 
		
	else if (xMov = 0  || yMov = 0 && walking_sound = true) { 
		audio_stop_sound(RASTEJANDO)
		walking_sound = false }
		
#endregion
  
  if (!place_meeting(x + xMov * spd, y, oWall))  {
	x += xMov * spd; 

}

if (!place_meeting(x, y + yMov * spd,  oWall)) {
	y += yMov * spd; 

}

#endregion

#region ANIMAÇÃO

if(ataque = false) {

	 if(xMov > 0) { sprite_index = sWormWalk; image_xscale = 1 }
else if(xMov < 0) { sprite_index = sWormWalk; image_xscale = -1 }
else if(yMov > 0) { sprite_index = sWormWalk;image_xscale = 1 }
else if(yMov < 0) { sprite_index = sWormWalk;image_xscale = 1 }
else if(yMov == 0 && xMov == 0) { sprite_index = sWorm;image_xscale = 1 }

}

#endregion
