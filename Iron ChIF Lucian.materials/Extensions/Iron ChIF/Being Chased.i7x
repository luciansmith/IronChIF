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

The Raven Guard are people in the Void.  "Several members of the Raven Guard fly at you, as you dodge and circle to avoid them."  The description is "Black as night, apart from the silvered knives they wear on their talons, and the golden razors that line their beaks[if the Librum landing cradle is visited].  It looks like the lone guard from the Librum has joined them, too[end if]."  Understand "guards/black/silvered/knives/talons/golden/razors/beaks/ravens/squad/lone" as the raven guard.

answering the raven guard that something is talking your way out.
telling the raven guard about something is talking your way out.
asking the raven guard about something is talking your way out.
asking the raven guard for something is talking your way out.
chatting the raven guard is talking your way out.

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

Instead of touching the raven guard:
	say "As tempting as it is to bonk one of them on the head as you skim by, you unfortunately are not quite that much better than they are.";

Being Chased is a recurring scene.  Being Chased begins when the woodpeckers are activated.  Being chased ends when the woodpeckers are not activated.

Being Chased has a number called closeness.  The closeness of Being Chased is 0.
Being Chased has a room called starting_line.  The starting_line of Being Chased is the Void.

When being chased begins:
	Now the starting_line of Being Chased is the location;
	Move the lone guard to the Void;
	Now the sense_of_duty of the lone guard is 0;
	say "From... well, from everywhere in the Aerie, it seems, Woodpeckers start drumming out messages in their Pounding dialect:  [if Everything Falls is happening and Everything Falls is not grounded]'Intruder!  The enemy is DOWN. Repeat!  The enemy is DOWN.'  You realize that creating a gravity well pointing straight at you makes you an easy target to find[otherwise]'Intruder! Estimated direction is...' and then each one individually seems to be telegraphing the direction from them to you.  You can't discern any one drummer from any other drummer, but you can at least tell that each seems to be drumming on sheets of metal that differ from each other, so every frequency is unique.  That makes the information somewhat useless to you, because you've not been trained to distinguish Pounding at different frequencies.  And because you already know where you are.  Sadly, the Raven Guards are indeed trained to distinguish Pounding frequencies.
	
	And if they didn't know where you were, they do now[end if].";

Constance can be quick-doing.  Constance is not quick-doing.

Before examining something during Being Chased:
	say "Lightning fast, you glance over:  [nb]";
	continue the action;

First check opening a closed door during Being Chased:
	say "The Raven Guard is not going to stop chasing you to give you enough time to open [the noun].  Though perhaps if you explained that you only wanted to go into an enclosed space so they could better surround and capture you, they'd consider it?" instead;

Every turn during Being Chased:
	If the current action is not examining and the current action is not taking inventory:
		Increase the closeness of Being Chased by 1;
		[say "closeness: [the closeness of being chased].";]
		If the closeness of Being Chased is 1:
			If the thickness of the grey mist is 1:
				say "You suddenly feel warmer, and hear an exultant song of the sun in the distance.  The [one of]queen must have Ikniq working for her[or]queen's Ikniq warriors are at it again[stopping], trained to try to burn away your fog.";
			otherwise:
				say "A pervasive heat along with an exultant song of the sun wash over you, and in a flash, [nb]";
				If the thickness of the grey mist is at least 14:
					now the thickness of the grey mist is 8;
					say "the heavy mist you summoned half-boils away[nb]";
				Otherwise if the thickness of the grey mist is at least 10:
					now the thickness of the grey mist is 4;
					say "the rolling mist you summoned boils away to almost nothing[nb]";
				Otherwise if the thickness of the grey mist is greater than 1:
					say "the [mist density] mist you summoned boils away back to equilibrium[nb]";
					now the thickness of the grey mist is 1;
				say "[one of].  Crap.  The queen must have Ikniq working for her now[or].  The queen's Ikniq warriors are after you again[stopping].";
		Otherwise if the closeness of Being Chased is 2:
			move the raven guard to the location;
			If the hunting cloak is worn:
				if No More Purple is happening:
					if Everything Falls is happening and Everything Falls is not grounded:
						say "The Raven Guard fly in, unable to see you, but flying 'down' straight at you.  Stuck in this cloak, you hardly have any mobility, and after the first confused guard crashes into you, it doesn't take the rest long to figure out where you are.";
						end the story saying "You have been captured.";
						stop the action;
					otherwise:
						say "[if the location is outdoors]You manage to hobble away from where you were just far enough that when the Raven Guard show up, you're no longer there.  You remain silent while they fly in frustrated circles, unable to find you[otherwise]You press yourself against the wall, barely daring to breathe as the Raven Guard fly in and search everywhere for you.  But they're not searching for anything invisible, and eventually give up in anger[end if].";
						escape and recover;
				otherwise:
					say "The Raven Guard fly in, and see your purple cloak almost immediately against the foliage.";
					end the story saying "You have been captured.";
					stop the action;
			Otherwise if the location is Upper Great Hall:
				say "The Raven Guard pour through the double doors, and you have nowhere to maneuver.";
				end the story saying "You have been captured.";
				stop the action;
			Otherwise if the location is not the starting_line of Being Chased:
				If the starting_line of Being Chased is High Above:
					say "You've dived straight into a squad of Raven Guards, on their way up to accost you.  Fortunately, your speed helped you avoid most of them, but one guard's talon catches you on your side as you twist by them.";
					Now Constance is wounded;
				Otherwise if the starting_line of Being Chased is in_forest:
					say "Your ascent brings you right into a squad of Raven Guards, on their way to accost you.  You see them only barely before they see you, and it's just enough to mostly avoid them.  Still, a slash from a Raven Guard beak catches you in the side as you twist past.";
					Now Constance is wounded;
				Otherwise:
					say "You've barely left the [the starting_line of Being Chased] when a squad of Raven Guards wheels in from behind, hot on your tail!";
			Otherwise:
				say "A squad of Raven Guards appears, and their war cries exalt as they spot you.  You weave through the air, tumbling and twisting as you try to avoid them.";
			Now the starting_line of Being Chased is the location;
		Otherwise if the closeness of Being Chased is at least 3:
			move the raven guard to the location;
			If the starting_line of Being Chased is not the location:
				Now the starting_line of Being Chased is the location;
				Now the closeness of Being Chased is 2;
				determine evasion;
			Otherwise if the wooden bar is following:
				say "The guards try to reach you, but keep getting blocked by the large spinning wooden bar.";
				now the closeness of Being Chased is 2;
			Otherwise if the closeness of Being Chased is 3:
				say "The guards charge, but you manage to evade their attack.";
			Otherwise if the closeness of Being Chased is 4:
				say "Two guards snap at you, and while both touch nothing but feathers, a third slashes you with his silvered talons.  They're about to overwhelm you.";
				Now Constance is wounded;
			Otherwise:
				say "You're faster and more maneuverable than they are, but there are more of them.  One charges you directly, and when you veer off to avoid her, another crashes into you.  The rest swarm you instantly.";
				end the story saying "Your luck has run out.";
				stop the action;

