PC and Rucksack by Iron ChIF begins here.
Use authorial modesty.

Book Cast

Section Constance

Constance is a woman in High Above.  "Constance, a powerful Falcon Clan female, is here, her large black eyes watching you with fierce intensity."  The description of Constance is "[Constance_desc]."  Understand "constance/powerful/falcon/clan/large/black/eyes/yellow/scalp/mottling/wings/throat/underwings/brown/striations/talons" as Constance.

To say Constance_desc:
	if the cloak is worn and the black capsa is open:
		say "Right now, you don't look like anything: you're completely invisible in this ridiculous cloak.  It covers your wings, though, and you can't fly at all.";
	otherwise:
		say "As a member of the Falcon Clan, [your] most striking features are [your] large black eyes, offset with yellow, and slightly recessed under a grey-feathered scalp.  The grey blends from [your] head, mottling along [your] back and the backside of [your] wings, while [your] front, throat, and underwings are feathered white with brown striations[if the player is Constance].  A close encounter with a Raven during [your] previous mission left a few missing contour feathers and some down, but not enough to hinder movement or flight[end if]";

To say your:
	if the player is Constance:
		say "your";
	otherwise:
		say "her";

[As might be predicted, the 'let's go with this for now' decision has been solidified in stone.]

The player is Constance.

[Note: I looked up 'famous falconers' and one of them was King Frederick II.  So I looked up his wife's name, found our there were at least four of them (!), and 'Constance' stood out to me as a good PC name.]

Constance can be wounded.  Constance is not wounded.

The wound is in the Void.  The description is "[if the player is Constance]Your wound isn't incredibly serious, but you don't want to get hit again[otherwise]Constance seems to be lightly wounded, but it's not affecting her movement or agility in the slightest[end if]."  Understand "cut/bleeding/blood/flow/flowing/ache/bleed/lightly/light/" as the wound.  Understand "open wound" as the wound.

Instead of doing anything with the wound:
	if the current action is closing:
		say "Unfortunately, you didn't bring a first-aid kit with you.";
	otherwise if the current action is examining:
		continue the action;
	otherwise:
		say "Messing with the wound is not going to help.  It'll heal on its own eventually.  You hope.";

Slice is a recurring scene.  Slice begins when Constance is wounded.  Slice ends when Constance is not wounded.

When Slice begins:
	move the wound to Constance;
	now the wound is part of Constance;

When Slice ends:
	move the wound to the Void;

[The carrying capacity of Constance is 1.][Not sure about this--it would be strong motivation to turn off rezrov, though!]

A leather rucksack is a player's holdall worn by the Constance.  Understand "sack/backpack/pack/bag" as leather rucksack.  The leather rucksack is loose.

Section capsae and scrolls

A capsa is a kind of openable container.  A capsa is usually closed.  A capsa is usually loose.  The plural of capsa is capsae.

Does the player mean taking a capsa:
	it is likely;

Check taking something:
	if the noun is inside a capsa:
		say "Like all of the Ancient Scrolls, the scroll is inextricably tied to its capsa." instead.

Check removing something from a capsa:
    say "Like all of the Ancient Scrolls, the scroll is inextricably tied to its capsa." instead;

A scroll is a kind of a thing.  A scroll has a text called name.  The name of a scroll is usually "FOO".

Does the player mean doing something to a scroll:  it is likely.

Does the player mean opening or closing a capsa:  it is very likely.

The description of a scroll is "While '[name]' can be clearly read at the top of the scroll, the rest (or at least, the top few lines that you can see) is in some arcane script you [one of](and the people and sages of your village) were[or]are[stopping] unfamiliar with."

[LS DEBUG:  maybe change above to 'while you can see while it's rolled up', though then we'll need to implement 'roll/unroll scroll', so maybe later.]

Section rezrov

A purple capsa of opening is a capsa in the rucksack.  The description is "The purple capsa turned out to contain a scroll of opening[first time], as became evident when every buckle and lock in your village flew open when you opened the capsa to investigate[only].  It is [if the purple capsa of opening is closed]closed, preventing the power of the scroll from affecting the area[otherwise]open, allowing the scroll's power to open and hold open any closed object in the area[end if]."  Understand "rezrov" as the purple capsa of opening.

A scroll of rezrov is a scroll in the purple capsa of opening.  The name is "REZROV".  Understand "opening" as the scroll of rezrov.

Last check opening the purple capsa for the first time:
	say "You take a deep breath.  If you're going to get past any of the doors here, this is the only way.";
	continue the action;

Everything Opens is a recurring scene.  Everything Opens begins when the purple capsa of opening is open.  Everything Opens ends when the purple capsa of opening is closed.

When Everything Opens begins:
	carry out everything rezrovving;

To carry out everything rezrovving:
	say "As you open the purple capsa, an almost-palpable wave of force emanates from it, as the power of the revealed scroll of rezrov is released.[lb]";
	if the lone guard is in the location:
		if the tiny closed padlocks are enclosed by the lone guard:
			say "As the shockwave of magic reaches the guard, the padlock on her uniform closest to you pops open.  Then in succession, all the other padlocks she's wearing pop open as well, in perfect concentric circles in order of how distant they are from the scroll.  As her eyes lock with yours, you realize, somewhat belatedly, that you've given her the ability to triangulate on your position.  Without hesitation, she sings a song of fire and leaps straight at you, before you even have time to let go of the capsa.
			
			The door behind her opens silently as your feathers crisp and she tackles you to the ground.";
			end the story saying "You have been captured.";
			stop the action;
		otherwise if the collection of tiny padlocks are in the location:
			if the sense_of_duty of the lone guard is greater than 3:
				say "The shockwave of magic reaches the guard, and the few padlocks she's been able to re-attach to her uniform spring open and fall off again.  She looks down at them in shock for a second, then gives an angry cry and takes to the sky, calling her fellow squad mates.[lb]";
				now the closeness of Being Chased is 1;
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
			otherwise if the item is the great hall doors:
				if the great hall doors are barred:
					if the player can see the item:
						say "The doors strain to open, but are blocked by something.";
				otherwise:
					now the great hall doors are open;
					say "The double doors of the great hall fly open!";
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
	if the location is Librum Landing Cradle:
		now the closeness of Being Chased is 1;
		if the small collection of tiny padlocks is not in the location or the sense_of_duty of the lone guard is less than 4:
			say "[lb]The guard takes off into the sky, calling her squad mates to join her.";
	if the lone guard encloses the tiny closed padlocks and the Librum Landing Cradle encloses the lone guard:
		move the tiny closed padlocks to the Void;
		move the small collection of tiny padlocks to the Librum Landing Cradle;
	If the reset state of the woodpeckers is 5:
		Now the woodpeckers are activated; [Starts the 'being chased' scene]
		Now the reset state of the woodpeckers is 0;

Check closing something openable during Everything Opens:
	if the noun is not a capsa:
		say "Try as you might, a mystical force prevents you from closing [the noun]." instead.


Check locking something with during Everything Opens:
	say "Try as you might, a mystical force prevents you from locking [the noun]." instead.

Check wearing the rucksack during Everything Opens:
	say "A mystical force prevents you from fastening the buckles on the rucksack, and you are unable to put it on." instead.

Reset Sensors is a recurring scene.  Reset Sensors begins when Everything Opens ends.  Reset Sensors ends when the reset state of the woodpeckers is 5.

Every turn during Reset Sensors:
	if Everything Opens is happening:
		now the reset state of the woodpeckers is 0;
	otherwise:
		increase the reset state of the woodpeckers by 1;
		if the reset state of the woodpeckers is 1:
			say "From everywhere in the Aerie, you hear the woodpeckers drumming in the Pounding dialect: 'Reset Locks!  Repeat!  Reset Locks!";
		if go go go is happening and the reset state of the woodpeckers is less than 5:
			increase the reset state of the woodpeckers by 1;
		
Doors Re-close is a recurring scene.  Doors Re-close begins when Everything Opens ends.  Doors Re-close ends when cannot-close.  

The lone guard has a number called sense_of_duty.  The sense_of_duty of the lone guard is 0;

Every turn during Doors Re-close:
	if Being Chased is not happening:
		if the Librum door is open:
			now the Librum door is closed;
			if the player can see the Librum door:
				say "The guard closes the Librum door.";
		otherwise if the Librum door is unlocked:
			now the Librum door is locked;
			if the player can see the Librum door:
				say "The guard locks the Librum door.";
		otherwise if the small collection of tiny padlocks is in the Librum Landing Cradle:
			if the sense_of_duty of the lone guard is 0 and the player can see the lone guard:
				say "The lone guard looks at the collection of tiny padlocks, then at her uniform, and sighs.";
			otherwise if the sense_of_duty of the lone guard is 1 and the player can see the lone guard:
				say "The lone guard kicks at tiny padlock, and watches it balefully.";
			otherwise if the sense_of_duty of the lone guard is 2 and the player can see the lone guard:
				say "The lone guard looks at the collection of tiny padlocks, then peers into the mist.";
			otherwise if the sense_of_duty of the lone guard is 3 and the player can see the lone guard:
				say "The lone guard sighs, and slowly begins re-attaching the tiny padlocks to loops on her uniform.";
			otherwise if the sense_of_duty of the lone guard is 4 and the player can see the lone guard:
				say "The lone guard gets stuck trying to attach a recalcitrant padlock to her left shoulder strap, but finally gets it attached again.";
			otherwise if the sense_of_duty of the lone guard is 5 and the player can see the lone guard:
				say "The lone guard picks up the last of the tiny padlocks and attaches it to her belt with a definitive 'click'  Sighing, she resumes her post.";
				move the collection of tiny padlocks to the Void;
				move the tiny closed padlocks to the well-fitting uniform;
			increase the sense_of_duty of the lone guard by 1;
		otherwise if the small collection of tiny padlocks is not in the Void:
			if the player can see the lone guard:
				if a random chance of one in four succeeds:
					say "The guard runs a talon over the empty loops on her uniform, and angrily glares into the mist.";
		if the garden door is open:
			now the garden door is closed;
			if the player can see the garden door:
				say "A guard flies down and closes the garden door.";
		otherwise if the garden door is unlocked:
			now the garden door is locked;
			if the player can see the garden door:
				say "The guard locks the garden door and returns to their perch.";
		[LS DEBUG:  revisit this if I implement other guarded doors at some point.]

To decide whether cannot-close:
    if Everything Opens is happening, decide yes;
    decide no.

Check taking during Being Chased:
	if the noun is the rucksack:
		say "You snag the straps of your rucksack as you swoop by.";
		continue the action;
	otherwise if the noun is not following and go go go is not happening and the noun is not enclosed by the player:
		say "You don't have time to grab things!" instead;

Check taking the small collection of tiny padlocks:
	if the small collection is in the location and the lone guard is in the location:
		if sneaking is happening and the hunting cloak is invisible:
			say "Even when you're invisible, if you take something right from under the guard's beak, she's going to notice.  And when you're (shudder) walking, you wouldn't be able to get away." instead;
		otherwise:
			say "You are pretty sneaky, but not sneaky enough to snag a pile of padlocks from underneath the lone guard's beak." instead;
		


Section down

The gold capsa of down is a capsa in the rucksack.  The description is "The gold capsa turned out to contain a scroll of Down[first time], as became evident in the disorienting moment when the sages first opened the capsa, and everyone and everything suddenly fell towards it[only].  It is [if the gold capsa is closed]closed, preventing the power of the scroll from affecting the area[otherwise]open, allowing the scroll's power to pull everything towards itself, instead of towards the ground[end if]."  Understand "rudenj" as the gold capsa.

A scroll of rudenj is a scroll in the gold capsa.  The name is "RUDENJ". Understand "down" as the scroll of rudenj.

lost_gold is an achievement in the Void.  The printed name is "Didn't Need That, Anyway".  The description is "Escape the Raven Guard by sacrificing the capsa of down.";

After dropping the gold capsa during Everything Falls:
	if Being Chased is happening:
		if the great hall doors are barred:
			now hall_open is helped;
		say "You put on a burst of speed to temporarily disappear from view in the mist, then toss the gold capsa one direction and fly off the opposite direction (easy enough to tell:  it's 'straight up') while it drifts into the mist.  It works:  you feel 'down' shift direction as the Raven Guard plow into it, and in the confusion, you disappear further into the fog.
		
		They take it with them all over the Aerie as they search for you, maybe hoping you'll fall into them, but you've practiced enough back in the village to know how to adjust your flight to stay aloft.  [if the great hall doors are barred]You hear some commotion as they search for you near the Great Hall.  You can't make out the words, but it has the cadence of an argument about who's to blame for something.  [end if]Finally, gravity rights itself again--they've given up!  They have the gold capsa, but they've given up chasing you.";
		now the great hall doors are not barred;
		if the purple capsa is open:
			now the great hall doors are open;
			move hall_open to the Trophy Room;
			write out achievements;
		now the gold capsa is closed;
		move the gold capsa to the Void;
		now the most_recent of the Trophy Room is lost_gold;
		escape and recover instead;

Check dropping the rucksack during Everything Falls:
	if Being Chased is happening and the rucksack encloses the gold capsa:
		say "You could ditch the gold capsa and get away by using it as bait, but you'd rather not lose the rucksack in the process." instead;

Check opening the gold capsa in the Librum Itself:
	say "In case of emergencies, most things in the Librum were locked down so as to not fall over if the gold capsa of 'down' was accidentally opened[if black_escape is greater than 0] (though the old storage cabinet's attachments seem to not have held)[end if].  So nothing flies off the shelves to hit you when you open the gold capsa of 'down' in here on purpose.  Which is good!  Less good is that since 'down' now points straight at you, the guard outside was alerted to your presence.  She shows up at the door with a wicked grin.";
	end the story saying "You have been captured." instead;

Check opening the gold capsa in the Upper Great Hall:
	if the wooden bar is in Upper Great Hall:
		say "The large wooden bar that once held the double doors closed flies right at you!  You try to dodge, but there's just not enough room, and it hits you hard enough to knock the wind out of you.  The Raven Guard arrives before you can recover.";
		end the story saying "You have been captured." instead;

['rudenj' from rudenį: 'fall' in Lithuanian.]

Everything Falls is a recurring scene.  Everything Falls begins when the gold capsa is open.  Everything Falls ends when the gold capsa is closed.

Cantedness is a kind of value.  The cantednesses are grounded and upended and offline.

Everything falls has a cantedness.  The cantedness of Everything falls is upended.

Is_now_up is a room that varies.  Is_now_up is the Void.

When Everything Falls begins:
	Now is_now_up is the location;
	if the gold capsa is enclosed by in_forest:
		now Everything falls is grounded;
		say "Immediately, 'down' now means 'towards the gold capsa' instead of 'towards the earth'.  Even being ready for it, it takes you a few flaps to reorient yourself, and you blink away the slight dizziness.  Then you pause.  No sounds from the Aerie.  Apparently, the new 'down' is close enough to the old 'down' that whatever sensors they have up there didn't detect a change.  Good.";
	otherwise if the location is Lower Great Hall:
		say "Immediately, dozens of artifacts and collectibles rain down, flying out of the display nooks all around you.  When the Raven Guard shows up, it's almost more of a rescue than a capture, as they have to dig you out of a huge pile of detritus before finally being able to reach and close the gold capsa.
		
		It's still definitely also a capture, though.";
		end the story saying "You have, indeed, been captured.";
	otherwise:
		say "Immediately, 'down' now means 'towards the gold capsa' instead of 'towards the earth'.  After a brief moment of disorientation, you right yourself, wings pulling you 'up' with just enough force that you remain level.
		
		[i]Note: for convenience, 'down' and 'up' comands will continue to work as they did, referencing ground-relative geography instead of gold capsa-relative geography[r].";
		now Everything Falls is upended;
		now the woodpeckers are activated;

Every turn during Everything Falls:
	if the gold capsa is enclosed by in_forest:
		now Everything falls is grounded;
	otherwise:
		now Everything Falls is upended;
		now the woodpeckers are activated;
	if the gold capsa is enclosed by the player:
		repeat with X running through things in the location:
			if X is following:
				if X is the wooden bar:
					if a random chance of 1 in 4 succeeds:
						if Constance is wounded:
							say "Your luck runs out as you dodge the wrong way, and the wooden bar smacks into your side.  You get the wind knocked out of you, the bar stops blocking the guard from following, and in an instant, they've swarmed you, bearing down on you from all directions.";
							end the story saying "You have been captured.";
							stop the action;
						otherwise:
							now Constance is wounded;
							say "As you dodge to avoid a Raven Guard, the wooden bar catches your side as it spins by, leaving a gash!";
					otherwise:
						say "The wooden bar pinwheels past you as you change direction yet again, then spins back, keeping the Raven Guard at bay.";
				otherwise if a random chance of 1 in 2 succeeds:
					if the gold capsa is enclosed by the rucksack:
						if the rucksack is open:
							move X to the rucksack;
							say "[The X] finally spirals towards the gold capsa and falls into the rucksack!";
						otherwise:
							say "[The X] crashes into the rucksack, bounces off, and arcs back towards you.";
					otherwise:
						say "[The X] bounces off the gold capsa, pinwheeling away before arcing back towards you again.";
				otherwise:
					say "[The X] spins past you as you dodge away from the Raven Guard, and turns in a lazy arc to follow you again.";
			otherwise if X is loose:
				now X is following;
				say "[The X] falls towards you, only missing because you keep dodging to avoid the Raven Guard.";
		if is_now_up is not the location:
			repeat with X running through things in is_now_up:
				if X is following:
					move X to the location;
					say "[The X] follows you from [the is_now_up], spiraling towards the gold capsa of down.";
	if location is Great Hall Landing Cradle and the gold capsa is enclosed by the player:
		if the Great Hall doors are barred:
			now the great hall doors are not barred;
			move the wooden bar to the Upper Great Hall;
			say "As you swoop over the Great Hall, you hear a crash from the other side of the doors";
			if Everything Opens is happening:
				say ", and they fly open";
				now the great hall doors are open;
			say "!";
		Otherwise if the the great hall doors are open and the wooden bar is in Upper Great hall:
			move the wooden bar to the location;
			now the wooden bar is following;
			if the closeness of Being Chased is at least 2:
				now the closeness of Being Chased is 2;
				say "Suddenly the great wooden bar that had been holding the Great Hall doors closed gets dislodged, and flies at you!  You turn and weave, managing to keep it from hitting you.  The Raven Guard fall back as the spinning bar careens through the air!";
			otherwise:
				say "Suddenly the great wooden bar that had been holding the Great Hall doors closed gets dislodged, and flies at you!  You turn and weave, managing to keep it from hitting you.";
	if location is Librum Landing Cradle and the gold capsa is enclosed by the player and the black capsa is enclosed by the Librum itself and the Librum door is open and black_escape is 4:
		say "A black capsa flies through the doors of the Librum, up towards you!";
		move the black capsa to the location;
		now the black capsa is following;
		now the most_recent of the Trophy Room is no_reading;
	Now is_now_up is the location;



When Everything Falls ends:
	Now Everything Falls is offline;
	Now is_now_up is the Void;
	if the woodpeckers are activated:
		say "You twist and right yourself as 'down' returns to its normal state[if the closeness of Being Chased is at least 2].  The Raven Guards struggle to right themselves again, and take a moment to recover[end if].";
		if the closeness of Being Chased is greater than 2:
			now the closeness of Being Chased is 2;
	otherwise:
		say "You steady yourself as 'down' returns to its normal state.";
	repeat with X running through loose things:
		[say "[the X].";]
		now the X is not following;
		if the X is not enclosed by the player and the X is enclosed by the location:
			if the location is High Above:
				say "[The X] plummets down towards the Aerie.";
				move the X to the Great Hall Landing Cradle;
			otherwise:
				say "[The X] falls to the ground, ignored by the Raven Guard.";
		if the X is the wooden bar and X is enclosed by the player:
			say "The wooden bar is ripped from your talons and falls!";
			try dropping the wooden bar;

Last Check taking when the player is Horatio:
	say "You don't need anything.  You just need to find the prodigal." instead;



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

Does the player mean examining the red capsa: it is likely.

Go go go is a recurring scene.  Go go go begins when the red capsa is open.  Go go go ends when the red capsa is closed.

When go go go begins:
	say "You speed up, and so does the wind.  You wriggle, feeling the delightfully fast responses from every muscle in your body.
	
	From everywhere in the Aerie, you hear the drumming of Woodpeckers in the Pounding dialect:  'Target is quick, repeat, target is quick.  Remember you are too.'  Gah; of course they would have practiced flying in a hasted state.  You'll just have to rely on the fact that the increase is proportional.";

When go go go ends:
	say "From everywhere in the Aerie, you hear the drumming of Woodpeckers in the Pounding dialect: 'Target is slow again, repeat, target is slow.'  Just in case they couldn't tell they were slow themselves.  Actually, you do recall some Raven Guards from your childhood that would have needed to be told.  Ah, poor James.";

Section Zork Grand Inquisitor Live Forever

A black capsa is a capsa in the Librum Itself.  "[if black_escape is 0]In the back of the lower level, in a storage cupboard, you find the black capsa, just as Horatio described to you.  You wonder how he managed to find out where it was, but suppose the man has his conversational tricks[otherwise if black_escape is 1]In the back of the lower level, the storage cupboard Horatio told you about has fallen over, but the black capsa is in it, just as he said it would be[otherwise if black_escape is 2]You find the storage cupboard Horatio told you about, but it's fallen over, and the drawers have been pulled out.  You do see the black capsa in a corner of an open drawer[otherwise if black_escape is 3]The storage cupboard Horatio told you about has fallen over and looks like it was sacked--there's random detritus all over the Librum.  Fortunately, you also see the black capsa in a corner of the upper level[otherwise]The black capsa is sitting right at the base of the Librum door.  If the door had been open when you flew by with the gold capsa activated, you're sure it would have just flown out the door[end if]."  The black capsa can be explained.  The black capsa is not explained.  The description is "[igram_description].".  Understand "igram" as the black capsa.

A storage cupboard is scenery in the Librum Itself.  The description is "A disused storage cupboard sits in a corner of the lower level.  It's the one Horatio told you the black capsa would be[if black_escape is greater than 0].  Of course, that was before you flew by with 'down' on, and basically looted the place remotely[end if]."  Understand "drawer/drawers/fallen/over/pulled/open/sacked/detritus" as the storage cupboard.

The black capsa can be named.  The black capsa is not named.

After opening the black capsa:
	now the black capsa is named;
	continue the action;

To say igram_description:
	if Horatio is not remembered:
		if the black capsa is named:
			say "The black capsa contains a scroll of 'igram'.  You don't think that means 'health', but there's a lot you don't know about the capsae in general.  Did you just miss it, last time?  ";
		otherwise:
			say "It's another capsa, from the Librum!  Did you just miss it, last time?  ";
	otherwise:
		say "The black capsa contains a scroll of igram, [if the black capsa is explained]which apparently turns purple things invisible.  The only capsae you've heard of having an ability even vaguely like that, you assumed were jokes.  Now you're not so sure.[otherwise]but Horatio won't tell you what that means.[end if]  ";
	say "It is [if the black capsa is closed]closed, preventing the power of the scroll from affecting the area[otherwise]open, freeing the scroll's power[end if]"

A scroll of igram is a scroll in the black capsa.  The name is "IGRAM".  Understand "make purple things invisible" as the scroll of igram.  Understand "invisible/invisibility" as the scroll of igram.

No More Purple is a recurring scene.  No More Purple begins when the black capsa is open.  No More Purple ends when the black capsa is closed.

When No More Purple begins:
	Now the hunting cloak is invisible;
	if the purple capsa of opening is visible:
		say "For a moment, the purple capsa seems to flicker.  But you look again, and nothing seems to have changed.";
	if the various artifacts are visible and the cloak posts are not in the location:
		Move the cloak posts to the location;
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
	If the location is Nursery_Door:
		say "Horatio reappears, wearing the other cloak.";

back_in_black is an achievement in the Void.  The printed name is "One Bird's Trash".  The description is "Obtain the black capsa of igram.".

Got The Black is a scene.  Got the Black begins when the player encloses the black capsa.  Got the Black ends when the player encloses the cloak.

When Got The Black begins:
	now the most_recent of the Trophy room is back_in_black;


A green capsa is an open capsa on the desk.  The description is "The green capsa of health contains a scroll of taclor.  It is [if the green capsa is closed]closed, preventing the power of the scroll from affecting the area[otherwise]open, allowing the scroll's power to heal to affect the area[end if]."  Understand "taclor/heal" as the green capsa.

A scroll of taclor is a scroll in the green capsa.  The name is "TACLOR".  Understand "heal/health" as the scroll of taclor.


PC and Rucksack ends here.
