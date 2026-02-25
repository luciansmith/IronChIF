Horatio by Iron ChIF begins here.
Use authorial modesty.

Horatio's story is a scene.  Horatio's story begins when Horatio is remembered.

Forgotten Brig is a room.  "A small but cosy cell, grown with austerity but basic comfort in mind.  Your now-open [cell door] leads west."

The cell door is a door.  It is west of Forgotten Brig and east of Disused Hallway.  It is closed and locked.

cell_contents is scenery in Forgotten Brig.  The printed name is "cell contents".  The description is "A straight roost by a desk for writing, and a scooped roost for sleeping.  Enough space to spread your wings.  A rope wall for excercise.  Not bad."  Understand "cell/contents/austerity/comfort/straight/scooped/roost/space/spread/rope/wall" as cell_contents;

Does the player mean examining cell_contents: it is likely;

Horatio is a man in Forgotten Brig.  "Horatio is here, watching you with quiet aplomb and patience."  The description is "[if the player is Horatio]You're a member of the Buzzard Clan, and fit the stereotype fairly well: bald red head and red talons, hunched shoulders, mottled black and brown feathers.  You've balded down past your neck now, betraying your advanced age.[otherwise]Horatio is an ancient Buzzard Clan sage of sorts, you suppose, given that he was jailed for heresy back in the day[end if]."

Horatio can be remembered.  Horatio is not remembered.

The blue capsa of mist is a capsa carried by Horatio.  The description is "The blue capsa contains a scroll of mist, but its power has long since faded[if the player is Horatio], as the Gods intended[end if]."  Understand "bostrat" as the blue capsa.

A scroll of bostrat is a scroll in the blue capsa.  The name is "BOSTRAT".  Understand "mist/water" as the scroll of bostrat.

The description of the scroll of bostrat is "While '[name]' can be clearly read at the top of the scroll, the rest of the script has faded away."

Disused Hallway is a room.  It is east of Nope.  "The only time you ever saw anyone in this hallway was when Georg came to give you your meals, or clean the cell.  The living walls, still elegantly patterned, even here, self-replenish, and the floor carries away shed bark through the [grate].  It leads west into the living area, and your old [cell door] leads east.";

A grate is a closed openable enterable container in Disused Hallway.  The description is "The grate conveys unneeded materials to the outside, and the forest floor.  'Rezrov' has done its job there, too: it lies open.";

Check going west from Disused Hallway:
	say "Your place is not with the denizens of this Aerie, but with the prodigal daughter, now returned, and the capsa she seeks." instead.

Carry out opening grate:
	say "You grasp the grate with your talons and carefully fold it upward, allowing access.";
	continue the action;

Before taking the grate:
	try opening the grate;

Before attacking the grate:
	try opening the grate;

Check entering the grate:
	say "You flatten yourself to the floor and, hearing your bones creak, roll into the space behind the grate.  Using your minimal throck ability, you whisper to the veins of this place: 'I am extra.  I am not needed.  Take me from this place, which will renew itself through my absence.'
	
	After a few moments, you feel an undulation in the slick rippled floor beneath you, and you are compressed even further, as its peristalsis slides you slowly, and then more rapidly, away from your only home for the last ten years.  Then with a sudden >plop<, you're ejected into space.
	
	You try to spread your wings, but your reaction time is not what it was, and you hit wirey netting before fully stopping yourself.
	
	No matter.";
	Move Horatio to in_forest;
	rule fails;

When Horatio's story begins:
	say "[bstars]";
	wait for any key;
	clear the screen;
	say "You wait, expectantly.";
	wait for any key;
	say "[lb]Silently, your cell door unlocks, then swings open.";
	wait for any key;
	say "[lb]Well above your cell, you sense rezrov, rudenj, and bostrat settle in their movements until they make lazy circles, high above the Aerie. Igram and taclor remain in place, quiet.
	
	It is time.";
	Now the player is Horatio;
	Try looking;

Horatio ends here.
