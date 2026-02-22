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
		say "[one of]Calling on your heritage as a Bostrat, you summon moisture from the air, and it slowly coalesces into a creeping grey mist, obscuring you from sight.  In gentler times, you would be doing this to ensure the growth of the fields; now you must use it to hide from prying eyes that would keep you from your quarry[or]You summon an obscuring grey mist to surround you and hide you from prying eyes[stopping]."

After summoning the grey mist:
	now the grey mist is summoned;
	continue the action.

Rules and New Actions ends here.
