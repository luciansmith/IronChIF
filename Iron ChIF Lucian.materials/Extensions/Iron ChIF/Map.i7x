Map by Iron ChIF begins here.
Use authorial modesty.

Book Map

The Void is a room.  [I like having an 'off stage' room for stuff.]

Section High Above

High Above the Royal Aerie is a clear room.  "[high_above_desc]."

To say high_above_desc:
	if the player is Constance:
		if cloudy:
			say "Your summoned mist both obscures you and blocks you from seeing the Royal Aerie.  But you've already memorized its layout,";
		otherwise:
			say "You drift in lazy circles well above the Royal Aerie below.  Your acute eyesight lets you see the entire layout,";
		say "and how it relates to today's air currents, winds, and thermals.  Royal Quarters to the north and down, well defended by circling Raven clan guards.  The Librum to the east and down.  In the center of the Aerie (and directly below you) is the Great Hall.  Other royal aeries dot the forest in the distance, but this complex holds your quarry";
	otherwise:
		say "There's nothing to see here, this high above the Aerie; just a thick mist in every direction.  You would have never been able to find Constance if she hadn't been carrying a capsa or two.  You trust that if you circle down from here, you'll be able to find your way once you reach some landmarks";

distant_aerie is scenery in high above.  The printed name is "Royal Aerie".  The description is "[if the grey mist is in the location]As you recall, the[otherwise]The[end if] Royal Aerie was grown and shaped by generations of Throckwrights, and now towers over the surrounding forest canopy.  Lush shades of browns and reds, often woven together in intricate patterns or pictures, cover every landing cradle, wall, and roof."  Understand "royal/aerie/lush/brown/browns/red/reds/woven/patterns/pictures" as distant_aerie.

distant_quarters is scenery in high above.  The printed name is "Royal Quarters".  The description is "[if the grey mist is in the location]As you recall, the[otherwise]The[end if] Royal Quarters is where the queen and her family, servants, and certain privileged royalty live.  Every huge common room; every small or large individual apartment is awash in greenery that looks incredibly inviting and imperially homey, and is in reality subtly precisely hostile to the uninvited.  Every roof pitch is too steep; no branch nor ridge is graspable by talons of any size.  The single landing cradle in the middle of the gardens is surrounded by stern and beautiful tree crowns, beset with nooks and crevices for unseen guards and archers: attempting to land there would mean instant death for any but those who belong."  Understand "royal/quarters/queen/family/servants/royalty/common/room/apartment/small/large/roof/pitch/branch/ridge/landing/cradle" as distant_quarters.

distant_guards are scenery in high above.  They are people.  The printed name is "circling guards".  The description is "The last time you were here, the Aerie was not nearly on such high alert.  Now there's guards everywhere, but especially focused on circling the Royal Quarters.".  Understand "raven/circling/guards" as distant_guards.  Understand "raven clan" as distant_guards.

Instead of doing something other than examining with distant_guards:
	say "The guards are too far away.  And, you know, hostile.";
	stop the action;

Instead of doing something other than examining with distant_aerie:
	say "The aerie is too far away.";
	stop the action;

Instead of doing something other than examining with distant_quarters:
	say "The [distant_quarters] is too far away.";
	stop the action;

Instead of doing something other than examining with distant_librum:
	say "The [distant_librum] is too far away.";
	stop the action;

distant_librum is scenery in high above.  The printed name is "the Librum".  The description is "[if the grey mist is in the location]As you recall, the[otherwise]The[end if] Librum was your target the last time out, and where you obtained the capsae you brought back with you. Its landing cradle is simply decorated, grown with interlocking redwood and pine in a way that suggests shelves of books.  The reading nooks grown into the sides of the main building proved a reasonable entrance for a creative supplicant; no doubt that method will have been shut down by now."  Understand "Librum/landing/cradle/reading/nooks" as distant_librum.

distant_great_hall is scenery in high above.  The printed name is "Great Hall".  The description is "[if the grey mist is in the location]As you recall, the[otherwise]The[end if] Great Hall is by far the largest building in the Aerie complex, and indeed the largest building you've ever seen in your life.  If the stories are true, its planning took three years, and its growth was overseen by three [i]generations[r] of Throckwrights.  Every Royal Throckwright since has sought to put their own personal stamp on the Great Hall, leaving it more than a little haphazardly grown by now, but its current form is still impressive, even as it grows less coherent with every new modification."  Understand "great/hall/largest/building/growth/haphazard/haphazardly/coherent/incoherent/cradle" as distant_great_hall.

distant_others are scenery in high above.  The printed name is "other aeries".  The description is "[if the grey mist is in the location]As you recall, the[otherwise]The[end if] other aeries collectively make up the Royal Complex, each mostly grown by a single corps of Royal Throckwrights at some point in your people's history.  But this one is the most important.  The Scroll of Health is here. Somewhere."

no_mist is scenery in high above.  The printed name is "mist".  The description is "The cloud layer today is too high for a naturally obscuring mist; you'll have to summon it yourself.".  Understand "cloud/layer/mist/high/Heathcliff" as no_mist.

The winds are scenery in high above.  The description is "It's a good day for flying.  The winds and thermals are supportive, but not so dominant that you'll have to devote conscious thought to adjusting to compensate for where you want to go."  Understand "air/currents/winds/wind/thermal/thermals" as the winds.

After dropping something in High Above when everything falls is not happening:
	say "[The noun] twists away as it falls below you, towards the Great Hall.";
	Now the noun is in the Great Hall Landing Cradle.

After dropping something during Everything Falls:
	if the gold capsa is enclosed by the location:
		if the noun is the gold capsa or the noun encloses the gold capsa:
			move the noun to the location;
			say "You let go of [the noun].  It remains floating in the air, exactly where you left it.  You push it to a slightly less conspicuous location." instead;
		otherwise:
			move the noun to the location;
			say "You let go of [the noun].  It falls towards the gold capsa and rests there." instead;
		stop the action;


Check going somewhere from High Above:
	if no_mist is in the location:
		say "[one of]If you get any closer to the Aerie without summoning mist first, the guards would surely see you.  It's the reason why you were able to successfully argue why you, as a Bostrat, were the best choice for this mission[or]You'll need to SUMMON MIST first, to cloak your descent[stopping]." instead.

