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
	say "First: a word about design philosophy.  The game has sub-optimal endings, but by design they are all avoidable with a single >UNDO.  There may be bugs that circumvent that design!  So keep multi-undo and/or save files at the ready.	
	
	This game would not have been possible without the intense energy of @otistdog on the intfiction forums creating the idea of having an 'Iron ChIF' competition, nor without Ryan Veeder agreeing to be the aforementioned 'Iron ChIF Inform 7' to compete against.
	
	Particular thanks go to my betatesters, Sarah Wilson (day 1), Stephen Granade (day 2), Allyson Gray (day 3), and Dan 'inky' Shiovitz (day 4).
	
	Thanks also to the official judges for this competition: Chandler Groover, Victor Gijsbers, J. J. McC, Brian Rushton, and N. Cormier, and technical advisor Zed Lopez.  You all have been great!

	The cover art image is courtesy Greg Hume (Greg5030)/CC BY-SA 3.0
	
	Apologies to N. Cormier for letting her cats out backstage.  I forgot to check the spotlights!"

Section about

Abouting is an action out of world applying to nothing.  Understand "about" as abouting.

Carry out abouting:
	say "This game was written in five days for Episode One of Iron ChIF, where I (as the challenger) wrote this game while Ryan Veeder (the 'Iron ChIF Inform 7') wrote his own game.  Extensive discussion and commentary from that episode can be found on the intfiction.org web site, at
	
	https://intfiction.org/t/iron-chif-season-one-episode-1-lpsmith-vs-afterward-using-inform-7/78122

	and
	
	https://intfiction.org/t/iron-chif-season-one-episode-1-audience-commentary/79065/

	The source code can be found at

	https://github.com/luciansmith/IronChIF/[lb]"

Section Summoning mist

A room can be cloudy or clear.  A room is usually cloudy.

The grey mist is a backdrop.  The description is "Grey mist swirls and surrounds you, covering you like a blanket."  Understand "cloud/clouds/gray/fog" as the grey mist.

When play begins:
    move the grey mist backdrop to all cloudy rooms.

The grey mist has a number called thickness.  The thickness of the grey mist is 1.

To say mist density:
	if the thickness of the mist is less than 4:
		say "thin ";
	otherwise if the thickness of the grey mist is less than 8:
		say "";
	otherwise if the thickness of the grey mist is less than 12:
		say "thickening ";
	otherwise:
		say "heavy ";

Summoning is an action applying to one thing.  Understand "summon [something]" as summoning.

Check summoning something:
	if the noun is not the grey mist and the noun is not the no_mist:
		say "You're a Bostrat: you can summon mist and clouds, but nothing else." instead.

Carry out summoning:
	if no_mist is in the location:
		now the location is cloudy;
		update backdrop positions;
		move no_mist to the Void;
		say "[one of]Calling on your heritage as a Bostrat, you summon moisture from the air, and it slowly coalesces into a creeping grey mist, obscuring you from sight.  In gentler times, you would be doing this to ensure the growth of the fields and forests; now you must use it to hide from prying eyes that would keep you from your quarry[or]You summon an obscuring grey mist to surround you and hide you from prying eyes[stopping].
		
		You stop at the natural inflection point for clouds given today's weather.  You could make it thicker still, but it would then start to dissapate.";
	otherwise:
		if the thickness of the grey mist is greater than 12:
			now the thickness of the grey mist is 15;
			say "That's as thick as you can make the mist--there's simply no more water to pull into the air.";
		otherwise:
			if the thickness of the grey mist is at least 10:
				now the thickness of the grey mist is 15;
			otherwise if the thickness of the grey mist is at least 7:
				now the thickness of the grey mist is 12;
			otherwise if the thickness of the grey mist is at least 4:
				now the thickness of the grey mist is 9;
			otherwise:
				now the thickness of the grey mist is 6;
			say "You draw even more moisture into the air, and feed it into the mist.  As it thickens, you feel safer, as you always do in the midst of clouds.";

Mist depletion is a recurring scene.  Mist depletion begins when the thickness of the grey mist is greater than one.  Mist depletion ends when the thickness of the grey mist is one.

Every turn during Mist depletion:
	decrease the thickness of the grey mist by one;
	if the thickness of the grey mist is one:
		say "Your summoned mist thins back to equilibrium.  Still thick enough to mostly obscure you.";
	otherwise if go go go is happening:
		decrease the thickness of the grey mist by one;
		say "The mist thins more rapidly than normal[if the thickness of the grey mist is one], back to equilibrium again[end if].";
	otherwise if the thickness of the grey mist is 3 or the thickness of the grey mist is 6 or the thickness of the grey mist is 9 or the thickness of the grey mist is 12:
		say "Your summoned mist thins slightly, on its way back to equilibrium.";
	[say "Thickness: [the thickness of the grey mist].";]

Diving is an action applying to nothing.  Understand "dive" as diving.
Before diving:
	Try going down;

Ascending is an action applying to nothing.  Understand "ascend" as ascending.
Before ascending:
	Try going up;

Descending is an action applying to nothing.  Understand "descend" as Descending.
Before Descending:
	Try going down;

Xyzzying is an action applying to nothing.  Understand "xyzzy" as xyzzying.
Report xyzzying:
	say "Legends say that the capsa of movement contained such a scroll, but it was lost years ago.  An itinerant troubador once told a tale at the royal court of a Magpie Clan woman who saw the open capsa materialize on her table one morning, and grabbed it just in time to be transported with it to its next location.  She had many fanciful adventures until, years later, it finally took her home again.  She opened the capsa and let it go, hoping that another would have adventures like hers."

[Understand "fly" as going something.] [Well!  An I7 'abject failure' bug!  Woo!]

Check jumping:
	say "Pfaugh!  Jumping is for fledglings!" instead;

Rules and New Actions ends here.
