deleteCounter++;
if deleteCounter >= 165
{
	instance_destroy(oBossTelegraph1);
}

if deleteCounter >=0 && deleteCounter < 25
{
	xspd = 50
}
else if deleteCounter >= 25 && deleteCounter < 50
{
	xspd = -50
}
if deleteCounter >= 50 && deleteCounter < 75
{
	xspd = 50
}
else if deleteCounter >= 75 && deleteCounter < 100
{
	xspd = -50
}

if deleteCounter >= 100 && deleteCounter < 110
{
	xspd = 50
}
else if deleteCounter >= 110 && deleteCounter < 120
{
	xspd = -50
}
if deleteCounter >= 120 && deleteCounter < 160
{
	xspd = 50
}

x += xspd;

if place_meeting(x, y, oPlayer)
{
	oPlayer.hit = true;
}