qText = "";
xpos = 0;
ypos = 0;

randomize();
correctQ18 = randomWord();

for (var i = 0; i < 10; i++)
{
	scrambledWord = wordScramble(correctQ18);
}

answerQ18 = "";

answerQ23 = "";

correctQ23 = "";

textQ23 = randomQuestion();

framesCounterQ20 = 0;