PC and Rucksack by Iron ChIF begins here.
Use authorial modesty.

Book Cast

Section Constance

Constance is a woman in High Above.  "Constance, a powerful Falcon Clan female, is here, her large black eyes watching you with fierce intensity."  The description of Constance is "As a member of the Falcon Clan, [your] most striking features are [your] large black eyes, offset with yellow, and slightly recessed under a grey-feathered scalp.  The grey blends from [your] head, mottling along [your] back and the backside of [your] wings, while [your] front, throat, and underwings are feathered white with brown striations[if the player is Constance].  A close encounter with a Raven during [your] previous mission left a few missing contour feathers and some down, but not enough to hinder movement or flight[end if]."  Understand "constance/powerful/falcon/clan/large/black/eyes/yellow/scalp/mottling/wings/throat/underwings/brown/striations/talons" as Constance.

To say your:
	if the player is Constance:
		say "your";
	otherwise:
		say "her";

[As might be predicted, the 'let's go with this for now' decision has been solidified in stone.]

The player is Constance.

[Note: I looked up 'famous falconers' and one of them was King Frederick II.  So I looked up his wife's name, found our there were at least four of them (!), and 'Constance' stood out to me as a good PC name.]

Constance can be wounded.  Constance is not wounded.

[The carrying capacity of Constance is 1.][Not sure about this--it would be strong motivation to turn off rezrov, though!]

A leather rucksack is a player's holdall worn by the Constance.  Understand "sack" as leather rucksack.

Section capsae and scrolls

A capsa is a kind of openable container.  A capsa is usually closed.  The plural of capsa is capsae.

Check taking something:
	if the noun is inside a capsa:
		say "Like all of the Ancient Scrolls, the scroll is inextricably tied to its capsa, and you can't extricate it." instead.

Check removing something from a capsa:
    say "Like all of the Ancient Scrolls, the scroll is inextricably tied to its capsa, and you can't extricate it." instead;

A scroll is a kind of a thing.  A scroll has a text called name.  The name of a scroll is usually "FOO".

Does the player mean doing something to a scroll:  it is likely.

Does the player mean opening or closing a capsa:  it is very likely.

The description of a scroll is "While '[name]' can be clearly read at the top of the scroll, the rest (or at least, the top few lines that you can see) is in some arcane script you [one of](and the people and sages of your village) were[or]are[stopping] unfamiliar with."

[LS DEBUG:  maybe change above to 'while you can see while it's rolled up', though then we'll need to implement 'roll/unroll scroll', so maybe later.]

Section rezrov

A purple capsa of opening is a capsa in the rucksack.  The description is "The purple capsa turned out to contain a scroll of opening[first time], as became evident when every buckle and lock in your village flew open when you opened the capsa to investigate[only].  It is [if the purple capsa of opening is closed]closed, preventing the power of the scroll from affecting the area[otherwise]open, allowing the scroll's power to open and hold open any closed object in the area[end if]."  Understand "rezrov" as the purple capsa of opening.

A scroll of rezrov is a scroll in the purple capsa of opening.  The name is "REZROV".  Understand "opening" as the scroll of rezrov.

Everything Is Open is a recurring scene.  Everything Is Open begins when the purple capsa of opening is open.  Everything Is Open ends when the purple capsa of opening is closed.

When Everything Is Open begins:
	carry out everything rezrovving;

To carry out everything rezrovving:
	say "As you open the purple capsa, an almost-palpable wave of force emanates from it, as the power of the revealed scroll of rezrov is released.[lb]";
	if the lone guard is in the location and the tiny closed padlocks are enclosed by the lone guard:
		say "As the shockwave of magic reaches the guard, the padlock on her uniform closest to you pops open.  Then in succession, all the other padlocks she's wearing pop open as well, in perfect concentric circles in order of how distant they are from the scroll.  As her eyes lock with yours, you realize, somewhat belatedly, that you've given her the ability to triangulate on your position.  Without hesitation, she breathes fire and leaps straight at you, before you even have time to let go of the capsa.
		
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
			if the item is a capsa:
				if the player can see the item:
					say "The magic of [the item] prevents it from being opened.";
			otherwise:
				now the item is open;
				if the player can see the item:
					say "[The item] flies open!";
	if the rucksack is worn:
		say "The straps and buckles on your rucksack fly open and it falls!";
		now the rucksack is carried by the player;
		if Everything Falls is happening and the gold capsa is enclosed by the location:
			say "Fortunately, it hovers in midair due to the scroll of down, so you're able to immediately grab it again.";
		otherwise:
			try dropping the rucksack;
	If the reset state of the woodpeckers is 5:
		Now the woodpeckers are activated; [Starts the 'being chased' scene]
		Now the reset state of the woodpeckers is 0;

Check closing something openable during Everything Is Open:
	if the noun is not a capsa:
		say "Try as you might, a mystical force prevents you from closing [the noun]." instead.


Check locking something with during Everything Is Open:
	say "Try as you might, a mystical force prevents you from locking [the noun]." instead.

Check wearing the rucksack during Everything Is Open:
	say "A mystical force prevents you from fastening the buckles on the rucksack, and you are unable to put it on." instead.

Reset Sensors is a recurring scene.  Reset Sensors begins when Everything is Open ends.  Reset Sensors ends when the reset state of the woodpeckers is 5.

Every turn during Reset Sensors:
	if Everything Is Open is happening:
		now the reset state of the woodpeckers is 0;
	otherwise:
		increase the reset state of the woodpeckers by 1;
		if the reset state of the woodpeckers is 1:
			say "From everywhere in the Aerie, you hear the woodpeckers drumming in the Pounding dialect: 'Reset Locks!  Repeat!  Reset Locks!";
		if go go go is happening and the reset state of the woodpeckers is less than 5:
			increase the reset state of the woodpeckers by 1;
		
Doors Re-close is a recurring scene.  Doors Re-close begins when Everything Is Open ends.  Doors Re-close ends when (Librum Door) is locked.

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

The gold capsa of down is a capsa in the rucksack.  The description is "The gold capsa turned out to contain a scroll of Down[first time], as became evident in the disorienting moment when the sages first opened the capsa, and everyone and everything suddenly fell towards it[only].  It is [if the gold capsa is closed]closed, preventing the power of the scroll from affecting the area[otherwise]open, allowing the scroll's power to pull everything towards itself, instead of towards the ground[end if]."  Understand "rudenj" as the gold capsa.

A scroll of rudenj is a scroll in the gold capsa.  The name is "RUDENJ". Understand "down" as the scroll of rudenj.

Check dropping the gold capsa during Everything Falls:
	if Being Chased is happening:
		say "You could ditch the capsa and get away by using it as bait, but that would be just as bad as them catching you directly.  You need the power of this capsa to get the scroll of Health." instead;

Check dropping the rucksack during Everything Falls:
	if Being Chased is happening and the rucksack encloses the gold capsa:
		say "You could ditch the gold capsa and get away by using it as bait, but that would be just as bad as them catching you directly.  You need the power of this capsa to get the scroll of Health." instead;

['rudenj' from rudenį: 'fall' in Lithuanian.]

Everything Falls is a recurring scene.  Everything Falls begins when the gold capsa is open.  Everything Falls ends when the gold capsa is closed.

Cantedness is a kind of value.  The cantednesses are grounded and upended.

Everything falls has a cantedness.  The cantedness of Everything falls is upended.

When Everything Falls begins:
	if the gold capsa is enclosed by in_forest:
		now Everything falls is grounded;
		say "Immediately, 'down' now means 'towards the gold capsa' instead of 'towards the earth'.  Even being ready for it, it takes you a few flaps to reorient yourself, and you blink away the slight dizziness.  Then you pause.  No sounds from the Aerie.  Apparently, the new 'down' is close enough to the old 'down' that whatever sensors they have up there didn't detect a change.  Good.";
	otherwise:
		say "Immediately, 'down' now means 'towards the gold capsa' instead of 'towards the earth'.  After a brief moment of disorientation, you right yourself, wings pulling you 'up' with just enough force that you remain in one place.
		
		[i]Note: for convenience, 'down' and 'up' comands will continue to work as they did, referencing Earth-relative geography instead of gold capsa-relative geography[r].";
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

Section Hasten

The red capsa of hasten is a capsa in the rucksack.  The description is "The red capsa turned out to contain a scroll of hasten[first time], which you and the sages eventually determined when it became clear that everyone was acting as if they were high on guarana berries[only].  It is [if the red capsa is closed]closed, preventing the power of the scroll from affecting the area[otherwise]open, allowing the scroll's power to make everything happen much faster[end if]."  Understand "haste/quiste" as the red capsa.

A scroll of quiste is a scroll in the red capsa.  The name is "QUISTE".  Understand "haste/hasten" as the scroll of quiste.

[quiste: quick + haste]

Go go go is a recurring scene.  Go go go begins when the red capsa is open.  Go go go ends when the red capsa is closed.

When go go go begins:
	say "You speed up, and so does the wind.  You wriggle, feeling the delightfully fast responses from every muscle in your body.
	
	From everywhere in the Aerie, you hear the drumming of Woodpeckers in the Pounding dialect:  'Target is quick, repeat target is quick.  Remember you are too.'  Fortunately, it doesn't seem like they were able to triangulate on you.  Now you just have to be good at being faster than normal, against others who are also faster than normal, and who have had months to practice being fast.  No problem.";

When go go go ends:
	say "From everywhere in the Aerie, you hear the drumming of Woodpeckers in the Pounding dialect: 'Target is slow again, repeat, target is slow.'  Just in case they couldn't tell they were slow themselves.  Actually, you do recall some Raven Guards from your childhood that would have needed to be told.  Ah, poor James.";

Section Zork Grand Inquisitor Live Forever

A black capsa is a capsa in the Librum Itself.  "In the back of the lower level, in a storage cupboard, you find the black capsa, just as Horatio described to you.  You wonder how he managed to find out where it was, but suppose the man has his conversational tricks."  The black capsa can be explained.  The black capsa is not explained.  The description is "The black capsa contains a scroll of igram, [if the black capsa is explained]which apparently turns purple things invisible.  The only capsae you've heard of having an ability even vaguely like that, you assumed were jokes.  Now you're not so sure.[otherwise]but Horatio won't tell you what that means.[end if]  It is [if the black capsa is closed]closed, preventing the power of the scroll from affecting the area[otherwise]open, allowing the scroll's power to make purple things invisible (sigh)[end if]."  Understand "igram" as the black capsa.

A scroll of igram is a scroll in the black capsa.  The name is "IGRAM".  Understand "make purple things invisible" as the scroll of igram.  Understand "invisible/invisibility" as the scroll of igram.

No More Purple is a scene.  No More Purple begins when the black capsa is open.  No More Purple ends when the black capsa is closed.

When No More Purple begins:
	if the purple capsa of opening is visible:
		say "For a moment, the purple capsa seems to flicker.  But you look again, and nothing seems to have changed.";
	if the various artifacts are visible and the cloak posts are not in the location:
		Move the cloak posts to the location;
		Now the hunting cloak is invisible;
		say "Suddenly, two hunting cloaks in a display of ancient pre-historical artifacts disappear!";
	otherwise if the hunting cloak is on the cloak posts and the cloak posts are in the location:
		say "The hunting cloaks disappear again.";
	otherwise if the hunting cloak is visible:
		say "The hunting cloak disappears again.";

When No More Purple ends:
	Now the hunting cloak is purple;
	if the various artifacts are visible and the cloak posts are not in the location:
		Move the cloak posts to the location;
		say "Suddenly, two hunting cloaks in a display of ancient pre-historical artifacts appear!";
	otherwise if the hunting cloak is on the cloak posts and the cloak posts are in the location:
		say "The hunting cloaks appear again.";
	otherwise if the hunting cloak is visible:
		say "The hunting cloak appears again.";


PC and Rucksack ends here.
