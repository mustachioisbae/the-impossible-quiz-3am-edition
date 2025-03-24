text = "";
xpos = 640;
ypos = 200;

col = c_black;

colFrames = 30;

window_set_cursor(cr_default);

audio_stop_all();
audio_play_sound(sndWinTheme, 0, false);

global.gameCompletions++

globalBestTimeFrames = global.bestTimeMinutes * 3600 + global.bestTimeSeconds * 60 + global.bestTimeFrames;
currentTimeFrames = oGlobalTime.currentMinutes * 3600 + oGlobalTime.currentSeconds * 60 + oGlobalTime.currentFrames;

if currentTimeFrames < globalBestTimeFrames || globalBestTimeFrames == 0
{
	global.bestTimeMinutes = oGlobalTime.currentMinutes;
	global.bestTimeSeconds = oGlobalTime.currentSeconds;
	global.bestTimeFrames = oGlobalTime.currentFrames;
	saveStats();
}

//perfect run and under 1:30 min
if global.userLives == 5 && currentTimeFrames <= 5400
{
	rank = "SSS";
	rankCol = c_red;
}
//either a perfect run under 2:30, or a 1 hit run under 2:00
else if (global.userLives == 5 && currentTimeFrames <= 9000) || global.userLives == 4 && currentTimeFrames <= 7200
{
	rank = "S";
	rankCol = c_red;
}
//1 hit run in under 3:00
else if global.userLives >= 4 && currentTimeFrames <= 10800
{
	rank = "A";
	rankCol = c_green;
}
//at least 3 lives and under 3:30
else if global.userLives >= 3 && currentTimeFrames <= 12600
{
	rank = "B";
	rankCol = c_lime;
}
//at least 2 lives and under 4:30
else if global.userLives >= 2 && currentTimeFrames <= 16200
{
	rank = "C";
	rankCol = c_yellow;
}
else
{
	rank = "D"
	rankCol = c_gray;
}

if rank = "SSS"
{
	offsetX = 10;
}
else
{
	offsetX = 20;
}

switch (rank)
{
	case "SSS": global.bestRankAchieved = "SSS"; global.achievementRankSSS = true;  global.achievementRankS = true; global.achievementRankA = true; global.achievementRankB = true; global.achievementRankC = true; global.achievementRankD = true; break;
	
	case "S": if global.bestRankAchieved != "SSS" {global.bestRankAchieved = "S"; global.achievementRankS = true; global.achievementRankA = true; global.achievementRankB = true; global.achievementRankC = true; global.achievementRankD = true;}; break;
	
	case "A": if global.bestRankAchieved != "SSS" && global.bestRankAchieved != "S" {global.bestRankAchieved = "A"; global.achievementRankA = true; global.achievementRankB = true; global.achievementRankC = true; global.achievementRankD = true;}; break;
	
	case "B": if global.bestRankAchieved != "SSS" && global.bestRankAchieved != "S" && global.bestRankAchieved != "A" {global.bestRankAchieved = "B"; global.achievementRankB = true; global.achievementRankC = true; global.achievementRankD = true;}; break;

	case "C": if global.bestRankAchieved != "SSS" && global.bestRankAchieved != "S" && global.bestRankAchieved != "A" && global.bestRankAchieved != "B" {global.bestRankAchieved = "C"; global.achievementRankC = true; global.achievementRankD = true;}; break;
	
	case "D": if global.bestRankAchieved == "N/A" {global.bestRankAchieved = "D";  global.achievementRankD = true;}; break;

}

if global.gameCompletions >= 1
{
	global.achievement1Win = true;
}
if global.gameCompletions >= 5
{
	global.achievement5Win = true;
}
if global.gameCompletions >= 25
{
	global.achievement25Win = true;
}


saveStats();