[Trivia:  'Bostrat' comes from 'Nimbostratus' clouds, aka rain clouds.]

After going from High Above:
	if Starting Off is happening:
		say "You descend in wide circles, pulling mist down with you in what you hope is a sufficiently unsuspicious manner, trusting your memorization of the air currents to tell you where you're going...";
	otherwise if the player encloses an open gold capsa:
		now Constance is cruising;
		say "You descend towards the Aerie, though it feels like you're flying upwards, against the pull of the scroll of down.";
	otherwise if go go go is happening:
		now Constance is super-fast;
		say "You dive blindingly fast towards the Aerie through the fog, and the mist swallows you with nary an eddy.";
	otherwise:
		now Constance is speeding;
		say "You tuck in your wings and dive down [if the noun is not down][noun] [end if]towards the Aerie, thrilling to the misty wind streaming through your feathers.";
	continue the action;

Starting Off is a scene.  Starting Off begins when play begins.  Starting Off ends when the player is not in High Above.

Instead of going nowhere from High Above:
	if the noun is up:
		if Being Chased is happening:
			say "You take to the skies even higher.";
			If the closeness of Being Chased is at least 3:
				Now the closeness of Being Chased is 2;
				Now the starting_line of Being Chased is the Void;
		Otherwise:
			say "You're already high enough to avoid being seen from below; there's no need to go higher.";
	otherwise:
		say "From here, you can descend straight down to the Great Hall, descend northward to the Royal Quarters and Gardens, or descend eastward to the Librum.";

Check opening a capsa when no_mist is in the location:
    say "Before you mess with powerful artifacts from the dawn of civilization, you should probably conceal yourself.  You're a Bostrat; the plan was to summon a mist." instead;


Section Great Hall

Great Hall Landing Cradle is below High Above.  "[if the player is Constance]The Landing Cradle of the Great Hall spreads out over nearly a quarter of the vast building.  During your time here, you learned this was so that when a number of important guests and their retinues arrive at the same time, they can land simultaneously, instead of one after the other, which some would invariably take as meaning 'in order of importance'.

The [Great Hall doors] are on the west side of the landing cradle, and unguarded.  To the north is the Royal Quarters and Gardens, the Librum to the east, and as always, you can return to the skies or descend to the forest.[otherwise]The Landing Cradle of the Great Hall was the first you ever saw of this Aerie, when you arrived ten years ago in the entourage of a Waterfowl delegation.  You were impressed by the [Great Hall doors], large enough to comfortably accomodate even the largest of your distant kin, and the diversity of clans here to meet you was equally fascinating.

To the north is the Royal Quarters and Gardens, the Librum is to the east, the doors to the Great Hall are west, and if your wings are up for it, you could return to the skies and fly up (where Constance circles) or back down to the forest floor.";

The Great Hall doors are doors in Great Hall Landing Cradle.  They are plural-named.  The printed name is "huge double doors of the Great Hall".  They are closed and locked.  They are inside from Great Hall Landing Cradle and outside from Upper Great Hall.  The description is "The huge [if open]open[otherwise]closed[end if] double doors are canted hatches that lead from the giant landing cradle into the Great Hall itself.  They are adorned with fine scrollwork[if the player is Constance] whose broad swoops and curls branch off into even finer swoops and curls, even down to the level of detail that only a Falcon Clan like yourself could see.  The Throckwright who grew this must have been an archmaster[end if]."  Understand "huge/door/double/canted/hatch/hatches/fine/scrollwork/broad/swoops/curls/finer/giant/landing/cradle" as the Great Hall doors.

First check opening barred great hall doors:
	say "[closed-great-doors]" instead;

To say closed-great-doors:
	say "You pull at the doors, but not only [if the great hall doors are locked]are[otherwise]were[end if] they locked, but barred as well.  You [if the player is Horatio]vaguely [end if]remember the bar used to sit to one side of the doors inside the hall, gathering dust";
	if the player is Constance and Everything Opens has happened:
		say ".  You suppose rezrov must unlock and open, but not unbar?  The doors give slightly and the bar rattles, but the doors refuse to open.";
	otherwise if the player is Horatio:
		say ".  Rezrov doesn't unbar doors; you'll have to have Constance come back here with rudenj.";
	otherwise:
		say ".  The doors give slightly and the bar rattles, but the doors refuse to open.";

Last Check going Great Hall doors during Being Chased:
	say "You fly through the door, and immediately regret your decision.  In an instant, the Raven Guard has followed you, and you simply don't have any room to maneuver.";
	end the story saying "You have been captured.";

First check opening a closed door during Being Chased:
	say "The Raven Guard is not going to stop chasing you to give you enough time to open [the noun].  Though perhaps if you explained that you only wanted to go into an enclosed space so they could better surround and capture you, they'd consider it?" instead;

The Great Hall doors can be barred.  The great hall doors are barred.

A wooden bar is in Upper Great Hall.  It is loose.  "The wooden bar that once held the Great Hall doors shut lies here, discarded.".  The description is "A large wooden oak bar, used to keep the double doors of the Great Hall closed."  Understand "large/oak" as the wooden bar.

Check taking the wooden bar when Everything Falls is not happening:
	say "The wooden bar is much too heavy to lift by yourself." instead;

Check inserting the wooden bar into the rucksack:
	say "The wooden bar is much to large to fit in the rucksack." instead;

After pushing the wooden bar when the location is Upper Great Hall:
	move the wooden bar to Lower Great Hall;
	say "You push the wooden bar over the edge of the platform, and it crashes to the great floor below." instead;

After taking the wooden bar:
	now the wooden bar is not following;
	continue the action;

Before going inside from Great Hall Landing Cradle:
	try entering Great Hall doors instead;

Instead of going nowhere from Great Hall Landing Cradle:
	if the noun is west, try entering the Great Hall doors;
	otherwise say "From here, you can go north to the Royal Quarters and Garden, east to the Librum, enter the Great Hall itself to the west, or, as always, ascend to the skies or descend to the forest."

hall_open is an achievement in the Void.  The printed name is "Bar None".  The description is "Get the barred and locked doors of the Great Hall open[if helped] (with a little help from your former associates)[end if].".  hall_open can be helped.  hall_open is not helped.

