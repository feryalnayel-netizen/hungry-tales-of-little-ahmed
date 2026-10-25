function controlsetup()
{
	buffertime = 5;
	
	jumpkeybuffer = 0;
	jumpkeybuffertimer = 0;
}


function getcontrol()
{
	//DIRECTION KEYS
	rightkey = keyboard_check(ord("D")) + keyboard_check(vk_right);
		rightkey = clamp(rightkey, 0, 1);
	leftkey = keyboard_check(ord("A")) + keyboard_check(vk_left);
		leftkey = clamp(leftkey, 0, 1);
	
	//action inputs id ont wnna party rightn nowow
	
	jumppress = keyboard_check_pressed(vk_space);
		jumppress = clamp(jumppress, 0, 1);
	jumpkey = keyboard_check(vk_space);
		jumpkey = clamp(jumpkey, 0, 1);
		
	//jump key buffeirng
	
	if jumppress
	{
		jumpkeybuffertimer = buffertime;
	}
	if jumpkeybuffertimer > 0
	{
		jumpkeybuffer = 1;
		jumpkeybuffertimer--;
		
	}
	else 
	{
		jumpkeybuffer = 0;
	}
}