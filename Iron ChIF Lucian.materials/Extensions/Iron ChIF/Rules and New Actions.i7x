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



Section New Actions

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

Rules and New Actions ends here.
