Rules and New Actions by Iron ChIF begins here.
Use authorial modesty.

Book 0 Rules

To say i:
	say "[italic type]";
	
To say b:
	say "[bold type]";
	
To say r:
	say "[roman type]";

To say lb:
	say "[line break]";

To say pb:
	say "[line break][line break]";
	
To say nb:
	say "[run paragraph on]";

To say bstars:
	say "[lb]";
	center "*    *    *[pb]";

To say stars:
	center "*    *    *[pb]";



Chapter New Actions

Section Commenting

Commenting is an action out of world applying to one topic.

Report commenting:
	say "Noted.";[: [the topic understood].";]
	stop the action.

Understand "# [text]" as commenting.

To say comment_regex:
	say "<\p*#+=[']>"

After reading a command when the player's command matches the regular expression "^([comment_regex] ?)\S":
	let T be the "[player's command]";
	replace the regular expression "^[comment_regex] ?" in T with "# ";
	[say "(changed to '[T]')";]
	change the text of the player's command to T;

Section credits

Crediting is an action out of world applying to nothing.  Understand "credits" as Crediting.

Carry out Crediting:
	say "This game would not have been possible without the intense energy of @otistdog on the intfiction forums creating the idea of having an 'Iron ChIF' competition, nor without Ryan Veeder agreeing to be the 'Iron ChIF Inform 7' to compete against.
	
	Particular thanks go to my betatesters, Sarah Willson (day 1), Stephen Granade (day 2), Allyson Gray (day 3), and Dan 'inky' Shiovitz (day 4).  Allyson also contributed her testing skills and other suggestions to this release!  Thanks also to my son and brainstorming partner, Ellric Smith.
	
	Thanks also to the official judges for this competition: Chandler Groover, Victor Gijsbers, J. J. McC, Brian Rushton, and N. Cormier, and technical advisor Zed Lopez.  You all have been great, and your commentary has helped to improve this post-competition release.

	The cover art image is courtesy Greg Hume (Greg5030)/CC BY-SA 3.0
	
	Apologies to N. Cormier for letting her cats out backstage.  I forgot to check the spotlights!"

Section about

Abouting is an action out of world applying to nothing.  Understand "about" as abouting.

Carry out abouting:
	say "Thank you for playing 'course correction'!  A quick word about design philosophy.  The game has many obviously-bad endings, but by design they are all avoidable with a single >UNDO.  So, if anything happens that naturally takes more than one turn, it's probably something you'll have to deal with at some point.  There may be bugs that circumvent that design!  So keep multi-undo and/or save files at the ready.  There is also some choice-based branching in the game, containing some alternate endings that similarly can be explored with single >UNDO.
	
	The original version of this game was written in five days for Episode One of Iron ChIF, where I (as the challenger) wrote this game while Ryan Veeder (the 'Iron ChIF Inform 7') wrote his own game ('The Van der Nagel Papyrus') based on the same prompt:  'a scroll that alters the world around it'.  This is the post-comp release, which fixes some bugs, clears up several points of confusion, and generally fills out the game to be more complete.
	
	Extensive discussion and commentary from that episode can be found on the intfiction.org web site, at
	
	https://intfiction.org/t/iron-chif-season-one-episode-1-lpsmith-vs-afterward-using-inform-7/78122

	and
	
	https://intfiction.org/t/iron-chif-season-one-episode-1-audience-commentary/79065/

	The source code can be found at

	https://github.com/luciansmith/IronChIF/[lb]"

Section Summoning mist

A room can be cloudy or clear.  A room is usually cloudy.
A room can be indoors or outdoors.  A room is usually outdoors.  Forgotten Brig is indoors.  Disused Hallway is indoors.  Librum Itself is indoors.  Upper Great Hall is indoors.  Lower Great Hall is indoors.  Palace is indoors.  Nursery_door is indoors.  Nursery_itself is indoors.

The grey mist is a backdrop.  [It is not scenery.  "[describe the grey mist]."]  The description is "[if the location is outdoors]A [mist density] grey mist swirls and surrounds you, covering you like a blanket[otherwise]Even a Bostrat can't make it truly foggy inside[end if]."  Understand "cloud/clouds/gray/fog" as the grey mist.

When play begins:
    move the grey mist backdrop to all cloudy rooms.

The grey mist has a number called thickness.  The thickness of the grey mist is 1.

To say mist density:
	if the thickness of the grey mist is less than 6:
		say "thin";
	otherwise if the thickness of the grey mist is less than 11:
		say "soft";
	otherwise if the thickness of the grey mist is less than 16:
		say "rolling";
	otherwise:
		say "heavy";
	[1-5: thin, 6-10: soft, 11-15: rolling, 16-20: heavy]

Summoning is an action applying to one thing.  Understand "summon [something]" as summoning.

Check summoning something:
	if the noun is not the grey mist and the noun is not the no_mist:
		if the player is Constance:
			say "You're a Bostrat: you can summon mist and clouds, but nothing else." instead;
		otherwise:
			say "You have a very limited ability to summon a wisp of mist, but that's it." instead;
	if the player is Horatio:
		say "You quietly sing a few notes of the song of bostrat, and a small trail of thin mist appears in front of you, twists gently, then dissipates." instead;

Does the player mean summoning the grey mist: it is very likely.

Carry out summoning:
	if no_mist is in the location:
		now the location is cloudy;
		update backdrop positions;
		move no_mist to the Void;
		say "[one of]Calling on your heritage as a Bostrat, you sing the ancient song of mist and rain and thunder, summoning moisture from the air.  It slowly coalesces into a creeping grey mist, obscuring you from sight.  In gentler times, you would be doing this to ensure the growth of the fields and forests; now you must use it to hide from prying eyes that would keep you from your quarry[or]You sing, summoning an obscuring grey mist to surround you and hide you from prying eyes[stopping].
		
		You stop at the natural inflection point for clouds given today's weather.  You could make it thicker still, though it would then start to dissipate.";
	otherwise:
		if the location is indoors:
			say "You sing, drawing the moisture from the room into a wisp of fog, but it twists into nothingness again as the echoes of your song fade.";
		otherwise:
			[1-5: thin, 6-10: soft, 11-15: rolling, 16-20: heavy]
			if the thickness of the grey mist is at least 15:
				now the thickness of the grey mist is 20;
				say "A [mist density] mist is as thick as you can make it--there's simply no more water to pull into the air.";
				stop the action;
			otherwise if the thickness of the grey mist is at least 11:
				now the thickness of the grey mist is 20;
			otherwise if the thickness of the grey mist is at least 6:
				now the thickness of the grey mist is 15;
			otherwise:
				now the thickness of the grey mist is 10;
			say "Your song draws even more moisture into the air, feeding it into the thickening fog.  You feel safer as the now-[mist density] mist wraps around you like a blanket.";

Mist depletion is a recurring scene.  Mist depletion begins when the thickness of the grey mist is greater than one.  Mist depletion ends when the thickness of the grey mist is one.

Every turn during Mist depletion:
	if Being Chased is happening:
		if go go go is happening:
			decrease the thickness of the mist by 5;
			say "The fog quickly evaporates in the heat and sun-song of the Ikniq warriors";
			if the thickness of the mist is less than 2:
				now the thickness of the mist is 1;
				say ", all the way back to equilibrium.";
			otherwise:
				say ", dwindling back to a [mist density] mist.";
		otherwise:
			decrease the thickness of the mist by 2;
			say "The fog evaporates steadily in the heat and sun-song of the Ikniq warriors";
			[1-5: thin, 6-10: soft, 11-15: rolling, 16-20: heavy]
			if the thickness of the mist is less than 2:
				now the thickness of the mist is 1;
				say ", all the way back to equilibrium.";
			otherwise if the thickness of the mist is 4 or the thickness of the mist is 5 or the thickness of the mist is 9 or the thickness of the mist is 10 or the thickness of the mist is 14 or the thickness of the mist is 15:
				say ", dwindling back to a [mist density] mist.";
			otherwise:
				say ".";
	otherwise if the location is outdoors:
		decrease the thickness of the grey mist by 1;
		if the thickness of the grey mist is 1:
			say "[If the player is Constance]Your[otherwise]The[end if] summoned mist thins back to equilibrium.  A [mist density] mist, but still thick enough to mostly obscure you.";
		otherwise if go go go is happening:
			decrease the thickness of the grey mist by 1;
			say "The mist thins more rapidly than normal[if the thickness of the grey mist is 1], back to equilibrium again[end if].";
		otherwise if the thickness of the grey mist is 3 or the thickness of the grey mist is 7 or the thickness of the grey mist is 11:
			say "[If the player is Constance]Your[otherwise]The[end if] summoned fog lightens to a [mist density] mist.";
	otherwise:
		decrease the thickness of the grey mist by 1;
	[say "Thickness: [the thickness of the grey mist] ([mist density]).";]	


After looking during hanging out:
	if cyoa mode is false and the grey mist is in the location:
		If the location is indoors:
			if the thickness of the mist is at least 8:
				say "Even though you're inside, the [mist density] fog outside makes the air in this room thicker, somehow.";
		otherwise:
			if the player is Constance:
				if Constance is cruising:
					say "You circle through the [mist density] mist, observing but hidden from view.";
			otherwise:
				say "A [mist density] mist surrounds you, summoned by your quarry.";

Section movement

Diving is an action applying to nothing.  Understand "dive" as diving.
Before diving:
	Try going down instead;

Ascending is an action applying to nothing.  Understand "ascend" as ascending.
Before ascending:
	Try going up instead;

Descending is an action applying to nothing.  Understand "descend" as Descending.
Before Descending:
	Try going down instead;

[Understand "fly" as going something.] [Well!  An I7 'abject failure' bug!  Woo!]
Understand "fly" as going.
Understand "fly [direction]" as going.

Check jumping:
	say "[if the player is Constance]Pfaugh![otherwise]Your old bones aren't what the used to be.[end if]  Jumping is for fledglings!" instead;

Section nostalgia

Xyzzying is an action applying to nothing.  Understand "xyzzy" as xyzzying.
Report xyzzying:
	say "[if the player is Constance]Legends say that the capsa of movement contained such a scroll, but it was lost years ago.  An itinerant troubador once told a tale at the royal court of a Magpie Clan woman who saw the open capsa materialize on her table one morning, and grabbed it just in time to be transported with it to its next location.  She had many fanciful adventures until, years later, it finally took her home again.  She opened the capsa and let it go, hoping that another would have adventures like hers[otherwise]The capsa of movement is incredibly annoying.  Like all capsae, you can feel where it is just at the edge of your senses, so every time it jumps from one location to another, it's like a flicker of movement at the edge of your sight[end if]."

Section look on undo

After undoing an action:
	if cyoa mode is true:
		try looking;
	otherwise:
		say the description of the location;
		say paragraph break;

Section doors

Understand "lock [something]" as locking keylessly. Locking keylessly is an action applying to one thing.

Check locking keylessly:
	if the noun is locked:
		say "[The noun] is already locked.  Presumably by someone who had the actual key." instead;
	if the noun is not lockable:
		say "[The noun] cannot be locked." instead;

Carry out locking keylessly:
	say "You've never had the keys for anything around here."

Understand "unlock [something]" as unlocking keylessly. Unlocking keylessly is an action applying to one thing.

Check unlocking keylessly:
	if the noun is not openable:
		say "That's not something that opens, let alone locks." instead;
	if the noun is not lockable:
		say "That's not something you could lock or unlock." instead;
	if the noun is open:
		say "[The noun] is already open, so whether it's locked or not is kind of moot at this point.  You also don't have any keys." instead;
	if the noun is unlocked:
		say "As far as you know, [the noun] is already unlocked." instead;

Carry out unlocking keylessly:
	say "You've never had the keys for anything around here."

First Check opening an open door:
	say "You opened this door with the scroll of opening already." instead;

First Check unlocking an unlocked door with:
	say "As far as you know, the door is already unlocked." instead;


Rules and New Actions ends here.
