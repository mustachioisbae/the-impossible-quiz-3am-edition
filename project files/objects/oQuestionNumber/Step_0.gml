col = c_red;
objClicked = false;

//hovering
if position_meeting(mouse_x, mouse_y, oQuestionNumber)
{
	hovering = true;
}

//begins pressing on button
if mouse_check_button_pressed(mb_left)
{
	if position_meeting(mouse_x, mouse_y, oQuestionNumber)
	{
		pressStartedOnButton = true;
	}
	else
	{
		pressStartedOnButton = false;
	}
}
else if mouse_check_button_released(mb_left) && pressStartedOnButton
{
	//need to ckeck if mouse still on button after releasing
	if position_meeting(mouse_x, mouse_y, oQuestionNumber)
	{
		objClicked = true;
	}
}

switch room
{
	case rQ1:
		qNum = "1."; 
		global.gameOverMessage = "Failed on the first question??? really???";
		currentQuestion = 1;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;
	case rQ2:
		qNum = "2.";
		global.gameOverMessage = "Yeah no we aint getting jobs";
		currentQuestion = 2;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;
	case rQ3:
		qNum = "3.";
		global.gameOverMessage = "Maybe you should as your mummy";
		currentQuestion = 3;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;	
	case rQ4:
		qNum = "4.";
		global.gameOverMessage = "Ur a bit slow mate";
		currentQuestion = 4;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;	
	case rQ5:
		qNum = "5.";
		global.gameOverMessage = "Hint: press space";
		currentQuestion = 5;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;
	case rQ6:
		qNum = "6."; 
		global.gameOverMessage = "You suck mate"
		
		if !instance_exists(oBtnMazeStart) && !instance_exists(oMaze)
		{
			instance_create_depth(640, 550, -100, oBtnMazeStart);
			instance_create_depth(0, 0, -100, oQuestionDisplay);
		}
		
		currentQuestion = 6;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		
		break;
	
	case rQ7:
		if !instance_exists(oQuestionDisplay)
		{
			instance_create_depth(0, 0, -100, oQuestionDisplay);
		}
		qNum = "7."; 
		global.gameOverMessage = "Clearly you havent done any architecture labs...";
		currentQuestion = 7;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;
		
	case rQ8:
		qNum = "8."; 
		global.gameOverMessage = "The skeleton glares at you as if to call you an utter faliure who has no purpose";
		currentQuestion = 8;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;
	case rQ9:
		qNum = "9."; 
		global.gameOverMessage = "I have a name you twat";
		currentQuestion = 9;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;
		
	case rQ10:
		global.gameOverMessage = "You're a lost cause";
		currentQuestion = 10;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		qNum = "10"; 
		if hovering {col = c_maroon};
		if objClicked {room_goto_next();};
		break;
			
	case rQ11:
		qNum = "11.";
		global.gameOverMessage = "You'll never get past this one";
		currentQuestion = 11;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;
	case rQ12:
		qNum = "12.";
		global.gameOverMessage = "I said take ONE";
		currentQuestion = 12;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;
	case rQ13:
		qNum = "13.";
		global.gameOverMessage = "You did terribly";
		currentQuestion = 13;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;
	case rQ14:
		qNum = "14.";
		global.gameOverMessage = "Didn't know you had a black hole in your brain";
		currentQuestion = 14;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;
	case rQ15:
		qNum = "15."; 
		global.gameOverMessage = "Bet you're a teacher's pet";
		currentQuestion = 15;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;
	case rQ16:
		qNum = "??"; 
		global.gameOverMessage = "Should've paid more attention";
		currentQuestion = 16;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;
	case rQ17:
		qNum = "17.";
		global.gameOverMessage = "HOW did you get that wrong... 3 of them dont even race";
		currentQuestion = 17;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;
		
	case rQ18:
		qNum = "18."; 
		
		if !instance_exists(oTimeDisplay)
		{
			instance_create_depth(0, 0, -100, oTimeDisplay);
		}
		if oTimeDisplay.secondsLeft == 1 && oTimeDisplay.frames <= 59
		{
			gameOver();
		}
		
		
		global.gameOverMessage = "Try going faster";
		currentQuestion = 18;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;
		
	case rQ19:
		qNum = "19."; 
		
		if instance_exists(oTimeDisplay)
		{
			instance_destroy(oTimeDisplay);
		}
		
		currentQuestion = 19;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		
		break;
	case rQ20:
		qNum = "20.";
		global.gameOverMessage = "Impatient little shit...";
		currentQuestion = 20;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;
	case rQ21:
		qNum = "21.";
		global.gameOverMessage = "I think you failed";
		currentQuestion = 21;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;
		
	case rQ22:
	
		if !instance_exists(oBtnMazeStart) && !instance_exists(oMaze)
		{
			instance_create_depth(640, 550, -100, oBtnMazeStart);
			instance_create_depth(0, 0, -100, oQuestionDisplay);
		}
	
		qNum = "22."; 
		global.gameOverMessage = "You weren't fast enough";
		currentQuestion = 22;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;
		
	case rQ23:
		if !instance_exists(oQuestionDisplay)
		{
			instance_create_depth(0, 0, -100, oQuestionDisplay);
		}
		qNum = "23."; 
		global.gameOverMessage = "Pro tip: press tab to skip a queston for free!!";
		currentQuestion = 23;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;
		
	case rQ24:
		qNum = "24."; 
		
		global.gameOverMessage = "You must be desperate to go out with a skeleton...";
		currentQuestion = 24;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;
		
	case rQ25:
		audio_stop_all();
		qNum = "25."; 
		global.gameOverMessage = "Git Gud scrub";
		currentQuestion = 25;
		if currentQuestion > global.FurthestQuestion
		{
			global.FurthestQuestion = currentQuestion;
			saveStats();
		}
		break;
		
}

objClicked = false;
hovering = false;

frameCounter++;
if frameCounter >= 120
{
	frameCounter = 0;
}

//pressing tab is an instant game over
if keyboard_check_pressed(vk_tab)
{
	global.gameOverMessage = "Tabbing is for twats";
	global.achievementTabbing = true;
	gameOver();
}
