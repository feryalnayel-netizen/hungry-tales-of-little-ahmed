//CUSOTM FUCITONS
function setonground(_val = true)
{
	if _val == true
	{
		coyotehangtime = coyotehangframe;
		onground = true;
	}
	else
	{
		onground = false;
		coyotehangtime = 0;
	}
}


//control seyto
controlsetup();

//MOVING
face = 1;
movedir = 0;
movespd = 6;
xspd = 0;
yspd = 0;

//sprite
idlesprite = idle;
runsprite = left;
jumpsprite = jump;
fallsprite = jump;

//JUMPING
g = 0.8;
terminal = 20;
jspd = -7.5;
jmax = 2;
jumpcount = 0;
jumptimer = 0;
jumpmaxtime = 14;
onground = true;

//coyote tme
coyotehangtime = 0;
coyotehangframe = 4;