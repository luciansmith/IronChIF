Map by Iron ChIF begins here.
Use authorial modesty.

Book Map

The Void is a room.  [I like having an 'off stage' room for stuff.]

High Above the Royal Aerie is a clear room.  "[if cloudy]Your summoned mist both obscures you and blocks you from seeing the Royal Aerie.  But you've already memorized its layout,[otherwise]You drift in lazy circles well above the Royal Aerie below, safely above your quarry.  Your acute eyesight lets you see the entire layout,[end if] and how it relates to today's air currents, winds, and thermals.  Royal quarters to the north, well defended by circling Raven clan guards.  The librum to the east.  {LS DEBUG: a few other rooms.  Presumably.  Kitchen, Barracks, Chapel(?), }  In the center of the Aerie (and directly below you) is the Great Hall."

distant_aerie is scenery in high above.  The printed name is "Royal Aerie".  The description is "[if the grey mist is in the location]As you recall, the[otherwise]The[end if] Royal Aerie was grown and shaped by generations of Throckrites, and now towers over the surrounding forest canopy.  Lush shades of browns and reds, often woven together in intricate patterns or pictures, cover every landing cradle and wall."  Understand "royal/aerie/lush/brown/browns/red/reds/woven/patterns/pictures" as distant_aerie.

distant_quarters is scenery in high above.  The printed name is "Royal Quarters".  The description is "[if the grey mist is in the location]As you recall, the[otherwise]The[end if] Royal Quarters is where the Queen and her family, servants, and certain privileged royalty live.  Every huge common room; every small or large individual apartment is awash in greenery that looks incredibly inviting and imperially homey, and is in reality subtly precisely hostile to the uninvited.  Every roof pitch is too steep; no branch nor ridge is graspable by talons of any size.  The single landing cradle in the middle of the gardens is surrounded by stern and beautiful tree crowns, beset with nooks and crevices for unseen guards and archers: attempting to land there would mean instant death for any but those who belong."  Understand "royal/quarters/queen/family/servants/royalty/common/room/apartment/small/large/roof/pitch/branch/ridge/landing/cradle" as distant_quarters.

distant_guards is scenery in high above.  The printed name is "circling guards".  The description is "The last time you were here, the aerie was not nearly on such high alert.  Now there's guards everywhere, but especially focused on circling the royal quarters.".  Understand "raven/circling/guards" as distant_guards.  Understand "raven clan" as distant_guards.

distant_librum is scenery in high above.  The printed name is "Librum".  The description is "[if the grey mist is in the location]As you recall, the[otherwise]The[end if] Librum was your target the last time out, and where you obtained the capsas you brought back with you. Its landing cradle is simply decorated, grown with interlocking redwood and pine in a way that suggests shelves of books.  The reading nooks grown into the sides of the main building proved a reasonable entrance for a creative supplicant; no doubt that method will have been shut down by now."  Understand "librum/landing/cradle/reading/nooks" as distant_librum.

distant_great_hall is scenery in high above.  The printed name is "Great Hall".  The description is "[if the grey mist is in the location]As you recall, the[otherwise]The[end if] Great Hall is by far the largest building in the Aerie complex, and indeed the largest building you've ever seen in your life.  If the stories are true, its planning took three years, and its growth was overseen by three [i]generations[r] of Throckrites.  Every Royal Throckrite since has sought to put their own personal stamp on the Great Hall, leaving it more than a little haphazardly grown by now, but its current form is still impressive, even as it grows less coherent with every new modification."  Understand "great/hall/largest/building/growth/haphazard/haphazardly/coherent/incoherent" as distant_great_hall.

no_mist is scenery in high above.  The printed name is "mist".  The description is "The cloud layer today is too high for a naturally obscuring mist; you'll have to summon it yourself.".  Understand "cloud/layer/mist/high/Heathcliff" as no_mist.

After dropping something in High Above:
	say "[The noun] twists away as it falls below you, towards the Great Hall.";
	Now the noun is in the Great Hall Landing Cradle.

Check going somewhere from High Above:
	if no_mist is in the location:
		say "[one of]If you get any closer to the aerie without summoning mist first, the guards would surely see you.  It's why, as a Bostrat, you were originally chosen to go on this mission[or]You'll need to SUMMON MIST first, to cloak your descent[stopping]." instead.

