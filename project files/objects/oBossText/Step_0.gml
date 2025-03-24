frameCounter ++;

if frameCounter >= 0 && frameCounter < 20
{
	text = "Avoid the obstacles\nGood luck\n\nSong: Thermodynamix - Dj Nate";
}
if frameCounter >= 20 && frameCounter < 40
{
	text = "";
}
if frameCounter >= 40 && frameCounter < 60
{
	text = "Avoid the obstacles\nGood luck\n\nSong: Thermodynamix - Dj Nate";
}
if frameCounter >= 60 && frameCounter < 80
{
	text = "";
}
if frameCounter >= 80 && frameCounter < 100
{
	text = "Avoid the obstacles\nGood luck\n\nSong: Thermodynamix - Dj Nate";
}
if frameCounter >= 100 && frameCounter < 120
{
	text = "";
}
if frameCounter >= 120 && frameCounter < 140
{
	text = "Avoid the obstacles\nGood luck\n\nSong: Thermodynamix - Dj Nate";
}
if frameCounter >= 140 && frameCounter < 160
{
	text = "";
}
if frameCounter >= 160 && frameCounter < 180
{
	text = "Avoid the obstacles\nGood luck\n\nSong: Thermodynamix - Dj Nate";
}
if frameCounter >= 180 && frameCounter < 200
{
	text = "";
}

switch (frameCounter)
{	//1st atack
	case 120:
		instance_create_depth(0, 0, -100, oBossTelegraph1);
		instance_create_depth(0, 0, -100, oBossTelegraph2);
		break;
	case 180:
		instance_create_depth(0, 0, -100, oBossAttack1);
		instance_create_depth(0, 0, -100, oBossAttack2);
		break;
		
	//2nd attack
	case 225:
		instance_create_depth(0, 0, -100, oBossTelegraph3);
		break;
	case 255:
		instance_create_depth(0, 0, -100, oBossTelegraph4);
		break;
	case 285:
		instance_create_depth(0, 0, -100, oBossAttack3);
		break;
	case 315:
		instance_create_depth(0, 0, -100, oBossAttack4);
		break;
	
	//3rd attack
	case 335:
		instance_create_depth(0, 0, -100, oBossTelegraph5);
		break;
	case 395:
		instance_create_depth(640, 360, -100, oBossAttack5);
		instance_create_depth(640, 360, -100, oBossTelegraph6);
		instance_create_depth(640, 360, -100, oBossAttack6);
		break;
		
	//4th attack
	case 900:
		instance_create_depth(0, 0, -100, oBossTelegraph7);
		instance_create_depth(0, 0, -100, oBossTelegraph8);
		break;
	case 960:
		instance_create_depth(0, 0, -100, oBossAttack7);
		instance_create_depth(0, 0, -100, oBossAttack8);
		break;
		
	//5th attack
	case 1140:
		instance_create_depth(0, 0, -100, oBossTelegraph9);
		break;
	case 1155:
		instance_create_depth(0, 0, -100, oBossTelegraph10);
		break;
	case 1170:
		instance_create_depth(0, 0, -100, oBossTelegraph11);
		break;
	case 1185:
		instance_create_depth(0, 0, -100, oBossTelegraph12);
		break;
	case 1200:
		instance_create_depth(0, 0, -100, oBossAttack9);
		break;
	case 1230:
		instance_create_depth(0, 0, -100, oBossAttack10);
		break;
	case 1260:
		instance_create_depth(0, 0, -100, oBossAttack11);
		break;
	case 1290:
		instance_create_depth(0, 0, -100, oBossAttack12);
		break;
		
	//6th attack
	case 1335:
		instance_create_depth(0, 0, -100, oBossTelegraph13);
		instance_create_depth(0, 0, -100, oBossTelegraph14);
		break;
	case 1365:
		instance_create_depth(0, 0, -100, oBossAttack13);
		instance_create_depth(0, 0, -100, oBossAttack14);
		break;
		
	//7th attack
	case 1590:
		instance_create_depth(0, 0, -100, oBossTelegraph15);
		break;
	case 1602:
		instance_create_depth(0, 0, -100, oBossTelegraph16);
		break;
	case 1616:
		instance_create_depth(0, 0, -100, oBossTelegraph15);
		break;
	case 1628:
		instance_create_depth(0, 0, -100, oBossTelegraph16);
		break;
	case 1640:
		instance_create_depth(0, 0, -100, oBossAttack15);
		break;
	case 1665:
		instance_create_depth(0, 0, -100, oBossAttack16);
		break;
	case 1690:
		instance_create_depth(0, 0, -100, oBossAttack15);
		break;
	case 1715:
		instance_create_depth(0, 0, -100, oBossAttack16);
		break;
		
	//8th attack
	case 1785:
		instance_create_depth(0, 0, -100, oBossTelegraph17);
		break;
	case 1810:
		instance_create_depth(0, 0, -100, oBossTelegraph18);
		break;
	case 1835:
		instance_create_depth(0, 0, -100, oBossAttack17);
		break;
	case 1890:
		instance_create_depth(0, 0, -100, oBossAttack18);
		break;
		
	//9th attack
	case 2000:
		instance_create_depth(640, 360, -100, oBossTelegraph19);
		break;
	case 2035:
		instance_create_depth(640, 360, -100, oBossAttack19part1);
		instance_create_depth(640, 360, -100, oBossAttack19part2);
		break;
	case 2060:
		instance_create_depth(640, 360, -100, oBossAttack19part1);
		instance_create_depth(640, 360, -100, oBossAttack19part2);
		break;
	case 2085:
		instance_create_depth(640, 360, -100, oBossAttack19part1);
		instance_create_depth(640, 360, -100, oBossAttack19part2);
		break;
	case 2110:
		instance_create_depth(640, 360, -100, oBossAttack19part1);
		instance_create_depth(640, 360, -100, oBossAttack19part2);
		break;
	case 2135:
		instance_create_depth(640, 360, -100, oBossAttack19part1);
		instance_create_depth(640, 360, -100, oBossAttack19part2);
		break;
	case 2160:
		instance_create_depth(640, 360, -100, oBossAttack19part1);
		instance_create_depth(640, 360, -100, oBossAttack19part2);
		break;
	case 2185:
		instance_create_depth(640, 360, -100, oBossAttack19part1);
		instance_create_depth(640, 360, -100, oBossAttack19part2);
		break;
		
	//10th attack
	case 2220:
		instance_create_depth(0, 0, -100, oBossTelegraph20);
		break;
	case 2265:
		instance_create_depth(1280, 0, -100, oBossAttack20part1);
		instance_create_depth(-1280, 0, -100, oBossAttack20part2);
		break;
	case 2335:
		instance_create_depth(0, 0, -100, oBossAttack21);
		break;
		
	//attack 11
	case 2475:
		instance_create_depth(0, 0, -100, oBossTelegraph22);
		break;
	case 2525:
		instance_create_depth(0, 0, -100, oBossAttack22);
		break;
	
	//end of fight
	case 2660:
		audio_sound_gain(sndAcheron, 0, 2000);
		break;
	case 2780:
		room_goto(rComplete);
		break;
		
	
	
	
}
