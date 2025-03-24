frames++
if frames >= 60
{
	secondsLeft--;
	frames = 0;
}

switch (secondsLeft)
{
	case 5: numCol = c_yellow; break;
	case 3: numCol = c_orange; break;
	case 2: numCol = c_red; break;
}

if secondsLeft <= 0
{
	gameOver();
}