Being Chased by Iron ChIF begins here.
Use authorial modesty.

Constance can be cruising, speeding, or super-fast.  Constance is cruising.

Momentum is a recurring scene.  Momentum begins when Constance is speeding.  Momentum ends when the time since Momentum began is two minutes.

When Momentum ends:
	if Constance is speeding:
		now Constance is cruising;
		say "The momentum you had from your dive wears off[if Being Chased is not happening].  Fun while it lasted![otherwise].[end if]";

Super-momentum is a recurring scene.  Super-momentum begins when Constance is super-fast.  Super-momentum ends when the time since Super-momentum began is three minutes.

When Super-momentum ends:
	if Constance is super-fast:
		now Constance is cruising.

Woodpeckers are people in the Void.  The description is "I dunno if you'll ever actually see these guys; they just sound the alarms from offstage."
Woodpeckers can be activated. Woodpeckers are not activated.
Woodpeckers have a number called reset state. The reset state of the Woodpeckers is 5.

The Raven Guard are people in the Void.  "Several members of the Raven Guard fly at you, as you dodge and circle to avoid them."  The description is "Black as night, apart from the silvered knives they wear on their talons, and the golden razors that line their beaks[if the librum landing cradle is visited].  It looks like the lone guard from the Librum has joined them: the [end if]."  Understand "guards/black/silvered/knives/talons/golden/razors/beaks/ravens/squad" as the raven guard.

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
	Move the lone guard to the Void;
	Move the tiny closed padlocks to the Void;
	say "From... well, from everywhere in the Aerie, it seems, Woodpeckers start drumming out messages in their Pounding dialect:  [if Everything Falls is happening and Everything Falls is not grounded]'Intruder!  The enemy is DOWN. Repeat!  The enemy is DOWN.'  You realize that creating a gravity well pointing straight at you might not have been the wisest move[otherwise]'Intruder! Estimated direction is...' and then each one individually seems to be telegraphing the direction from them to you.  You can't discern any one drummer from any other drummer, but you can at least tell that each seems to be drumming on sheets of metal that differ from each other, as the frequencies are all different from each other.  That makes the information somewhat useless to you, because you've not been trained to distinguish Pounding at different frequencies.  And because you already know where you are.  Sadly, the Raven Guards are indeed trained to distinguish Pounding frequencies.
	
	And if they didn't know where you were, they do now[end if].";

Constance can be quick-doing.  Constance is not quick-doing.

Before examining something during Being Chased:
	say "Lightning fast, you try to examine [the noun]:  [nb]";
	continue the action;

