pbTimeText = "";

if global.gameCompletions > 0
{
	if global.bestTimeMinutes < 10
	{
		pbTimeText += "0" + string(global.bestTimeMinutes);
	}
	else
	{
		pbTimeText += string(global.bestTimeMinutes);
	}
	
	pbTimeText += ":"
	
	if global.bestTimeSeconds < 10
	{
		pbTimeText += "0" + string(global.bestTimeSeconds);
	}
	else
	{
		pbTimeText += string(global.bestTimeSeconds);
	}
	pbTimeText += "."
	
	var milliseconds = round(1000/60 * global.bestTimeFrames);
	
	if milliseconds < 10
	{
		pbTimeText += "00" + string(milliseconds);
	}
	else if milliseconds < 100
	{
		pbTimeText += "0" + string(milliseconds);
	}
	else
	{
		pbTimeText += string(milliseconds);
	}
	
}
else 
{
	pbTimeText = "n/A";
}


statsText = "Total Deaths: " + string(global.Deaths) + "\n" + 
"Furthest question reached: Q" + string(global.FurthestQuestion) + "\n" +
"Total game completions: " + string(global.gameCompletions) + "\n" +
"Fastest completion time: " + pbTimeText + "\n" +
"Best rank achieved: " + global.bestRankAchieved + "\n\n" + 
"Total play time: ";

totalPlatyTimeText = "";



xpos = 640;
ypos = 150;

col = c_black;

colFrames = 30;

window_set_cursor(cr_default);


