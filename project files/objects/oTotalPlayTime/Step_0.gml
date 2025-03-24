frames++;

if frames >= 60
{
	frames = 0;
	currentTotalSeconds++;
	
	global.totalTimeHours = currentTotalHours;
	global.totalTimeMinutes = currentTotalMinutes;
	global.totalTimeSeconds = currentTotalSeconds;
	
	saveStats();
}

if currentTotalSeconds >= 60
{
	currentTotalSeconds = 0;
	currentTotalMinutes++;
}

if currentTotalMinutes >= 60
{
	currentTotalMinutes = 0;
	currentTotalHours++;
}



if currentTotalSeconds < 10
{
	secondsText = "0" + string(currentTotalSeconds);
}
else
{
	secondsText = string(currentTotalSeconds);
}

if currentTotalMinutes < 10
{
	minutesText = "0" + string(currentTotalMinutes);
}
else
{
	minutesText = string(currentTotalMinutes);
}

if currentTotalHours < 10
{
	hoursText = "0" + string(currentTotalHours);
}
else
{
	hoursText = string(currentTotalHours);
}

timeText = hoursText + ":" + minutesText + ":" + secondsText;


//if window size changes

if browser_width != bw || browser_height != bh
{
	bw = browser_width;
	bh = browser_height;
	window_set_size(bw, bh);
	window_center();
}






