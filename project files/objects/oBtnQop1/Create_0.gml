//note: for Q11, the text display is dynamic so it is set up in the step event

answerIsCorrect = false; //false by default
textCol = c_black;
pressStartedOnButton = false;

//for Q19
correctVal = 5;

switch (room)
{
	case rQ1:
	{
		btnText = "Sexy bunny";
		break;
	}
	case rQ2:
	{
		btnText = "Bartender";
		break;
	}
	case rQ3:
	{
		btnText = "Rap music";
		answerIsCorrect = true;
		break;
	}
	case rQ4:
	{
		btnText = "25.8069758011";
		answerIsCorrect = true;
		break;
	}
	case rQ5:
	{
		btnText = "nuh uh";
		break;
	}
	case rQ7:
	{
		btnText = "Ghosts";
		break;
	}
	case rQ8:
	{
		btnText = "Yuck!";
		break;
	}
	case rQ9:
	{
		btnText = "Kim Jong Un";
		break;
	}
	case rQ10:
	{
		btnText = "22";
		break;
	}
	case rQ11:
	{
		btnText = "";
		break;
	}
	case rQ12:
	{
		btnText = "Leave with candy";
		break;
	}
	case rQ13:
	{
		btnText = "Baby don't hurt me";
		break;
	}
	case rQ14:
	{
		btnText = "Mars";
		break;
	}
	case rQ15:
	{
		btnText = "The teacher's";
		answerIsCorrect = true
		break;
	}
	case rQ16:
	{
		btnText = "Go to Q14";
		break;
	}
	case rQ17:
	{
		btnText = "Donald Trump";
		break;
	}
	case rQ18:
	{
		btnText = "";
		break;
	}
	case rQ19:
	{
		btnText = "";
		break;
	}
	case rQ20:
	{
		btnText = "";
		break;
	}
	case rQ21:
	{
		btnText = "Brunettes";
		break;
	}
	case rQ22:
	{
		btnText = "";
		break;
	}
	case rQ23:
	{
		btnText = "";
		break;
	}
	case rQ24:
	{
		btnText = "W rizz tbh";
		break;
	}
	case rQ25:
	{
		btnText = "";
		break;
	}
}