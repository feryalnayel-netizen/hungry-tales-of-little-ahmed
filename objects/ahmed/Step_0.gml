//get input
getcontrol();

if place_meeting(x,y, KILLBLOCK3){room_goto(gameover3)}
if place_meeting(x,y, killblock2){room_goto(gameover2)}
if place_meeting(x,y, killblock){room_goto(GAMEOVER)}
if place_meeting(x,y, Object11){room_goto(winscreen)}

//x movemnet
	//direciton
	movedir = rightkey - leftkey;
	
	//get my face
	if movedir != 0 {face=movedir}
	
	//get xsped
	xspd = movedir * movespd;
	
	//make it oclide with wall
	var _subpixel = .5;
	if place_meeting( x + xspd, y, walls)
	{
		//touch wall
		var _pixelcheck = _subpixel * sign(xspd);
		while !place_meeting(x + _pixelcheck, y, walls)
		{
			x += _pixelcheck;
		}
		//collsion causes stop
		xspd = 0;
	}
	
	//move
	x+=xspd;
	
//Y movement
	//limit fallign spped
	if yspd > terminal {yspd = terminal;}
	
	//gravity (down)
	if coyotehangtime > 0
	{
		coyotehangtime--;
	}
	else
	{
		yspd += g;
		setonground(false);
	}
	
	//reset jump counter
	if onground
	{
		jumpcount = 0;
	}
	else
	{
		if jumpcount = 0 {jumpcount = 1}
	}
	
	//jump
	if jumpkeybuffer && jumpcount < jmax
	{
		//reset
		jumpkeybuffer = false;
		jumpkeybuffertimer = 0;
		
		jumpcount++;
		
		//change jump gold tiemr
		jumptimer = jumpmaxtime;
	}
	
	if !jumpkey
	{
		jumptimer = 0;
	}
	
	if jumptimer > 0
	{
		yspd = jspd;
		jumptimer--;
	}
	
	//y collide iwht ground
	if place_meeting( x , y + yspd, walls)
	{
		//touch wall
		var _pixelcheck = _subpixel * sign(yspd);
		while !place_meeting(x , y + _pixelcheck, walls)
		{
			y += _pixelcheck;
		}
		
		//collsion causes stop
		yspd = 0;
	}
	
	//check if we tichign ground 
	if yspd >= 0 && place_meeting(x, y+1, walls)
	{
		setonground(true);
	}
	
	
	// move
	y+=yspd;
	
//sprite control
if abs(x) > 0
{
	sprite_index = left;
}
if xspd == 0
{
	sprite_index = idle;
}
if !onground
{
	sprite_index = jump;
}