bar_follow is an achievement in the Void.  The printed name is "Fly Quickly, and Tow A Big Stick".  The description is "Fend off the Raven Guard with a huge wooden bar.".

Holy Flying Bars is a recurring scene.  Holy Flying Bars begins when the wooden bar is following and bar_follow is not in the Trophy Room.  Holy Flying Bars ends when the wooden bar is not following.

When Holy Flying Bars begins:
	if the most_recent of the Trophy Room is nothing:
		now the most_recent of the Trophy room is bar_follow;

Every turn during Holy Flying Bars:
	if the most_recent of the Trophy Room is nothing:
		now the most_recent of the Trophy room is bar_follow;


The Halls Are Alive is a scene.  The Halls are Alive begins when the great hall doors are open.  The Halls Are Alive ends when the player is in Upper Great Hall.

Every turn during The Halls Are Alive:
	if the most_recent of the Trophy Room is nothing:
		now the most_recent of the Trophy Room is hall_open;


Upper Great Hall is a room. "[if the player is Constance]There is a small platform just inside the [Great Hall doors], and that's it.  The platform is lined with a single elegant grown-mahogany branch that wraps around the whole platform.  It varies in size and thickness, so that all types of feet fit somewhere along it, so people can comfortably launch themselves into the air to glide down to the floor level, or grab it for stability as they return[otherwise]The small platform just inside the [Great Hall doors] overlooks the hall below, with plenty of space for people of all sizes and shapes to comfortably launch themselves from a smoothly-grown mahogany branch, wrapping around the whole platform[end if]."

The platform is scenery in Upper Great Hall.  "[if the player is Constance]The grown mahogany branch around the platform is a masterpiece of Throckwright engineering.  Not a single delegate or guest ever had problems looking regal as they launched themselves from an appropriate spot[otherwise]You touch the great mahogany branch at the edge of the platform and can just barely hear the echo of the song that grew it, still pulsing in its veins[end if]."  Understand "grown/mahogany/branch/masterpiece/spot/feet/grown-mahogany/elegant" as the platform.

First check entering platform:
	say "[if the player is Constance]You step forward and grip the branch with your talons at your favorite spot.  It's oddly satisfying, and reminds you of times as a kid you'd sneak up here and watch official ceremonies below[otherwise]You step forward to the branch, automatically gravitating to the same spot you launched yourself from the first time you visited.  It's a solid, reassuring spot[end if]." instead;

Instead of going nowhere from upper great hall:
	if the noun is up:
		Try entering the Great Hall doors;
	otherwise if the noun is east:
		Try entering the Great Hall doors;
	otherwise:
		say "From here you can go down, or back out to the east.";


Down from Upper Great Hall is Lower Great Hall.

Report going down from Upper Great Hall:
	say "[if the player is Constance]You step on to your favorite spot on the mahogany branch, and launch yourself downward in a graceful glide[otherwise]You spread your wings to their full extent before launching yourself downward.  You muscles protest, but even just being able to glide again is heavenly[end if].";

Lower Great Hall is a room.  "[if the player is Constance]When not prepared for a particular occasion, like now, the floor of the Great Hall is cleared of everything extraneous.  The exposed floor is absolutely exquisite, with swooping lines interspersed with starbursts, all in multicolored woods of all hues.  What doesn't change about the Great Hall floor is the display nooks along the sides: at least twenty nooks containing all manner of artifacts from around the world[otherwise]The floor of the Great Hall is cleared of the myriad perches and decorations that are brought out for visiting delegations.  It breathes potential, bursting with what it could be, if only.  You wonder if there would even be enough staff to prepare it for a new delegation, with so many sick.  Not that delegations are common, nowadays.

In the display nooks around the edges of the hall are all manner of artifacts from across many ages[end if]."

Various artifacts are scenery in Lower Great Hall.  The description is "[If the player is Constance]Old things, new things, distant things, close things[otherwise]You could spend weeks in here if you were allowed, just cataloguing and recording your impressions of all the artifacts that fill the nooks surrounding the floor.  But right now, all you wanted to do was check to make sure the cloaks were still here[end if]." Understand "old/things/new/distant/close/nook/nooks/twenty" as various artifacts.

The exposed floor is scenery in Lower Great Hall.  The description is "[if the player is Constance]As a kid, you and the now-queen would come in here when it was cleared out like this and make up endless games to play on the patterned wood[otherwise]You don't think you've ever seen this floor exposed like it is now.  It's pretty[end if]."  Understand "exquisite/swooping/lines/starbursts/multicolored/woods/wood" as the exposed floor.

Instead of going nowhere from lower great hall:
	say "The only way out of here is to fly back up to the upper platform.";

Instead of taking various artifacts:
	say "[if the player is Constance]There's a lot of stuff here, but it's all ceremonial or decorative[otherwise]You would love to.  But just the cloaks.  When Constance is here[end if].";

Instead of entering various artifacts:
	say "The nooks are designed to hold the artifacts, and don't have extra space.";

Instead of searching various artifacts:
	say "[if the player is Constance]You poke through the various artifacts, but don't see anything that seems immediately useful[otherwise]Your eyes wander regretfully over the treasure trove of history on display here.  If only you have more time[end if]."

The two cloak posts are fixed in place in Void.  They are plural-named.   Understand "ancient/hunting/post" as two cloak posts.  [The description is "[what's on the posts]"]

Horatio in the House is a recurring scene.  Horatio in the house begins when the player is Horatio and the location is Upper Great Hall.  Horatio in the house ends when the location is Great Hall Landing Cradle.

When Horatio in the House begins:
	move the cloak posts to the Lower Great Hall;

When Horatio in the House ends:
	move the cloak posts to the Void;

Rule for printing a locale paragraph about the posts:
	say "In one of the nooks are two posts, designed for displaying ancient hunting cloaks";
	if the cloak is in the posts:
		if the cloak is purple:
			say ", with two purple hippotomai cloaks hung from them[if the player is Horatio], right where they should be[end if].";
		otherwise:
			say ".";
	otherwise:
		say ".";
	now the posts are mentioned;
	rule fails;


