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
	say "This game would not have been possible without the intense energy of @otistdog on the intfiction forums creating the idea of having an 'Iron ChIF' competition, nor without Ryan Veeder agreeing to be the aforementioned 'Iron ChIF Inform 7' to compete against.
	
	Particular thanks go to my betatesters, Sarah Wilson (day 1), Steven Granade (day 2), Allyson Gray (day 3), and Dan 'inky' Shiovitz (day 4).
	
	Thanks also to the official judges for this competition: Chandler Groover, Victor Gijsbers, J. J. McC, Brian Rushton, and N. Cormier, and technical advisor Zed Lopez.  You all have been great!
	
	Apologies to N. Cormier for letting her cats out backstage.  I forgot to check the spotlights!"


Section Summoning mist

The grey mist is a backdrop.  The grey mist can be summoned or unsummoned.  The grey mist is unsummoned.  The description is "[if summoned]Grey mist swirls and surrounds you, covering you like a blanket.[otherwise]The cloud layer today is too high for a naturally obscuring mist; you'll have to summon it yourself."  Understand "cloud/clouds/gray" as the grey mist.  The grey mist is everywhere.

Summoning is an action applying to one thing.  Understand "summon [something]" as summoning.

Check summoning something:
	if the noun is not the grey mist:
		say "You're a Bostrat: you can summon mist and clouds, but nothing else." instead.

Carry out summoning the grey mist:
	if the grey mist is summoned:
		say "You draw even more moisture from the air, feeding it into the mist.  It's still just as obscuring as before, but you feel safer, as you always do in the midst of clouds.";
	otherwise:
		say "[one of]Calling on your heritage as a Bostrat, you summon moisture from the air, and it slowly coalesces into a creeping grey mist, obscuring you from sight.  In gentler times, you would be doing this to ensure the growth of the fields and forests; now you must use it to hide from prying eyes that would keep you from your quarry[or]You summon an obscuring grey mist to surround you and hide you from prying eyes[stopping]."

After summoning the grey mist:
	now the grey mist is summoned;
	continue the action.

Rules and New Actions ends here.
