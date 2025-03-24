
xpos = 1280/2
ypos = 125;

switch(room)
{
	case rQ1:
	{
		qText = "What is the scariest thing to dress as for Halloween";
		ypos = 125;
		break;
	}
	case rQ2:
	{
		qText = "What job can a CS degree get you";
		break;
	}
	case rQ3:
	{
		qText = "What music does a mummy listen to";
		break;
	}
	case rQ4:
	{
		qText = "What is the root of all evil";
		break;
	}
	case rQ5:
	{
		qText = "Click space";
		
		if keyboard_check_pressed(vk_space)
		{
			room_goto_next();
		}
		
		break;
	}
	case rQ6:
	{
		qText = "Scary maze";
		break;
	}
	case rQ7:
	{
		qText = "Which is the spookiest";
		break;
	}
	case rQ8:
	{
		qText = "A skeleton makes you spaghetti";
		break;
	}
	case rQ9:
	{
		qText = "Who is your favourite supreme leader";
		break;
	}
	case rQ10:
	{
		qText = "2 in base 2";
		break;
	}
	case rQ11:
	{
		if oQuestionNumber.frameCounter >= 0 && oQuestionNumber.frameCounter < 30 {qText = "1";};
		if oQuestionNumber.frameCounter >= 30 && oQuestionNumber.frameCounter < 60 {qText = "2";};
		if oQuestionNumber.frameCounter >= 60 && oQuestionNumber.frameCounter < 90 {qText = "3";};
		if oQuestionNumber.frameCounter >= 90 && oQuestionNumber.frameCounter < 120 {qText = "4";};
		
		break;
	}
	case rQ12:
	{
		qText = "Take ONE";
		break;
	}
	case rQ13:
	{
		qText = "What is love";
		break;
	}
	case rQ14:
	{
		qText = "Odd one out";
		break;
	}
	case rQ15:
	{
		qText = "Which is the worst pet";
		break;
	}
	case rQ16:
	{
		qText = "Hope you were paying attention to the question numbers";
		break;
	}
	case rQ17:
	{
		qText = "Who is the best racist";
		break;
	}
	case rQ18:
	{	
		ypos = 200;
		qText = "Unscramble the following word (type on your keyboard)\n\n" + scrambledWord;
		
		if answerQ18 == correctQ18
		{
			room_goto_next();
		}
		
		break;
	}
	case rQ19:
	{
		qText = "Gambling time!!!\n(10% chance to move onto Q20)";
		break;
	}
	case rQ20:
	{
		if framesCounterQ20 >= 300
		{
			qText = "ok you can click one now :)";
		}
		else
		{
			qText = "DO NOT click any options";
		}
		break;
	}
	case rQ21:
	{
		qText = "What is count Dracula's type";
		break;
	}
	case rQ22:
	{
		qText = "impossible maze?????";
		break;
	}
	case rQ23:
	{
		qText = "\"" + textQ23 + "\"\n\nType the number of your answer and press enter";
		break;
	}
	case rQ24:
	{
		qText = "You are in a bar and a skeleton starts hitting on you";
		break;
	}
	case rQ25:
	{
		qText = "I've got a BONE to pick with you...";
		break;
	}
}

// typing the answer for q18
if (room == rQ18)
{
	if keyboard_lastkey != vk_nokey && keyboard_lastkey >= 65 && keyboard_lastkey <= 90
	{
		
		answerQ18 += string_lower(keyboard_lastchar);
			
		keyboard_lastkey = vk_nokey;
		keyboard_lastchar = "";
	}
	if keyboard_check_pressed(vk_backspace) && answerQ18 != ""
	{
		answerQ18 = string_copy(answerQ18, 0, string_length(answerQ18) - 1);
	}
}

if (room == rQ20)
{
	framesCounterQ20++;
}

//typing for q23
if (room == rQ23)
{
	if keyboard_lastkey != vk_nokey && keyboard_lastkey >= 48 && keyboard_lastkey <= 57
	{
		
		answerQ23 += string_lower(keyboard_lastchar);
			
		keyboard_lastkey = vk_nokey;
		keyboard_lastchar = "";
	}
	if keyboard_check_pressed(vk_backspace) && answerQ23 != ""
	{
		answerQ23 = string_copy(answerQ23, 0, string_length(answerQ23) - 1);
	}
	
	if keyboard_check_pressed(vk_enter)
	{
		if answerQ23 == correctQ23
		{
			room_goto_next();
		}
		else
		{
			global.userLives--;
			checkLives();
		}
	}
}