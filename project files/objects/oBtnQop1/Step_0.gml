textCol = c_black;



//option text for Q11
if room = rQ11
{
	if oQuestionNumber.frameCounter >= 0 && oQuestionNumber.frameCounter < 30 && btnText = ""
	{
		btnText = string(irandom_range(1, 4));
	}
	else if oQuestionNumber.frameCounter >= 30
	{
		btnText = "";
	}
	
	if btnText == "1"
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
		else if room = rQ12
		{
			if oCandyBowl.clickCounter == 1
			{
				room_goto_next();
				audio_play_sound(sfxCorrectAnswer, 0, false, 1, 0.25);
			}
			else
			{
				gameOver();
			}
		}
		else if room == rQ16
		{
			global.userLives--;
			room_goto(rQ14);
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



