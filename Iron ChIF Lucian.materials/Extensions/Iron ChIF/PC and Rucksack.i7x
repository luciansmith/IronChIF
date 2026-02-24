PC and Rucksack by Iron ChIF begins here.
Use authorial modesty.

Book Cast

Section Constance

Constance is a woman in High Above.  "A powerful Falcon Clan female is here, her large black eyes watching you with fierce intensity."  The description of Constance is "{LS DEBUG: At some point, I really have to decide if these bird people have arms or not.  Like, are they feathered humans with six limbs (arms, wings, legs) and bird heads?  Or just more-upright bird-birds?  Let's go with bird-birds, at least for now...}
As a member of the Falcon Clan, your most striking features are your large black eyes, offset with yellow, and slightly recessed under a grey-feathered scalp.  The grey blends from your head, mottling along your back and the backside of your wings, while your front, throat, and underwings are feathered white with brown striations.  A close encounter with a Raven during your previous mission left you missing a few contour feathers and some down, but not enough to hinder movement or flight."  

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

To carry out everything rezrovving:
	say "As you open the purple capsa, an almost-palpable wave of force emanates from it, as the power of the revealed scroll of rezrov is released.";
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

Everything Is Open is a recurring scene.  Everything Is Open begins when the purple capsa is open.  Everything Is Open ends when the purple capsa is closed.

When Everything Is Open begins:
	carry out everything rezrovving;
	now the woodpeckers are activated; [Starts the 'being chased' scene]

Check closing something during Everything Is Open:
	say "Try as you might, a mystical force prevents you from closing [the noun]." instead.

Check locking something with during Everything Is Open:
	say "Try as you might, a mystical force prevents you from locking [the noun]." instead.

Check wearing the rucksack during Everything Is Open:
	say "A mystical force prevents you from fastening the buckles on the rucksack, and you are unable to put it on." instead.

Section foo

The gold capsa of FOO is a capsa in the rucksack.  The description is "The gold capsa turned out to contain a scroll of SOMETHING[first time], as became evident (MAYBE?)[only].  It is [if closed]closed, preventing the power of the scroll from affecting the area[otherwise]open, allowing the scroll's power to DO STUFF[end if]."

A scroll of FOO is a scroll in the gold capsa.  The name is "FOO"

Section Bar

The red capsa of BAR is a capsa in the rucksack.  The description is "The red capsa turned out to contain a scroll of SOMETHING[first time], as became evident (MAYBE?)[only].  It is [if closed]closed, preventing the power of the scroll from affecting the area[otherwise]open, allowing the scroll's power to DO STUFF[end if]."

A scroll of BAR is a scroll in the red capsa.  The name is "BAR"


PC and Rucksack ends here.
