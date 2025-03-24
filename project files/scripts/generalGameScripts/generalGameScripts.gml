global.gameOverMessage = "";

//stats
global.Deaths = 0;
global.FurthestQuestion = 0;
global.gameCompletions = 0;
global.bestTimeMinutes = 0;
global.bestTimeSeconds = 0;
global.bestTimeFrames = 0;

global.totalTimeHours = 0;
global.totalTimeMinutes = 0;
global.totalTimeSeconds = 0;

global.bestRankAchieved = "N/A";

//achievement
global.achievement10Deaths = false;
global.achievement100Deaths = false;
global.achievement1Win = false;
global.achievement5Win = false;
global.achievement25Win = false;
global.achievementRankD = false;
global.achievementRankC = false;
global.achievementRankB = false;
global.achievementRankA = false;
global.achievementRankS = false;
global.achievementRankSSS = false;
global.achievementTabbing = false;

function saveStats()
{
	if !file_exists("gameStats.txt")
	{
		var statsStruct = 
			{
			Deaths: 0,
			FurthestQuestion: 0,
			gameCompletions: 0,
			bestTimeMinutes: 0,
			bestTimeSeconds: 0,
			bestTimeFrames: 0,
			totalTimeHours: 0,
			totalTimeMinutes: 0,
			totalTimeSeconds: 0,
			bestRankAchieved: "N/A",
			
			achievement10Deaths: false,
			achievement100Deaths: false,
			achievement1Win: false,
			achievement5Win: false,
			achievement25Win: false,
			achievementRankD: false,
			achievementRankC: false,
			achievementRankB: false,
			achievementRankA: false,
			achievementRankS: false,
			achievementRankSSS: false,
			achievementTabbing: false
		}
	
		var statsJSON = json_stringify(statsStruct);
	
	
		var file = file_text_open_write("gameStats.txt");
	
		file_text_write_string(file, statsJSON);

		file_text_close(file);
	}
	else
	{
		var statsStruct = 
			{
			Deaths: global.Deaths,
			FurthestQuestion: global.FurthestQuestion,
			gameCompletions: global.gameCompletions,
			bestTimeMinutes: global.bestTimeMinutes,
			bestTimeSeconds: global.bestTimeSeconds,
			bestTimeFrames: global.bestTimeFrames,
			
			totalTimeHours: global.totalTimeHours,
			totalTimeMinutes: global.totalTimeMinutes,
			totalTimeSeconds: global.totalTimeSeconds,
			bestRankAchieved: global.bestRankAchieved,
			
			achievement10Deaths: global.achievement10Deaths,
			achievement100Deaths: global.achievement100Deaths,
			achievement1Win: global.achievement1Win,
			achievement5Win: global.achievement5Win,
			achievement25Win: global.achievement25Win,
			achievementRankD: global.achievementRankD,
			achievementRankC: global.achievementRankC,
			achievementRankB: global.achievementRankB,
			achievementRankA: global.achievementRankA,
			achievementRankS: global.achievementRankS,
			achievementRankSSS: global.achievementRankSSS,
			achievementTabbing: global.achievementTabbing
			
		}
	
		var statsJSON = json_stringify(statsStruct);
	
	
		var file = file_text_open_write("gameStats.txt");
	
		file_text_write_string(file, statsJSON);

		file_text_close(file);
	}
}


function loadStats()
{
	if file_exists("gameStats.txt")
	{
		var file = file_text_open_read("gameStats.txt");
		
		var statsJSON = file_text_read_string(file);
		
		var statsStruct = json_parse(statsJSON);
		
		global.Deaths = statsStruct.Deaths;
		global.FurthestQuestion = statsStruct.FurthestQuestion;
		global.gameCompletions = statsStruct.gameCompletions;
		global.bestTimeMinutes = statsStruct.bestTimeMinutes;
		global.bestTimeSeconds = statsStruct.bestTimeSeconds;
		global.bestTimeFrames = statsStruct.bestTimeFrames;
		
		global.totalTimeHours = statsStruct.totalTimeHours;
		global.totalTimeMinutes = statsStruct.totalTimeMinutes;
		global.totalTimeSeconds = statsStruct.totalTimeSeconds;
		global.bestRankAchieved = statsStruct.bestRankAchieved;
		
		global.achievement10Deaths = statsStruct.achievement10Deaths;
		global.achievement100Deaths = statsStruct.achievement100Deaths;
		global.achievement1Win = statsStruct.achievement1Win;
		global.achievement5Win = statsStruct.achievement5Win;
		global.achievement25Win = statsStruct.achievement25Win;
		global.achievementRankD = statsStruct.achievementRankD;
		global.achievementRankC = statsStruct.achievementRankC;
		global.achievementRankB = statsStruct.achievementRankB;
		global.achievementRankA = statsStruct.achievementRankA;
		global.achievementRankS = statsStruct.achievementRankS;
		global.achievementRankSSS = statsStruct.achievementRankSSS;
		global.achievementTabbing = statsStruct.achievementTabbing;
		
		
		file_text_close(file);
	}
}

function initialiseLives()
{
	global.userLives = 5;
}

function checkLives()
{
	if global.userLives <= 0
	{
		gameOver();
	}
	else
	{
		audio_play_sound(sfxWrongAnswer, 0, false);
	}
}

function gameOver()
{
	room_goto(rGameOver);
}

function randomWord()
{
	wordsToChooseFrom = [
	"pumpkin", "skeleton", "halloween", "undead", "vampire", "spider",
	"monster", "haunted", "werewolf", "cauldron", "broomstick", "phantom"
	];
	
	return wordsToChooseFrom[irandom(11)];
}

function randomQuestion()
{
	questionsToChooseFrom = [
	"What is the scariest thing to dress as for Halloween", //q1
	"What job can a CS degree get you", //q2
	"What music does a mummy listen to", //q3
	"What is the root of all evil", //q4
	"Click space", //q5
	"Which is the spookiest", //q7
	"A skeleton makes you spaghetti", //q8
	"Who is your favourite supreme leader", //q9
	"Take ONE", //q12
	"What is love", //q13
	"Odd one out", //q14
	"Which is the worst pet", //q15
	"Who is the best racist", //q17
	"Gambling time" //q19
	];
	
	value = irandom(13);
	
	switch (value)
	{
		case 0: oQuestionDisplay.correctQ23 = "1"; break;
		case 1: oQuestionDisplay.correctQ23 = "2"; break;
		case 2: oQuestionDisplay.correctQ23 = "3"; break;
		case 3: oQuestionDisplay.correctQ23 = "4"; break;
		case 4: oQuestionDisplay.correctQ23 = "5"; break;
		case 5: oQuestionDisplay.correctQ23 = "7"; break;
		case 6: oQuestionDisplay.correctQ23 = "8"; break;
		case 7: oQuestionDisplay.correctQ23 = "9"; break;
		case 8: oQuestionDisplay.correctQ23 = "12"; break;
		case 9: oQuestionDisplay.correctQ23 = "13"; break;
		case 10: oQuestionDisplay.correctQ23 = "14"; break;
		case 11: oQuestionDisplay.correctQ23 = "15"; break;
		case 12: oQuestionDisplay.correctQ23 = "17"; break;
		case 13: oQuestionDisplay.correctQ23 = "19"; break;
	}
	
	return questionsToChooseFrom[value];
	
}

function wordScramble(word)
{
	scrambledWord = "";
	
	for (var i = string_length(word); i > 0; i--)
	{
		pos = irandom_range(1, i)
		scrambledWord += string_char_at(word, pos);
		
		word = string_delete(word, pos, 1);
	}
	
	return scrambledWord;
}