[Note: 'Ikniq' actually means 'Fire' in Iñupiaq.  According to The Internet.]

go_go_go is an achievement in the Void.  The printed name is "Go, Go, Go!"  The description is "Escape the Raven Guard by diving while 'haste' is active."

falcon_dive is an achievement in the Void.  The printed name is "Hunting Stoop".  The description is "Escape the Raven Guard with a very long dive.";

true_down is an achievement in the Void.  The printed name is "True Down".  The description is "Escape the Raven Guard by altering where 'down' is.";

falcon_mist is an achievement in the Void.  The printed name is "Mist Me!".  The description is "Escape the Raven Guard into your summoned fog.";



To determine evasion:
	If Everything Falls is happening and Everything Falls is upended:
		say "You dodge and weave and almost get away from your pursuers, but when 'down' always points straight at you, even when they can't see you, they always know where you are.";
	Otherwise if Super-Momentum is happening:
		if go go go is happening:
			say "Your extra speed from the capsa of haste lets you pull ahead, since your pursuers are only proportionally faster than they were.  You manage to use the extra distance to dodge behind a poplar and plummet, out of view of any stray Raven.";
			now the most_recent of the Trophy Room is go_go_go;
		otherwise:
			say "You expertly twist at breakneck speeds, weaving through three Ash trunks, over a branch, and around and behind a Redwood, where you halt, twist, and dive straight down the trunk, out of view of any stray Raven.";
			now the most_recent of the Trophy Room is falcon_dive;
		escape and recover;
	Otherwise if Momentum is happening:
		If the thickness of the grey mist is at least 10:
			say "You dive into the thickest spot of mist you can find, and put on a final burst of speed before changing direction and dropping like a stone.  It works:  your pursuers fly blindly into the mist where you used to be, cawing angrily when they realize they can't see you any more.";
			now the most_recent of the Trophy Room is falcon_mist;
			escape and recover;
		Otherwise if Everything Falls is happening and Everything Falls is grounded and the player does not enclose the gold capsa:
			say "As you dive, you use your knowledge of 'true down' to give yourself an edge, pulling around a tree at an angle that should be impossible; diving and twisting through gaps in the branches that shouldn't be possible.  Your closest pursuer crashes into a branch, and the others peel off to avoid him.";
			now the most_recent of the Trophy Room is true_down;
			escape and recover;
		Otherwise:
			say "Your speed puts more distance between you and your pursuers, but it's not quite fast enough, or the mist isn't thick enough, or both, and your pursuers manage to keep you in sight.";
	Otherwise:
		If the thickness of the grey mist is at least 12:
			say "The [mist density] mist is too thick for the Raven Guard to pursue you far.  You dodge around a tree, and disappear.";
			now the most_recent of the Trophy Room is falcon_mist;
			escape and recover;
		Otherwise:
			say "The Raven Guard pursues you determinedly through the [mist density] mist.";

To escape and recover:
	Now the woodpeckers are not activated;
	Move the Raven Guard to the Void;
	Move the Lone Guard to the Librum Landing Cradle;
	Now the closeness of Being Chased is 0;
	[Now the thickness of the grey mist is 1;]
	Now Constance is cruising;
	say "[lb]The Ravens[apostrophe] frustrated caws echo through the [mist density] mist as they fly off.  In time, the woodpeckers cease their drumming, and the cawing fades as well.  Protocol would dictate that they return to guarding priority items.  If there were any reserves left, they would be called up, but the Red Plague has affected the Raven Guard as sorely as your own community.";
	if Horatio is not remembered:
		if the rucksack is not enclosed by the player:
			say "[lb]You retrieve your rucksack and any fallen capsae, and plot a now-unseen course back to the familiar currents above the Aerie to ponder your next move.";
			move the rucksack to the player;
		otherwise:
			say "[lb]You plot a now-unseen course back to the familiar currents above the Aerie to ponder your next move.";
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

After waiting during Being Chased:
	if the hunting cloak is worn:
		say "You wait, anxiously skittish, and unable to fly." instead;
	otherwise:
		say "You circle evasively, trying to avoid the Raven Guard." instead;

When Being Chased ends:
	if cell door is open:
		now Horatio is remembered;
	otherwise:
		try looking;

Hanging out is a recurring scene.  Hanging out begins when constance is cruising and the closeness of Being Chased is 0.  Hanging out ends when constance is not cruising or the closeness of Being Chased is not 0.

Being Chased ends here.