Every turn during Being Chased:
	If the current action is not examining:
		Increase the closeness of Being Chased by 1;
		[say "closeness: [the closeness of being chased].";]
		If the closeness of Being Chased is 1:
			If the thickness of the grey mist is at least 3:
				say "The mist you summoned begins to burn away.  Crap.  The queen must have Ikniq working for her now.[nb]";
				If the thickness of the grey mist is less than 7:
					now the thickness of the grey mist is 1;
					say "At least they can't burn it away past equilibrium.";
				Otherwise if go go go is happening and the thickness of the grey mist is less than 11:
					now the thickness of the grey mist is 1;
					say "At least they can't burn it away past equilibrium.";
				Otherwise:
					decrease the thickness of the grey mist by 6;
					if go go go is happening:
						decrease the thickness of the grey mist by 4;
					say "The mist is still thicker than it would be at equilibrium, but it's a lot less than it was.";
		If the closeness of Being Chased is 2:
			move the raven guard to the location;
			If the location is not the starting_line of Being Chased:
				If the starting_line of Being Chased is High Above:
					say "You've dived straight into a squad of Raven Guards, on their way up to accost you.  Fortunately, your speed helped you avoid most of them, but one guard's talon catches you on your side as you twist by them.";
					Now Constance is wounded;
				Otherwise if the starting_line of Being Chased is in_forest:
					say "Your ascent brings you right into a squad of Raven Guards, on their way to accost you.  You see them only barely before they see you, and it's just enough to mostly avoid them.  Still, a slash from a Raven Guard beak catches you in the side as you twist past.";
					Now Constance is wounded;
				Otherwise:
					say "You've barely left [the starting_line of Being Chased] when a squad of Raven Guards wheels in from behind, hot on your tail!";
			Otherwise:
				say "A squad of Raven Guards appears, and their war cries exalt as they spot you.  You weave through the air, tumbling and twisting as you try to avoid them.";
			Now the starting_line of Being Chased is the location;
		Otherwise if the closeness of Being Chased is at least 3:
			move the raven guard to the location;
			If the starting_line of Being Chased is not the location:
				Now the starting_line of Being Chased is the location;
				Now the closeness of Being Chased is 2;
				determine evasion;
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
	If Everything Falls is happening and Everything Falls is upended:
		say "You dodge and weave and almost get away from your pursuers, but when 'down' always points straight at you, even when they can't see you, they always know where you are.";
	Otherwise if Super-Momentum is happening:
		say "You expertly twist at breakneck speeds, weaving through three Ash trunks, over a branch, and around and behind a Redwood, where you halt, twist, and dive straight down the trunk, out of view of any stray Raven.";
		escape and recover;
	Otherwise if Momentum is happening:
		If the thickness of the grey mist is at least 10:
			say "You dive into the thickest spot of mist you can find, and put on a final burst of speed before changing direction and dropping like a stone.  It works:  your pursuers fly blindly into the mist where you used to be, cawing angrily when they realize they can't see you any more.";
			escape and recover;
		Otherwise if Everything Falls is happening and Everything Falls is grounded and the player does not enclose the gold capsa:
			say "As you dive, you use your knowledge of 'true down' to give yourself an edge, pulling around a tree at an angle that should be impossible; diving and twisting through gaps in the  branches that couldn't be done.  Your closest pursuer crashes into a branch, and the others peel off to avoid him.";
			escape and recover;
		Otherwise:
			say "Your speed puts more distance between you and your pursuers, but it's not quite fast enough, or the mist isn't thick enough, or both, and your pursuers manage to keep you in sight.";
	Otherwise:
		If the thickness of the grey mist is at least 13:
			say "The mist is too thick for the Raven Guard to pursue you far.  You dodge around a tree, and disappear.";
			escape and recover;
		Otherwise:
			say "The Raven Guard pursues you determinedly through the [mist density]mist.";

To escape and recover:
	Now the woodpeckers are not activated;
	Move the Raven Guard to the Void;
	Move the Lone Guard to the Librum Landing Cradle;
	Move the small pile of tiny padlocks to the Librum Landing Cradle;
	Now the closeness of Being Chased is 0;
	Now Constance is cruising;
	say "[lb]The Raven's frustrated caws echo in the mist.  In time, the woodpeckers cease their drumming, and the cawing fades as well.  Protocol would dictate that they return to guarding priority items.  If there were any reserves left, they would be called up, but the Red Plague has affected the Raven Guard as sorely as your own community.
	
	You ";
	if the rucksack is not enclosed by the player:
		say "retrieve your rucksack and any fallen capsae, and plot a now-unseen course back to the familiar currents above the Aerie to ponder your next move.";
		move the rucksack to the player;
	if the purple capsa of opening is not enclosed by the player:
		move the purple capsa of opening to the rucksack;
	if the red capsa is not enclosed by the player:
		move the red capsa to the rucksack;
	if the gold capsa is open:
		now the gold capsa is closed;
	if the gold capsa is not enclosed by the player:
		move the gold capsa to the rucksack;
	move the rucksack to the player;
	move the purple capsa of opening to the rucksack;
	move the red capsa to the rucksack;
	Move the player to High Above, without printing a room description;

When Being Chased ends:
	if cell door is open:
		now Horatio is remembered;
	otherwise:
		try looking;

Being Chased ends here.
