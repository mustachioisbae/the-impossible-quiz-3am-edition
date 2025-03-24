switch (room)
{
	case rQ6:
		sprite_index = sMazeQ6;
		break;
	case rQ22:
		sprite_index = sMazeQ22;
		break;
}
instance_destroy(oQuestionDisplay);
instance_create_depth(0, 0, -100, oMazeExit);