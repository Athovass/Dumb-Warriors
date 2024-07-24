key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

if(key_right) {
x += spd;	}

if(key_left) {
x -= spd;	}

if(key_up) {
y -= spd;	}

if(key_down) {
y += spd;	}