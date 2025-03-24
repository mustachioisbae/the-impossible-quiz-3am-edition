if room != rGameOver && room != rComplete
{
	currentFrames++;
}

currentMilliseconds = round(1000/60 * currentFrames);

if currentFrames >= 60
{
	currentFrames = 0;
	currentSeconds++;
}

if currentSeconds >= 60
{
	currentSeconds = 0;
	currentMinutes++;
}

if currentMilliseconds < 10
{
	millisecondsText = "00" + string(currentMilliseconds)
}
if currentMilliseconds < 100
{
	millisecondsText = "0" + string(currentMilliseconds)
}
else
{
	millisecondsText = string(currentMilliseconds)
}

if currentSeconds < 10
{
	secondsText = "0" + string(currentSeconds);
}
else
{
	secondsText = string(currentSeconds);
}

if currentMinutes < 10
{
	minutesText = "0" + string(currentMinutes);
}
else
{
	minutesText = string(currentMinutes);
}


