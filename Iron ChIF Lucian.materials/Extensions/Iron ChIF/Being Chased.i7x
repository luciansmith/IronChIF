Being Chased by Iron ChIF begins here.
Use authorial modesty.

Constance can be cruising, speeding, or super-fast.  Constance is cruising.

Momentum is a recurring scene.  Momentum begins when Constance is speeding.  Momentum ends when the time since Momentum began is two minutes.

When Momentum ends:
	if Constance is speeding:
		now Constance is cruising;
		say "The momentum you had from your dive wears off.  [if Being Chased is not happening]Fun while it lasted!";

Super-momentum is a recurring scene.  Super-momentum begins when Constance is super-fast.  Super-momentum ends when the time since Super-momentum began is two minutes.

When Super-momentum ends:
	if Constance is super-fast:
		now Constance is speeding.

Woodpeckers are people in the Void.  The description is "I dunno if you'll ever actually see these guys; they just sound the alarms from offstage."
Woodpeckers can be activated.  Woodpeckers are not activated.

The Raven Guard are people in the Void.  The description is "Black as night, apart from the silvered knives they wear on their talons, and the golden razors that line their beaks."

answering the raven guard that something is talking your way out.
telling the raven guard about something is talking your way out.
asking the raven guard about something is talking your way out.
asking the raven guard for something is talking your way out.

instead of talking your way out:
	say "The Raven Guard will be happy to 'discuss things' with you after you are safely captured.";

Instead of attacking the raven guard:
	say "The Raven Guard are built for combat.  You are not.  You are built for speed and visual acuity.";

Instead of kissing the raven guard:
	say "The enemies-to-lovers trope works slightly better outside of an active combat scene.";

Instead of showing something to the raven guard:
	say "The Raven Guard will be happy to look at [the noun] after they've captured you and are going through your things.";

Instead of giving something to the raven Guard:
	say "The Raven Guard will be happy to look at [the noun] after they've captured you and are going through your things.";

Instead of waking the raven guard:
	say "They are [i]most decidedly[r] not asleep.";

Being Chased is a recurring scene.  Being Chased begins when the woodpeckers are activated.  Being chased ends when the woodpeckers are not activated.

Being Chased has a number called closeness.  The closeness of Being Chased is 0.
Being Chased has a room called starting_line.  The starting_line of Being Chased is the Void.

When being chased begins:
	Now the starting_line of Being Chased is the location;
	say "From... well, from everywhere in the Aerie, it seems, Woodpeckers start drumming out messages in their Pounding dialect:  'Intruder! Estimated direction is...' and then each one individually seems to be telegraphing the direction from them to you.  You can't discern any one drummer from any other drummer, but you can at least tell that each seems to be drumming on sheets of metal that differ from each other, as the frequencies are all different from each other.  That makes the information somewhat useless to you, because you've not been trained to distinguish Pounding at different frequencies.  And because you already know where you are.  Sadly, the Raven Guards are indeed trained to distinguish Pounding frequencies, and they [i]don't[r] know where you are.
	
	Or they didn't, at least."

Before examining something during Being Chased:
	say "Lightning fast, you try to examine [the noun].";
	continue the action;

Every turn during Being Chased:
	If the current action is not examining:
		Increase the closeness of Being Chased by 1;
	say "closeness: [the closeness of being chased].";
	If the closeness of Being Chased is 1:
		If the thickness of the grey mist is at least 3:
			say "The mist you summoned begins to burn away.  Crap.  The queen must have Ikniq working for her now.[nb]";
			If the thickness of the grey mist is less than 7:
				now the thickness of the grey mist is 1;
				say "At least they can't burn it away past equilibrium.";
			Otherwise:
				decrease the thickness of the grey mist by 6;
				say "The mist is still thicker than it would be at equilibrium, but it's a lot less than it was.";
	If the closeness of Being Chased is 2:
		If the location is not the starting_line of Being Chased:
			If the starting_line of Being Chased is High Above:
				say "You've dived straight into a squad of Raven Guards, on their way up to accost you.  Fortunately, your speed helped you avoid most of them, but one guard's talon catches you on your side as you twist by them.";
				Now Constance is wounded;
			Otherwise if the starting_line of Being Chased is In the Forest:
				say "Your ascent brings you right into a squad of Raven Guards, on their way to accost you.  You see them only barely before they see you, and it's just enough to mostly avoid them.  Still, a slash from a Raven Guard beak catches you in the side as you twist past.";
				Now Constance is wounded;
			Otherwise:
				say "You've barely left [the starting_line of Being Chased] when a squad of Raven Guards wheels in from behind, hot on your tail!";
		Otherwise:
			say "A squad of Raven Guards appears, and their war cries exalt as they spot you.  You weave through the air, tumbling and twisting as you try to avoid them.";
		Now the starting_line of Being Chased is the location;
	Otherwise if the closeness of Being Chased is at least 3:
		If the starting_line of Being Chased is not the location:
			Now the starting_line of Being Chased is the location;
			Now the closeness of Being Chased is 2;
			determine evasion;
			stop;
		Otherwise if the closeness of Being Chased is 3:
			say "The guards charge, but you manage to evade their uncoordinated attack.";
		Otherwise if the closeness of Being Chased is 4:
			say "Two guards snap at you, and while both touch nothing but feathers, a third slashes you with his silvered talons.  They're about to overwhelm you.";
			Now Constance is wounded;
		Otherwise:
			say "You're faster and more maneuverable than they are, but there are more of them.  One charges you directly, and when you veer off to avoid her, another crashes into you.  The rest swarm you instantly.";
			end the story saying "Your luck has run out.";

[Note: 'Ikniq' actually means 'Fire' in Iñupiaq.  According to The Internet.]

To determine evasion:
	If Super-Momentum is happening:
		say "You expertly twist at breakneck speeds, weaving through three Ash trunks, over a branch, and around and behind a Redwood, where you halt, twist, and dive straight down the trunk, out of view of any stray Raven.";
		escape and recover;
	Otherwise if Momentum is happening:
		If the thickness of the grey mist is at least 10:
			say "You dive into the thickest spot of mist you can find, and put on a final burst of speed before changing direction and dropping like a stone.  It works:  your pursuers fly blindly into the mist where you used to be, cawing angrily when they realize they can't see you any more.";
			escape and recover;
		Otherwise:
			say "Your speed puts more distance between you and your pursuers, but it's not quite fast enough, or the mist isn't thick enough, or both, and your pursuers manage to keep you in sight.";
	Otherwise:
		If the thickness of the grey mist is at least 13:
			say "The mist is too thick for the Raven Squad to pursue you far.  You dodge around a tree, and disappear.";
			escape and recover;
		Otherwise:
			say "The Raven Squad pursues you determinedly through the [mist density]mist.";

To escape and recover:
	Now the woodpeckers are not activated;
	Move the Raven Guard to the Void;
	Now the closeness of Being Chased is 0;
	say "The Raven's frustrated caws echo in the mist, and you plot a now-unseen course returning to the familiar currents above the Aerie.  In time, the woodpeckers cease their drumming, and the cawing fades as well.  Protocol would dictate that they return to guarding priority items, but increase patrols.";
	Move the player to High Above;

Being Chased ends here.
