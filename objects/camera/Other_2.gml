if !instance_exists(ahmed) exit;

var _camwidth = camera_get_view_width(view_camera[0])
var _camheight = camera_get_view_height(view_camera[0]);

var _camx = ahmed.x - _camwidth/2
var _camy = ahmed.y - _camheight/2

_camx = clamp(_camx, 0, room_width - _camwidth);
_camy = clamp(_camy, 0, room_height - _camheight);

finalcamx= _camx;
finalcamy= _camy;