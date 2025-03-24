textCol = c_black;


if room = rQ11
{
	if oQuestionNumber.frameCounter >= 90 && oQuestionNumber.frameCounter < 120 && btnText = ""
	{
		btnText = string(irandom_range(1, 4));
	}
	else if oQuestionNumber.frameCounter < 90 
	{
		btnText = "";
	}
	
	if btnText == "4"
	{
		answerIsCorrect = true;
	}
	else
	{
		answerIsCorrect = false;
	}
}


//hovering
if mouse_x >= bbox_left && mouse_x <= bbox_right && mouse_y <= bbox_bottom && mouse_y >= bbox_top
{
	textCol = c_red;
}

//begins pressing on button
if mouse_check_button_pressed(mb_left)
{
	if mouse_x >= bbox_left && mouse_x <= bbox_right && mouse_y <= bbox_bottom && mouse_y >= bbox_top
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
	if mouse_x >= bbox_left && mouse_x <= bbox_right && mouse_y <= bbox_bottom && mouse_y >= bbox_top
	{
		if answerIsCorrect
		{
			room_goto_next();
			audio_play_sound(sfxCorrectAnswer, 0, false, 1, 0.25);
		}
		else if room == rQ19
		{
			randomNum = irandom(9);
			if randomNum == correctVal
			{
				room_goto_next();
				audio_play_sound(sfxCorrectAnswer, 0, false, 1, 0.25);
			}
		}
		else if room == rQ13
		{
			global.gameOverMessage = "Flattery will not save you here";
			gameOver();
		}
		else
		if room == rQ15
		{
			global.gameOverMessage = "What the fuck man... cats are amazing";
			gameOver();
		}
		else if room == rQ17
		{
			global.gameOverMessage = "You really exposed yourself like that, huh";
			gameOver();
		}
		else if room == rQ20
		{
			if oQuestionDisplay.framesCounterQ20 >= 300
			{
				room_goto_next();
				audio_play_sound(sfxCorrectAnswer, 0, false, 1, 0.25);
			}
			else
			{
				gameOver();
			}
		}
		else
		{
			global.userLives--;
			checkLives();
		}
	}
}

