PC and Rucksack by Iron ChIF begins here.
Use authorial modesty.

Book Cast

Section Constance

Constance is a woman in High Above.  "A powerful Falcon Clan female is here, her large black eyes watching you with fierce intensity."  The description of Constance is "As a member of the Falcon Clan, your most striking features are your large black eyes, offset with yellow, and slightly recessed under a grey-feathered scalp.  The grey blends from your head, mottling along your back and the backside of your wings, while your front, throat, and underwings are feathered white with brown striations.  A close encounter with a Raven during your previous mission left you missing a few contour feathers and some down, but not enough to hinder movement or flight."

[As might be predicted, the 'let's go with this for now' decision has been solidified in stone.]

The player is Constance.

[Note: I looked up 'famous falconers' and one of them was King Frederick II.  So I looked up his wife's name, found our there were at least four of them (!), and 'Constance' stood out to me as a good PC name.]

Constance can be wounded.  Constance is not wounded.

[The carrying capacity of Constance is 1.][Not sure about this--it would be strong motivation to turn off rezrov, though!]

A leather rucksack is a player's holdall worn by the Constance.  

Section capsas and scrolls

A capsa is a kind of openable container.  A capsa is usually closed.  The plural of capsa is capsae.

Check taking something:
	if the noun is inside a capsa:
		say "Like all of the Ancient Scrolls, the scroll is inextricably tied to its capsa, and you can't extricate it." instead.

Check removing something from a capsa:
    say "Like all of the Ancient Scrolls, the scroll is inextricably tied to its capsa, and you can't extricate it." instead;

A scroll is a kind of a thing.  A scroll has a text called name.  The name of a scroll is usually "FOO".

Does the player mean doing something to a scroll:  it is likely.

Does the player mean opening or closing a capsa:  it is very likely.

The description of a scroll is "While '[name]' can be clearly read at the top of the scroll, the rest is in some arcane script you [one of](and the people and sages of your village) were[or]are[stopping] unfamiliar with."

Section rezrov

A purple capsa of opening is a capsa in the rucksack.  The description is "The purple capsa turned out to contain a scroll of opening[first time], as became evident when every buckle and lock in your village flew open when you opened the capsa to investigate[only].  It is [if closed]closed, preventing the power of the scroll from affecting the area[otherwise]open, allowing the scroll's power to open and hold open any closed object in the area[end if]."

A scroll of rezrov is a scroll in the purple capsa.  The name is "REZROV".  Understand "opening" as the scroll of rezrov.

Everything Is Open is a recurring scene.  Everything Is Open begins when the purple capsa is open.  Everything Is Open ends when the purple capsa is closed.

When Everything Is Open begins:
	carry out everything rezrovving;

To carry out everything rezrovving:
	say "As you open the purple capsa, an almost-palpable wave of force emanates from it, as the power of the revealed scroll of rezrov is released.[lb]";
	if the lone guard is in the location and the tiny closed padlocks are enclosed by the lone guard:
		say "As the shockwave of magic reaches the guard, the padlock on her uniform closest to you pops open.  Then in succession, all the other padlocks she's wearing pop open as well, in perfect concentric circles in order of how distant they are from the scroll.  As her eyes lock with yours, you realize, somewhat belatedly, that you've given her the ability to triangulate on your position.  Without hesitation, she leaps straight at you, before you even have time to let go of the capsa.
		
		The door behind her opens silently as she tackles you to the ground.";
		end the story saying "You have been captured.";
		stop;
	repeat with item running through lockable things:
		if the item is locked:
			now the item is unlocked;
			if the player can see the item:
				say "[The item] clicks as it unlocks!";
	repeat with item running through openable things:
		if the item is closed:
			if the item is a capsa and the player can see the item:
				say "The magic of [the item] prevents it from being opened.";
			otherwise:
				now the item is open;
				if the player can see the item:
					say "[The item] flies open!";
	if the rucksack is worn:
		say "The straps and buckles on your rucksack fly open and it falls!";
		now the rucksack is carried by the player;
		try dropping the rucksack;
	If the reset state of the woodpeckers is 6:
		Now the woodpeckers are activated; [Starts the 'being chased' scene]
		Now the reset state of the woodpeckers is 0;

Check closing something during Everything Is Open:
	if the noun is not a capsa:
		say "Try as you might, a mystical force prevents you from closing [the noun]." instead.


Check locking something with during Everything Is Open:
	say "Try as you might, a mystical force prevents you from locking [the noun]." instead.

Check wearing the rucksack during Everything Is Open:
	say "A mystical force prevents you from fastening the buckles on the rucksack, and you are unable to put it on." instead.

Reset Sensors is a scene.  Reset Sensors begins when Everything is Open ends.  Reset Sensors ends when the reset state of the woodpeckers is 6.

Every turn during Reset Sensors:
	if Everything Is Open is happening:
		now the reset state of the woodpeckers is 0;
	otherwise:
		increase the reset state of the woodpeckers by 1;
		if the reset state of the woodpeckers is 1:
			say "From everywhere in the Aerie, you hear the woodpeckers drumming: 'Reset Locks!  Repeat!  Reset Locks!";
		
Doors Re-close is a scene.  Doors Re-close begins when Everything Is Open ends.  Doors Re-close ends when (Librum Door) is locked.

Every turn during Doors Re-close:
	if Being Chased is happening:
		stop;
	if the Librum door is open:
		now the Librum door is closed;
		if the player can see the Librum door:
			say "The guard closes the Librum door.";
	otherwise if the Librum door is unlocked:
		now the Librum door is locked;
		if the player can see the Librum door:
			say "The guard locks the Librum door.";
	[LS DEBUG:  revisit this if I implement other guarded doors at some point.]

Section down

The gold capsa of Down is a capsa in the rucksack.  The description is "The gold capsa turned out to contain a scroll of Down[first time], as became evident in the disorienting moment when the sages first opened the capsa, and everyone and everything suddenly fell towards it[only].  It is [if closed]closed, preventing the power of the scroll from affecting the area[otherwise]open, allowing the scroll's power to pull everything towards itself, instead of towards the ground[end if]."

A scroll of rudenj is a scroll in the gold capsa.  The name is "rudenj".

['rudenj' from rudenį: 'fall' in Lithuanian.]

Everything Falls is a recurring scene.  Everything Falls begins when the gold capsa is open.  Everything Falls ends when the gold capsa is closed.

Cantedness is a kind of value.  The cantednesses are grounded and upended.

Everything falls has a cantedness.  The cantedness of Everything falls is upended.

When Everything Falls begins:
	if the gold capsa is enclosed by in_forest:
		now Everything falls is grounded;
		say "OK, then.";
	otherwise:
		now Everything Falls is upended;
		now the woodpeckers are activated;

Every turn during everything falls:
	if the gold capsa is enclosed by in_forest:
		now Everything falls is grounded;
	otherwise:
		now Everything Falls is upended;
		now the woodpeckers are activated;

When Everything Falls ends:
	if Being Chased is happening:
		say "You twist and right yourself as 'down' returns to its normal state[if the closeness of Being Chased is at least 2].  The Raven Guards struggle to right themselves again, but recover and continue their pursuit[otherwise].  The Raven Guards still know where you are, though[end if].";
	otherwise:
		say "You steady yourself as 'down' returns to its normal state.";

[When Everything Falls begins:
	carry out everything rudenjing;
]
[To carry out everthing rudenjing:
	If the location is in_forest:
]

Section Bar

The red capsa of BAR is a capsa in the rucksack.  The description is "The red capsa turned out to contain a scroll of SOMETHING[first time], as became evident (MAYBE?)[only].  It is [if closed]closed, preventing the power of the scroll from affecting the area[otherwise]open, allowing the scroll's power to DO STUFF[end if]."

A scroll of BAR is a scroll in the red capsa.  The name is "BAR".


PC and Rucksack ends here.