[Trivia:  'Bostrat' comes from 'Nimbostratus' clouds, aka rain clouds.]

After going from High Above:
	if Starting Off is happening:
		say "You descend in wide circles, pulling mist down with you in what you hope is a sufficiently unsuspicious manner, trusting your memorization of the air currents to tell you where you're going...";
	otherwise:
		now Constance is speeding;
		say "You tuck in your wings and dive down towards the Aerie, thrilling to the misty wind streaming through your feathers.";
	continue the action;

Starting Off is a scene.  Starting Off begins when play begins.  Starting Off ends when the player is not in High Above.

Instead of going nowhere from High Above when the noun is up:
    say "You're already high enough to avoid being seen from below; there's no need to go higher."

Great Hall Landing Cradle is below High Above.  "The Landing Cradle of the Great Hall spreads out over nearly a quarter of the vast building.  During your time here, you learned this was so that when a number of important guests and their retinues arrive at the same time, they can land simultaneously, instead of one after the other, which some would invariably take as meaning 'in order of importance'.

To the north is the Royal Quarters, the Librum to the east, {other places LS DEBUG}, and as always, you can return to the skies or descend to the forest."

An important door is a door in Great Hall Landing Cradle.  It is closed and locked.  It is inside from Great Hall Landing Cradle and outside from Upper Great Hall .

Upper Great Hall is a room. "Congrats!  This is as far as I got.  Thanks for testing!"


Librum Landing Cradle is east of Great Hall Landing Cradle.  "The Landing Cradle of the Librum is beautifully set with interlocking redwood and pine, suggesting shelves of books.  {Probably be more descriptive here LS DEBUG}.

To the west is the Great Hall, and to the northwest is the Royal Quarters.  {also up/down}"

Up from Librum Landing Cradle is High Above.
East from High Above is Librum Landing Cradle.

Another Important Door is a door in Librum Landing Cradle.  It is closed and locked.  It is inside from Librum Landing Cradle and outside from Librum.

Librum Itself is a room.  "Congrats!  This is as far as I got.  Thanks for testing!"



Royal Landing Cradle is a room. It is north of Great Hall Landing Cradle, and northwest of Librum Landing Cradle.  "It's dangerous; you can't do anything here yet. LS DEBUG.  (you can go south, southeast, up, down)"

Up from Royal Landing Cradle is High Above.
North from High Above is Royal Landing Cradle.


in_forest is a room.  It is below Great Hall Landing Cradle.  The printed name is "In the Forest".  "The trees below the Royal Aerie grow more closely together than in the rest of the forest, and include a wider variety, so that differently-colored woods could be incorporated into the buildings above.  This makes it harder to navigate down here--or it would if you weren't so amazing at navigation."

tree_varieties are scenery in in_forest.  The printed name is "trees".  The description is "Birch, pine, redwood, alder, ash, elm, poplar, and probably several other types as well."  Understand "Birch/pine/redwood/alder/ash/elm/poplar" as the tree_varieties.

A fine net is here.  "Even through the mist, your sharp eyes spot a fine net, stretched between the trees.  It seems to be set to prevent anyone from coming up from the forest below."  The description is "A fine, strong net, stretched between and among the trees.  It wasn't here three days ago, which means they spent a lot of effort... to keep you on the Aerie-side of it.  You grin to yourself."

Up from In the Forest is Great Hall Landing Cradle.
North from In the Forest is Royal Aerie.
East from In the Forest is Librum.
West from In the Forest is Great Hall. [LS DEBUG: change on more locations]
South from In the Forest is Great Hall. [LS DEBUG: change on more locations]

After going from In the Forest:
    say "You gracefully flit between the trees back up above the canopy.";

Instead of going nowhere from In the Forest when the noun is down:
    say "The net prevents you from reaching the forest floor.  Fortunately, you're already where you want to be."

After going to in_forest:
	if Constance is speeding:
		now Constance is super-fast;
	otherwise:
		now Constance is speeding;
	if Being Chased is happening:
		say "You tuck in your wings and dive down into the forest below the Aerie, dodging tightly-spaced trees with acrobatic precision.";
	otherwise:
		say "You tuck in your wings and dive down into the forest below the Aerie, dodging tightly-spaced trees with acrobatic precision.";
	continue the action;

Map ends here.