Check examining the posts:
[To say what's on the posts:]
	if the cloak is in the posts:
		if the cloak is purple:
			say "Two purple cloaks" instead;
		otherwise:
			say "Two posts for displaying cloaks." instead;
	otherwise:
		say "Two posts for displaying cloaks." instead;

Instead of touching the two cloak posts:
	if the hunting cloak is on the posts:
		snatch the cloak;
		rule fails;

Check taking the cloak:
	if the cloak is on the two cloak posts:
		snatch the cloak instead;

Check touching the cloak:
	if the cloak is on the two cloak posts:
		snatch the cloak;
		rule fails;

To snatch the cloak:
	if the player is Horatio:
		say "You verify that the cloaks are actually here, but leave them alone.  [if No More Purple is happening]When you couldn't see them, you worried that they might actually have been moved, but no--Constance's ingenuity meant that she's already activated igram.  [end if]With any luck, the drama of being able to see what igram does in person will cancel out the inherent ridiculousness of igram.";
	otherwise if the cloak is on the two cloak posts:
		move the cloak to the player;
		if the cloak is invisible:
			say "You reach for the post, and feel the cloak you saw.  With a sense of wonderment, you pick it up.  Next to you, Horatio picks up the other, equally-invisible cloak.";
		otherwise:
			say "You reach out and pick up the cloak.  It seems none the worse for wear from having been invisible.  Next to you, Horatio picks up the other.";



The hunting cloak is a wearable object on the cloak posts.  The hunting cloak can be purple or invisible.  The hunting cloak is purple.  The description is "[hunting cloak description]."  Understand "hippo/hippotomai/dark/purple/variegation/camouflage/camoflage/cloaks" as the hunting cloak.  The printed name of the hunting cloak is "[if the hunting cloak is purple]purple[otherwise]invisible[end if] hunting cloak".

To say hunting cloak description:
	if the player is Constance:
		if the hunting cloak is on the cloak posts:
			if the hunting cloak is purple:
				say "A plaque by the cloaks claims that in prehistoric times, people made these cloaks out of hippotomai skins to mask their scent.  The dark purple variegation also helped with camouflage.  You couldn't fly with them on, but some prey had gotten extremely adept and spotting flying enemies, so hunters took to sneaking up on foot";
			otherwise:
				say "The cloak posts appear to be empty";
		otherwise:
			if the hunting cloak is purple:
				say "In prehistoric times, people apparently made these cloaks out of hippotomai skins to mask their scent.  The dark purple variegation also helped with camouflage.  You couldn't fly with them on, but some prey had gotten extremely adept and spotting flying enemies, so hunters took to sneaking up on foot.  On foot![nb]";
			otherwise:
				say "You can feel the supple folds of the cloak, but cannot see it at all";
	otherwise:
		say "These hunting cloaks date back to aboriginal times, perhaps even earlier than the capsae and scrolls.  The tough dark purple hippotomai skins they're made of meant they were cumbersome to wear, but would last forever.  You believe several different clans had to cooperate to make them, as no one clan posessed the skills, dexterity, and toughness necessary to both hunt the hippotomai and put the cloaks together";

Does the player mean doing anything with the hunting cloak:  it is very likely.

Does the player mean opening the hunting cloak:  it is unlikely.
Does the player mean closing the hunting cloak:  it is unlikely.

Check wearing the cloak:
	if the location is in_forest:
		say "You wouldn't be able to fly back up!" instead;
	if the location is High Above:
		say "Might I remind you that you can't fly with that cloak on?  And that you are currently [i]very high[r] in the air?" instead;

Section Librum

Librum Landing Cradle is east of Great Hall Landing Cradle.  "[if the player is Constance]The Landing Cradle of the Librum is beautifully set with interlocking redwood and pine, suggesting shelves of books.  The [Librum Door] leads inward to the Librum itself.

To the west is the Great Hall, and to the northwest is the Royal Quarters and Gardens.  You can also re-ascend to the skies or descend to the forest below.  The door to the Librum is to the east[otherwise]For the last ten years, this place has been the focus of your subconscious.  Always knowing where capsae are can be wearing when you're this close for so long.  Every time one would be taken out for training, every time one would be moved for cleaning, every time their display case was bumped, it was a little 'ding' for your subconscious mind to notice, and probably pass up to your conscious mind, because, let's face it, there wasn't a lot else to notice from that cell.  The Librum was always the focus.  Until Constance.

From here, the Great Hall is west, the Royal Quarters northwest, and the [Librum Door] east (though guarded).  Or you could fly off again, either up or down[end if]."

Up from Librum Landing Cradle is High Above.
Down from Librum Landing Cradle is in_forest.
East from High Above is Librum Landing Cradle.

Instead of going nowhere from Librum Landing Cradle:
	if the noun is east:
		try entering Librum Door;
	Otherwise:
		say "From here, the Great Hall is to the west, the Royal Quarters and Gardens are to the northwest, and the doors to the Librum are east.  You can also fly up again, or descend to the forest below."

The Librum Door is a door in Librum Landing Cradle.  It is closed and locked.  It is inside from Librum Landing Cradle and outside from Librum Itself.  The description is "A canted [if open]open[otherwise]closed[end if] hatch to the Librum, on the east side of the landing cradle."

First Check opening a closed Librum Door:
	if the lone guard is in the location:
		if the player is Constance:
			say "The guard is entirely too watchful to let you do that[if Momentum is happening], even going as fast as you are[end if]." instead;
		otherwise:
			say "Right.  An old buzzard, facing off against a fresh-beaked Raven Guard, and an Ikniq, at that.  You'll leave opening the door to rezrov."

First Check unlocking a locked Librum Door with:
	if the lone guard is in the location:
		if the player is Constance:
			say "The guard is entirely too watchful to let you do that." instead;
		otherwise:
			say "Right.  An old buzzard, facing off against a fresh-beaked Raven Guard, and an Ikniq, at that.  You'll leave opening the door to rezrov."

Before going inside from Librum Landing Cradle:
	try entering Librum Door instead;

Last Check going Librum Door during Being Chased:
	say "You fly through the door, and immediately regret your decision.  In an instant, the Raven Guard has followed you, and you simply don't have any room to maneuver.";
	end the story saying "You have been captured.";


Check entering Librum Door:
	if the player is Constance:
		if the lone guard is in the location:
			if Horatio is in the location:
				if Momentum is happening:
					say "Using the extra speed from your dive, you quietly plunge through the Librum door behind the distracted guard, pulling up sharply on the other side before crashing into anything.";
				otherwise if Super-Momentum is happening:
					say "With everything sped up, including (presumably) the guard's reactions, you try to be as precise as you can, entering exactly behind her, straight for the far corner of the door.  You needn't have bothered.  Horatio is talking a mile a minute, and his annoyingness level must have quintupled, as every feather on the guard's back is sticking out at various odd angles.  You swoop in and land inside with ease.";
				otherwise if the thickness of the grey mist is at least 10:
					say "The thicker mist conceals your gliding approach from the distracted guard, as you carefully glide in, tuck your wings in at the last second, and land quietly inside.";
				otherwise if Go go go is happening:
					say "Horatio's distraction patter has doubled in speed, which in and of itself is something to behold, but the guard's irritation factor seems to have quintupled in annoyance in response, which is, quite frankly, hilarious: every feather on the guard's back is sticking out at various odd angles.  You watch until the guard starts making a quiet keening sound with her eyes closed, and you glide in from above and behind her, unseen.";
				otherwise:
					say "Horatio is distracting the guard by discussing [one of]the ethics of a monarchy[or]his grandchildren[or]regrettable fashion choices from the youth of today[or]whether the dot on the back of looks infected[or]how to get to moncrepistan (is that a real place?) from here[or]whether her mother was the Isabella he once knew[or]some meandering story about flying to the park[cycling], but you can't just [i]glide in[r]." instead;
			otherwise:
				say "The guard is entirely too watchful to let you do that." instead;
		otherwise if the location is Librum Itself:
			[*Leaving* the Librum.  We'll assume the guard and Horatio are still outside.  And, sigh, not make this a puzzle.]
			say "Listening to Horatio talk with the guard, you enter the shadows just inside the Librum door, where you can watch the guard but not be seen.  When the moment is right, you launch yourself through, and back up into the safety of the mist.";
	otherwise:
		[We're Horatio]
		say "You spent so much time in the Librum those first few months, before the previous queen imprisoned you.  You'd love to return, to see what's changed; to revisit some of your favorite books.  Maybe soon, again?  For now, there's a guard.  She won't let you in.  You're going to have to get Constance to do it." instead;

Check closing the purple capsa of opening when the location is the Librum Itself:
	say "The guard would close the door again, and you'd be trapped!
	
	[i]Are you one of my testers?  It feels like you're one of my testers.  If you're not, you should be one of my testers.  Give me a call.  -LS[r][lb]" instead.

A lone guard is a woman in Librum Landing Cradle.  "A lone Raven guard stands in front of the door, dark eyes shifting as she watches the mist."  The description is "[lone_guard_desc]."  Understand "raven/dark/eyes/wing/wings" as lone guard.

To say lone_guard_desc:
	if the player is Constance:
		say "The raven guard wears the well-fitting uniform of the Queen's Guard, complete with a small red insignia on her shoulder.  The silvered knives on her talons are retracted while she stands, and golden razors line her beak[if the collection of tiny padlocks is in the Void].  Oddly, her uniform seems to be covered with... tiny closed padlocks?  That's not the insignia of any order you know[end if].";
	otherwise:
		say "You wouldn't be surprised if this lovely young dangerous woman was a fledgling when you arrived, lo these ages past.  Now she's doing a bang-up job of keeping you and Constance out of the Librum.  Fortunately, she looks polite, like she wouldn't arrest a kindly old buzzard for talking her ear off while a certain Falcon Clan slips in to the Librum behind her[if the black capsa is not enclosed by the Librum itself].  You're kind of glad you won't have to exploit her like that, as Constance seems to have extricated the black capsa on her own already[end if]";

The well-fitting uniform is worn by the lone guard.  The description is "[if the player is Constance]Her uniform consists of loose straps, designed to fit precisely under flagfeathers and provide support while not hampering movement nor flight.  The insignia on her shoulder reads 'Ikniq' under an icon of a tongue of fire: the logo of the fire warriors[otherwise]You wonder if this young guard knows the Ikniq fire insignia on her shoulder was first used by Heron Clan warriors, two centuries ago[end if]."  Understand "loose/straps/under/support/insignia/shoulder/ikniq/icon/fire/warrior/warriors" as well-fitting uniform.

Tiny closed padlocks are part of the well-fitting uniform.  The description is "[if the player is Constance]Yes, those are definitely tiny padlocks, each attached to small leather loops stitched to her uniform.  You peer more intently.  The stitching where the loops attach is definitely newer than the stitching on the rest of the uniform.  They must have been added recently[otherwise]Those tiny padlocks must be a rezrov-detection system.  The queen must have had her top people working on it, knowing Constance would return[end if]."  Understand "stitching/loops/attach/padlock" as the tiny closed padlocks.

A small collection of tiny padlocks are in the Void.  They are plural-named.  "In the cradle [if Being Chased is happening]where the guard was[otherwise]next to the guard[end if] is a small collection of tiny padlocks, each open."  The small collection of tiny padlocks are loose.  The description is "[if the player is Constance]Several tiny padlocks, each one opened.  Cheap light metal that could easily be bent open, so you suppose their only purpose is to serve as notice that rezrov was activated[otherwise]A collection of tiny, cheap 'padlocks', each designed to close and open and that's it--useless for actually holding anything together, but perfect for detecting the wave of magic from the rezrov scroll when its capsa opens.  You wonder if similar detection systems could be used to detect the waves of magic from other scrolls.  Maybe all magic flows outward at the same rate, but maybe not?  You don't think anyone's ever tried to measure it before[end if].".  Understand "padlock/light/metal/lock/locks" as the small collection of tiny padlocks.

Silvered knives are worn by the lone guard.  The description is "[if the player is Constance]Silvered knives, retracted now, but extendable at will[otherwise]The silvered knives the Ikniq warrior wears are basically the same design as they've been for a century.  And as effective as they've been for a century[end if]."  Understand "silver/retracted/retractable/extendable" as silvered knives.

Golden razors are worn by the lone guard.  The description is "[if the player is Constance]The golden razors increase the Queen's Guard fighting abilities, allowing them to slash with their beaks as well as sharpening their bite[otherwise]The golden razors worn on the guard's beak look impressive, but they only work well with a particular fighting style.  You'd guess they'll only be in fashion for a few years, before people realize that if you have to fight in a highly-constrained way, it's much easier to learn how to defend yourself against it[end if]."

After dropping the small collection of tiny padlocks:
	if the location is the Librum Landing Cradle and the lone guard is in the location:
		say "As you pass by overhead, you drop the tiny padlocks so they'll land near the guard, then disappear into the mist.  You hear an angry song of fire behind you, as she tries to burn your mist away, but it holds.  You chuckle to yourself." instead;

answering the lone guard that something is talking your way past.
telling the lone guard about something is talking your way past.
asking the lone guard about something is talking your way past.
asking the lone guard for something is talking your way past.
chatting the lone guard is talking your way past.

instead of talking your way past:
	if the player is Constance:
		say "If you spoke at all, she would be on you in a heartbeat.";
	otherwise:
		say "You have plenty of stories to tell this young woman, but they aren't endless.  Better to wait until Constance is ready to take advantage of you distracting her, before the guard gets bored and starts watching the mist again.";

Instead of attacking the lone guard:
	if the player is Constance:
		say "Against those talons?  Not a good idea.";
	otherwise:
		say "Even in your youth, you wouldn't have lasted long against a trained warrior.";

Instead of kissing the lone guard:
	if the player is Constance:
		say "You're not a huge fan of getting your beak slashed by razors.";
	otherwise:
		say "You do give off a grandfatherly aura, but the sharpness of her gaze tells you it wouldn't be nearly enough.";

Instead of showing something to the lone guard:
	if the player is Constance:
		say "If you showed yourself at all, she would be on you in a heartbeat.";
	otherwise:
		say "You'd rather hold off on your distraction arsenal until Constance is ready to take advantage of it.";

Instead of giving something to the lone guard:
	if the player is Constance:
		say "If you showed yourself at all, she would be on you in a heartbeat.";
	otherwise:
		say "You'd rather hold off on your distraction arsenal until Constance is ready to take advantage of it.";

Instead of waking the lone guard:
	if the player is Constance:
		say "She's... not asleep?  I suppose you could awaken her to the idea of your presence, though that seems decidedly unhelpful.";
	otherwise:
		say "She's plenty alert already!"


Librum Itself is a room.  The printed name is "Librum".  "The Librum contains two levels of scrolls and books, with easy access to all of the curving shelves, and plenty of reading roosts with natural and artificial lighting.  You know from your childhood where the best roosts are, and what sections contain the most exciting stories.  In the center of the lower room is a lavish display case, now hastily boarded over, which three days ago held the purple, gold, and red capsae.  The [Librum door] is back up at the top level."

Librum contents are scenery in Librum itself.  "The worst part about this room is the shadows of all the memories spent here in the company of the now-queen."  Understand "two/levels/scrolls/books/access/curving/shelves/reading/roosts/natural/artificial/lighting/childhood/sections/exciting/stories/worst/shadows/memories/queen/now-queen" as the Librum contents.

The lavish display case is scenery in Librum Itself.  "The boarded-over display case, like many of the shelves, was grown here as a permanent fixture.  It hasn't always displayed capsae, but there was always something to show off.  Well.  Until now."  Understand "boarded/over/boarded-over/display/case/grown/permanent/fixture" as the lavish display case.

Instead of going nowhere from the Librum Itself:
	If the noun is up or the noun is west:
		try entering the Librum Door instead;
	otherwise:
		say "You can exit the Librum by going up, out the door." instead;

Before going outside from the Librum Itself:
	try entering the Librum Door instead;

Instead of opening the display case:
	say "[one of]On a whim, you pull back a board to see if anything's in the display case.  There is.  Jewels and money.  At an estimate, maybe a quarter of the queen's personal treasury.  You shake your head, disgusted.  Well, that's why this building was being guarded[or]You don't need [i]money[r].  What you're after is much more valuable to your community[stopping].";

Section Royal Gardens

Royal Gardens is a room. It is north of Great Hall Landing Cradle, and northwest of Librum Landing Cradle.  "[if the player is Constance]The Royal Gardens is the most lavishly opulent and sensuous entrance to any aerie you've seen in your life.  Trees, vines, and flowers of every variety spring up from everywhere, each seemingly placed in the exactly appropriate spot.  The landing cradle next to the [garden door] to the Royal Quarters themselves is nestled between gracious arcs of poplar trunks, each bedecked with shaded and inviting roosts.  Which, as you know from your childhood days swooping and laughing through these gardens, invariably contain at least eight guards.  Probably ten or more today.

From here, you can return to the skies or descend to the forest.  The Great Hall is to the south, and the Librum to the southeast.  The door to the very-guarded Royal Quarters is to the north[otherwise]All the vegetation throughout the Royal Garden is much, much more vibrant than you remember it being a decade ago.  But things are subtly off-kilter:  a rose bush with too-large roses that has to be propped up with almost-hidden forked sticks.  A roost canted at an odd angle from its tree bending south.  Fireball bromeliads threatening to strangle their host hickory trees, despite signs of agressive pruning.  You felt taclor being moved to the Royal Quarters a little over a year ago, and it's been active ever sense.  The foliage is out of balance.

The Great Hall is south of here, the Librum southeast, and the well-guarded [garden door] north.  Above, Constance circles in the fog, and the forest floor is beneath[end if]."

Up from Royal Gardens is High Above.
Down from Royal Gardens is in_forest.
North from High Above is Royal Gardens.

Instead of going nowhere from Royal Gardens:
	if the noun is north:
		try entering garden door;
	otherwise:
		say "From here, you can fly south to the Great Hall, or southeast to the Librum. You can also fly up to the skies, or down to the forest.  The guarded doors to the Royal Quarters are to the north."

The royal landing cradle is scenery in Royal Gardens.  The description is "[if the player is Constance]The cradle's aesthetics have suffered somewhat from having to be re-grown every time the royal insignia changes, but it's still tastefully lavish[otherwise]The royal insignia on the cradle is an interesting amalgamation of of the traditional Red Wing crest, overlaid on elements of several other clan crests, conveying that the Red Wings are over but also supported and held up by a large diverse community of people[end if]."  Understand "aesthetics/insignia/opulent" as the royal landing cradle.

The poplar trunks are scenery in Royal Gardens.  The printed name is "[if the player is Constance]poplar trunks[otherwise]foliage[end if]".  The description is "[if the player is Constance]The poplars around the landing cradle contain five guards that you can see (since you know where to look), and almost certainly at least another five that you cannot (since you know where you can't look)[otherwise]The foliage is overgrowing and out of balance.  But it's undeniably vibrant[end if]."  Understand "arcs/shaded/inviting/roosts/guards/guard/eight/five/ten/rose/roost/tree/trees/Fireball/bromeliads/bush/pruning" as the poplar trunks.

The flowers_and_vines are scenery in Royal Gardens.  The printed name is "flowers and vines".  The description is "The particular varieties of flowers have changed over the years, but not their beauty."  Understand "flower/flowers/vine/vines/quarters/garden/gardens" as the flowers_and_vines.  Understand "flowers and vines" as the flowers_and_vines.

The garden door is a door in Royal Gardens.  It is closed and locked.  It is inside from Royal Gardens and outside from Palace.  The description is "[garden_door_desc]."

To say garden_door_desc:
	if the player is Constance:
		say "A canted [if open]open[otherwise]closed[end if] hatch to the Royal Quarters, nestled in the center of the garden.  Absolutely surrounded by guards";
	otherwise:
		say "Beyond the canted hatch is taclor, tantalizingly closer than it's been in years.  But you'll need Constance's help.";

First Check opening a closed Garden Door:
	if the player is Constance:
		say "There are way too many guards for that to have any chance of working." instead;
	otherwise:
		say "Even if the guards were in the habit of admitting locked-up heretics into the Royal Quarters, what then?  The queen would still hold taclor.  You need Constance.";

First Check unlocking a locked Garden Door with:
	if the player is Constance:
		say "There are way too many guards for that to have any chance of working." instead;
	otherwise:
		say "Even if the guards were in the habit of admitting locked-up heretics into the Royal Quarters, what then?  The queen would still hold taclor.  You need Constance.";

Before going inside from Royal Gardens:
	try entering Garden Door instead;

Last Check going Garden Door:
	if the player is Constance:
		If Being Chased is happening:
			say "You fly through the door, and immediately regret your decision.  Not only does the Raven Guard who were chasing you follow, but so do the guards that stayed behind to guard, well, this door.";
			end the story saying "You have been captured." instead;
		otherwise if Sneaking is not happening:
			say "No way.  It wouldn't matter how fast you were or how thick the mist was.  You just can't get in there as you are without someone seeing you." instead;
		otherwise if the hunting cloak is purple:
			say "Not only would you be caught, but you'd be humiliated for your entire life for being caught walking, wearing an ancient purple cloak." instead;
	otherwise:
		say "You think you can make it in, but only with Constance, igram, and the cloaks.  Constance first." instead;

After going Garden Door:
	say "OK.  Walking.  Right.  You raise yourself up on the tips of your talons, feeling ridiculous, but not wanting to flatten the grass with your (shudder) footsteps and give yourself away.  You wait for one of the guards to pass, then carefully take cautious steps towards the door.  Nobody reacts.  Hardly daring to breathe, you proceed further, antsy and ready to take to the skies any second.  Which wouldn't work, because you have this damn cloak on.  Whatever.  Two more steps.  You reach the door.  You hop (shudder) across the lintel.
	
	You're in.
	
	A few more steps, and a voice behind you whispers 'We should take the second hallway.' You nearly yelp, but stop yourself.  You knew Horatio would be here.  You were expecting him.  Right.
	
	You take a deep breath.  'Lead on,' you whisper back.
	
	'I can't; I'm invisible.  I will tell you where to go, and follow you,' he replies.  Right.[bstars]";
	wait for any key;
	clear the screen;
	say "You make your way, with Horatio's direction, through the Royal Quarters.  A time or two Horatio leads you to a place you'd have to fly to get past, but you know this place well, and even though you never walked anywhere, you still know the walking ways.  There's fewer guards to avoid than you expected, meaning that the queen either has them all outside guarding the entrance, or she just doesn't have them to spare.
	
	As you get closer to your objective, a growing sense of unease forms in the pit of your stomach.  One by one, you pass all the places you pegged as most likely for it to be: the throne room, the vault, even storerooms.
	
	Then:  'This is it,' says Horatio.
	
	Oh no.";
	wait for any key;
	Move Horatio to Nursery_door;
	Now Horatio is stage five;
	Move the player to Nursery_door;
	now the most_recent of the Trophy Room is snuck_in;
	stop the action;

Palace is a room.  "If you're seeing this, I either haven't finished writing the finale, or you found a bug.  Hopefully, you're a tester, and that's your job.  Thank you!  Come back for a later version with the finale!";

Nursery_door is a room.  The printed name is "Nursery Door".  "You're standing in a hallway, just south of the nursery door, to the west.  The door is open.  All the doors have been open.  You can't see inside yet.  Your heart pounds in your chest."

Instead of going nowhere from Nursery_door:
	say "The nursery is to the west.  The scroll of health is to the west.  [i]Health[r].  Taclor.";

Check going west from Nursery_door:
	if the hunting cloak is worn:
		say "'Horatio,' you whisper.  You feel a tap on your shoulder in response.  'I can't go in there wearing this cloak.  I just can't.'
		
		A pause.
		
		'Then take it off,' he replies." instead;

After taking off cloak in Nursery_Door:
	say "You take a deep breath and take off the cloak.  Next to you, Horatio takes his own cloak off as well.";
	stop the action;

After going west from Nursery_door:
	move Horatio to the Nursery_itself;
	continue the action;

Snuck_in is an achievement in the Void.  The printed name is "The Old Cruising Grounds".  The description is "Make it back inside the Royal Quarters.";




Nursery_itself is a room.  It is west of Nursery_door.  It is northwest of Nursery_door.  The printed name is "Nursery".  "The Nursery is not exactly how you remember it.  It was set up to grow new walls and furniture over time, to keep any occupant engaged and growing.  But the rhythm of it is baked into your bones.  The place for the roosts, along the north wall.  The [desk], grown to the size of the user.  The endless parade of ropes and balls and other toys along the south, some grown and some brought in.  The giant [window] to the west, overlooking the beautiful, beautiful forest."

The roosts are scenery in Nursery_itself.  The description is "[You and aubrey] would swing from roost to roost, competing to see who could make the most jumps without opening your wings at all."  Understand "roost/north/wall" as roosts.

The_toys are scenery in Nursery_itself.  The description is "[You and aubrey] cycled through so many, many toys.  You would break one by accident, and she would imperiously demand new ones of the guards."  Understand "ropes/balls/rope/ball/south" as the_toys.

The window is an enterable supporter in Nursery_itself.  The description is "Absolutely the best view anywhere.  [You and aubrey] could watch a storm roll in across the sky for hours.  You learned how to enhance the storm to make it more dramatic based on Aubrey's excited trills." Understand "view/best/beautiful/forest" as the window.

The desk is a supporter in Nursery_itself.  The description is "It's smaller now than you ever remember it being.  You never knew her at that age." Understand "small/smaller/grown/user" as the desk.

[To see the capsa, see Pc and Rucksck.i7x!  Sigh.]

To say You and aubrey:
	say "[first time]You and the now-Quee--  No.  [only]You and Aubrey"



Section Forest Below

in_forest is a room.  It is below Great Hall Landing Cradle.  The printed name is "In the Forest".  "[if the player is Constance]The trees below the Royal Aerie grow more closely together than in the rest of the forest, and include a wider variety, so that differently-colored woods could be incorporated into the buildings above.  This makes it harder to navigate down here--or it would if you weren't so amazing at navigation[otherwise]The tightly-growing trees and [horatio mist density] fog surround you tightly.  It would be oppressive, but for the echo of the Throckwright song you can just sense, flowing through the veins of these trees still.  That, and the fact that you've been confined to a single room for a decade, so any contrast is welcome[end if]."

tree_varieties are scenery in in_forest.  The printed name is "trees".  The description is "[if the player is Constance]Birch, pine, redwood, alder, ash, elm, poplar, and probably several other types as well[otherwise]A wide variety of tree types grow up to the Aerie above, each lending its own strength, suppleness, and color to the Royal Aerie grown above[end if]."  Understand "Birch/pine/redwood/alder/ash/elm/poplar" as the tree_varieties.

A fine net is here.  It is fixed in place.  "[if the player is Constance]Even through the mist, your sharp eyes spot a fine net, stretched between the trees.  It seems to be set to prevent anyone from coming up from the forest below[otherwise]The net that caught you stretches in every direction, preventing both entrance to and egress from the rest of the forest[end if]."  The description is "[if the player is Constance]A fine, strong net, stretched between and among the trees[first time].  It wasn't here three days ago, which means they spent a lot of effort... to keep you on the Aerie-side of it.  You grin to yourself[only][otherwise]Even in your cell, you could hear the work being done to install this net.  For all the good it did them.[end if]."

Check taking the net:
	say "Besides being way too large to carry, the net is attached firmly to the trees and branches, not allowing anything larger than a feathers-length through it[if cell door is open].  Though not, you notice, with knots that could be undone by the scroll of Opening.  Everything is just... folded.  Very deliberately[end if]." instead.

Check cutting the net:
	say "Your beak isn't strong enough to cut through the net." instead;

Check attacking the net:
	say "Your beak isn't strong enough to cut through the net." instead;

Up from in_forest is Great Hall Landing Cradle.
North from in_forest is Royal Gardens.
East from in_forest is Librum Landing Cradle.

Instead of going nowhere from in_forest:
	if the noun is down:
		say "The net prevents you from reaching the forest floor.  Fortunately, [if the player is Constance]you're already where you want to be[otherwise]your quarry is above the Aerie, not below it[end if].";
	otherwise:
		say "The net prevents you from reaching the forest floor and from exploring the rest of the lower forest area, but you can go straight up to the Great Hall, east (and up) to the Librum, or north (and up) to the Royal Quarters and Gardens.";

After going from in_forest:
	say "[going_from_forest].";
	continue the action;

To say going_from_forest:
	if the player is Constance:
		say "You gracefully flit between the trees back up [if the noun is north]north [otherwise if the noun is east]east [end if]above the canopy";
	otherwise:
		say "Forcing your tired wings to flap again, you rise above the forest floor, past the level of your cell, up [if the noun is north]north [otherwise if the noun is east]east [end if]above the canopy"

After going to in_forest:
	if the player is Constance:
		If Everything Falls is happening:
			say "You descend towards the forest floor, though it feels like you're flying upwards, against the pull of the scroll of down.";
			now Constance is cruising;
			continue the action;
		Otherwise If Constance is super-fast:
			say "Your wings tighten close to your body as you rocket through the mist, your keen eyesight only barely sufficient to keep you from crashing into branches and trees[first time].
			
			It is, without a doubt, the most thrilling dive of your entire life.
			
			At the last second, you flare your wings, and feel like they're about to rip off of your shoulders.  You skim over the netting, your curved talons juddering across the lines, making your whole body tremble until you pull up again to dodge more tree trunks.  You allow yourself a triumphant cry, safe in the knowledge that nobody could catch you at these speeds.  Nobody[only].";
			continue the action;
		otherwise:
			if Constance is speeding:
				now Constance is super-fast;
			otherwise:
				now Constance is speeding;
				if go go go is happening:
					now Constance is super-fast;
					say "You dive into and through the forest, twisting expertly as you dodge trees and branches.  The fog closes behind you with a quiet 'shhhhmp', leaving no record of your passing.";
				otherwise:
					say "You tuck in your wings and dive down into the forest below the Aerie, dodging tightly-spaced trees with acrobatic precision.";
			continue the action;
	otherwise:
		say "Wings splayed to their full extent, you coast in wide circles, back down to the forest floor.  Or, as close to the forest floor as the net allows.";

Map ends here.

