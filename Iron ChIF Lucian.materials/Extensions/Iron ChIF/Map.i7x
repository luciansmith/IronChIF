Map by Iron ChIF begins here.
Use authorial modesty.

Book Map

The Void is a room.  [I like having an 'off stage' room for stuff.]

High Above the Royal Aerie is a clear room.  "[if cloudy]Your summoned mist both obscures you and blocks you from seeing the Royal Aerie.  But you've already memorized its layout,[otherwise]You drift in lazy circles well above the Royal Aerie below, safely above your quarry.  Your acute eyesight lets you see the entire layout,[end if] and how it relates to today's air currents, winds, and thermals.  Royal quarters to the north, well defended by circling Raven clan guards.  The librum to the east.  In the center of the Aerie (and directly below you) is the Great Hall.  Other royal aeries dot the forest in the distance, but this complex holds your quarry."

distant_aerie is scenery in high above.  The printed name is "Royal Aerie".  The description is "[if the grey mist is in the location]As you recall, the[otherwise]The[end if] Royal Aerie was grown and shaped by generations of Throckrites, and now towers over the surrounding forest canopy.  Lush shades of browns and reds, often woven together in intricate patterns or pictures, cover every landing cradle and wall."  Understand "royal/aerie/lush/brown/browns/red/reds/woven/patterns/pictures" as distant_aerie.

distant_quarters is scenery in high above.  The printed name is "Royal Quarters".  The description is "[if the grey mist is in the location]As you recall, the[otherwise]The[end if] Royal Quarters is where the Queen and her family, servants, and certain privileged royalty live.  Every huge common room; every small or large individual apartment is awash in greenery that looks incredibly inviting and imperially homey, and is in reality subtly precisely hostile to the uninvited.  Every roof pitch is too steep; no branch nor ridge is graspable by talons of any size.  The single landing cradle in the middle of the gardens is surrounded by stern and beautiful tree crowns, beset with nooks and crevices for unseen guards and archers: attempting to land there would mean instant death for any but those who belong."  Understand "royal/quarters/queen/family/servants/royalty/common/room/apartment/small/large/roof/pitch/branch/ridge/landing/cradle" as distant_quarters.

distant_guards is scenery in high above.  The printed name is "circling guards".  The description is "The last time you were here, the aerie was not nearly on such high alert.  Now there's guards everywhere, but especially focused on circling the royal quarters.".  Understand "raven/circling/guards" as distant_guards.  Understand "raven clan" as distant_guards.

distant_librum is scenery in high above.  The printed name is "Librum".  The description is "[if the grey mist is in the location]As you recall, the[otherwise]The[end if] Librum was your target the last time out, and where you obtained the capsas you brought back with you. Its landing cradle is simply decorated, grown with interlocking redwood and pine in a way that suggests shelves of books.  The reading nooks grown into the sides of the main building proved a reasonable entrance for a creative supplicant; no doubt that method will have been shut down by now."  Understand "librum/landing/cradle/reading/nooks" as distant_librum.

distant_great_hall is scenery in high above.  The printed name is "Great Hall".  The description is "[if the grey mist is in the location]As you recall, the[otherwise]The[end if] Great Hall is by far the largest building in the Aerie complex, and indeed the largest building you've ever seen in your life.  If the stories are true, its planning took three years, and its growth was overseen by three [i]generations[r] of Throckrites.  Every Royal Throckrite since has sought to put their own personal stamp on the Great Hall, leaving it more than a little haphazardly grown by now, but its current form is still impressive, even as it grows less coherent with every new modification."  Understand "great/hall/largest/building/growth/haphazard/haphazardly/coherent/incoherent" as distant_great_hall.

distant_others are scenery in high above.  The printed name is "other aeries".  The description is "[if the grey mist is in the location]As you recall, the[otherwise]The[end if] other aeries collectively make up the Royal Complex, each mostly grown by a single corps of Royal Throckrites at some point in your people's history.  But this one is the most important.  The Scroll of Health is here. Somewhere."

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
	otherwise if the player contains an open gold capsa:
		say "You descend towards the Aerie, though it feels like you're flying upwards, against the pull of the scroll of down.";
	otherwise if go go go is happening:
		now Constance is super-fast;
		say "You dive blindingly fast towards the Aerie through the fog, and the mist swallows you with nary an eddy.";
	otherwise:
		now Constance is speeding;
		say "You tuck in your wings and dive down towards the Aerie, thrilling to the misty wind streaming through your feathers.";
	continue the action;

Starting Off is a scene.  Starting Off begins when play begins.  Starting Off ends when the player is not in High Above.

Instead of going nowhere from High Above when the noun is up:
	if Being Chased is happening:
		say "You take to the skies even higher.";
		If the closeness of Being Chased is at least 3:
			Now the closeness of Being Chased is 2;
			Now the starting_line of Being Chased is the Void;
	Otherwise:
		say "You're already high enough to avoid being seen from below; there's no need to go higher."

Check opening a capsa when no_mist is in the location:
    say "Before you mess with powerful artifacts from the dawn of civilization, you should probably conceal yourself.  You're a Bostrat; the plan was to summon a mist." instead;

Great Hall Landing Cradle is below High Above.  "The Landing Cradle of the Great Hall spreads out over nearly a quarter of the vast building.  During your time here, you learned this was so that when a number of important guests and their retinues arrive at the same time, they can land simultaneously, instead of one after the other, which some would invariably take as meaning 'in order of importance'.  The [great hall doors] are on the west side of the landing cradle, and unguarded.

To the north is the Royal Quarters and Gardens, the Librum to the east, and as always, you can return to the skies or descend to the forest."

The Great Hall doors are a door in Great Hall Landing Cradle.  The printed name is "huge double doors to the Great Hall".  They are closed and locked.  They are inside from Great Hall Landing Cradle and outside from Upper Great Hall.  The description is "The huge double doors are canted hatches that lead from the giant landing cradle into the Great Hall itself.  They are adorned with fine scrollwork whose broad swoops and curls branch off into even finer swoops and curls, even down to the level of detail that only a Falcon Clan like yourself could see.  The Throckrian who grew this must have been an archmaster."  Understand "huge/door/double/canted/hatch/hatches/fine/scrollwork/broad/swoops/curls/branch/finer/giant/landing/cradle" as the great hall doors.

Carry out entering Great Hall doors during Being Chased:
	say "You fly through the door, and immediately regret your decision.  In an instant, the Raven Squad has followed you, and you simply don't have any room to maneuver.";
	end the story saying "You have been captured.";

Upper Great Hall is a room. "Congrats!  This is as far as I got.  Thanks for testing!"


Librum Landing Cradle is east of Great Hall Landing Cradle.  "The Landing Cradle of the Librum is beautifully set with interlocking redwood and pine, suggesting shelves of books.  The [Librum Door] leads inward to the Librum itself.

To the west is the Great Hall, and to the northwest is the Royal Quarters and Gardens.  You can also re-ascend to the skies or descend to the forest below."

Up from Librum Landing Cradle is High Above.
Down from Librum Landing Cradle is in_forest.
East from High Above is Librum Landing Cradle.

Instead of going nowhere from Librum Landing Cradle:
	if the noun is east:
		try entering Librum Door;
	Otherwise:
		say "From here, the Great Hall is to the west and the Royal Quarters and Gardens are to the northwest.  You can also fly up again, or descend to the forest below."

Librum Door is a door in Librum Landing Cradle.  It is closed and locked.  It is inside from Librum Landing Cradle and outside from Librum Itself.  The description is "A canted [if open]open[otherwise]closed[end if] hatch to the Librum, on the east side of the landing cradle."

Check opening Librum Door:
	if the lone guard is in the location:
		say "The guard is entirely too watchful to let you do that." instead.

Check unlocking Librum Door with:
	if the lone guard is in the location:
		say "The guard is entirely too watchful to let you do that." instead.

Carry out entering Librum door during Being Chased:
	say "You fly through the door, and immediately regret your decision.  In an instant, the Raven Squad has followed you, and you simply don't have any room to maneuver.";
	end the story saying "You have been captured.";

A lone guard is a woman in Librum Landing Cradle.  "A lone Raven guard stands in front of the door, dark eyes shifting as she watches the mist."  The description is "The raven guard wears the well-fitting uniform of the Queen's Guard, complete with a small red insignia on her shoulder.  The silvered knives on her talons are retracted while she stands, and golden razors line her beak[if the pile of tiny padlocks is in the Void].  Oddly, her uniform seems to be covered with... tiny closed padlocks?  That's not the insignia of any order you know[end if]."  Understand "raven/dark/eyes" as lone guard.

The well-fitting uniform is worn by the lone guard.  The description is "Her uniform consists of loose straps, designed to fit precisely under flagfeathers and provide support while not hampering movement nor flight.  The insignia on her shoulder reads 'Ikniq' under an icon of a tongue of fire: the logo of the fire warriors."  Understand "loose/straps/under/support/insignia/shoulder/ikniq/icon/fire/warrior/warriors" as well-fitting uniform.

Tiny closed padlocks are part of the well-fitting uniform.  The description is "Yes, those are definitely tiny padlocks, each attached to small leather loops stitched to her uniform.  You peer more intently.  The stitching where the loops attach is definitely newer than the stitching on the rest of the uniform.  They must have been added recently."

A small pile of tiny padlocks are in the Void.  "In the cradle next to the guard is a small pile of tiny padlocks, each open.";

Silvered knives are worn by the lone guard.  The description is "Silvered knives, retracted now, but extendable at will."  Understand "silver/retracted/retractable/extendable" as silvered knives.

Golden razors are worn by the lone guard.  The description is "The golden razors increase the Queen's Guard fighting abilities, allowing them to slash with their beaks as well as sharpening their bite."

answering the lone guard that something is talking your way past.
telling the lone guard about something is talking your way past.
asking the lone guard about something is talking your way past.
asking the lone guard for something is talking your way past.

instead of talking your way past:
	say "If you spoke at all, she would be on you in a heartbeat.";

Instead of attacking the lone guard:
	say "Against those talons?  Not a good idea.";

Instead of kissing the lone guard:
	say "You're not a huge fan of getting your beak slashed by razors.";

Instead of showing something to the lone guard:
	say "If you showed yourself at all, she would be on you in a heartbeat.";

Instead of giving something to the lone guard:
	say "If you showed yourself at all, she would be on you in a heartbeat.";

Instead of waking the lone guard:
	say "She's... not asleep?  I suppose you could awaken her to the idea of your presence, though that seems decidedly unhelpful.";


Librum Itself is a room.  "Congrats!  This is as far as I got.  Thanks for testing!"



Royal Gardens is a room. It is north of Great Hall Landing Cradle, and northwest of Librum Landing Cradle.  "The royal gardens is the most lavishly opulent and sensuous entrance to any aerie you've seen in your life.  Trees, vines, and flowers of every variety spring up from everywhere, each seemingly placed in it only appropriate spot.  The landing cradle above the Royal Quarters themselves is nestled between gracious arcs of poplar trunks, each bedecked with shaded and inviting roosts.  Which, as you know from your childhood days swooping and laughing through these gardens, invariably contain at least eight guards. 

From here, you can return to the skies or descend to the forest.  The Great Hall is to the south, and the Librum to the southeast."

Up from Royal Gardens is High Above.
Down from Royal Gardens is in_forest.
North from High Above is Royal Gardens.

Instead of going nowhere from Royal Gardens:
	say "From here, you can fly south to the Great Hall, or southeast to the Librum. The net prevents you from reaching the forest floor from here, but you can go straight up to the great hall, east (and up) to the Librum, or north (and up) to the Royal Quarters and Gardens."

The royal landing cradle is scenery in Royal Gardens.  The description is "The cradle's aesthetics have suffered somewhat from having to be re-grown every time the royal insignia changes, but it's still tastefully lavish."  Understand "aesthetics/insignia/opulent" as the royal landing cradle.

The poplar trunks are scenery in Royal Gardens.  The description is "The poplars around the landing cradle contain five guards that you can see (since you know where to look), and almost certainly another five that you cannot (since you know where you can't look)."  Understand "arcs/shaded/inviting/roosts/guards/eight/five/ten" as the poplar trunks.


in_forest is a room.  It is below Great Hall Landing Cradle.  The printed name is "In the Forest".  "The trees below the Royal Aerie grow more closely together than in the rest of the forest, and include a wider variety, so that differently-colored woods could be incorporated into the buildings above.  This makes it harder to navigate down here--or it would if you weren't so amazing at navigation."

tree_varieties are scenery in in_forest.  The printed name is "trees".  The description is "Birch, pine, redwood, alder, ash, elm, poplar, and probably several other types as well."  Understand "Birch/pine/redwood/alder/ash/elm/poplar" as the tree_varieties.

A fine net is here.  It is fixed in place.  "Even through the mist, your sharp eyes spot a fine net, stretched between the trees.  It seems to be set to prevent anyone from coming up from the forest below."  The description is "A fine, strong net, stretched between and among the trees.  It wasn't here three days ago, which means they spent a lot of effort... to keep you on the Aerie-side of it.  You grin to yourself."

Check taking the net:
	say "Besides being way too large to carry, the net is attached firmly to the trees and branches, not allowing anything larger than a feathers-length through it[if Everything Is Open has started].  Though not, you notice, with knots that could be undone by the scroll of Opening.  Everything is just... folded.  Very deliberately[end if]." instead.

Up from in_forest is Great Hall Landing Cradle.
North from in_forest is Royal Gardens.
East from in_forest is Librum Landing Cradle.

Instead of going nowhere from in_forest:
	say "The net prevents you from reaching the forest floor from here, but you can go straight up to the great hall, east (and up) to the Librum, or north (and up) to the Royal Quarters and Gardens."

After going from in_forest:
    say "You gracefully flit between the trees back up above the canopy.";
	continue the action;

Instead of going nowhere from in_forest when the noun is down:
    say "The net prevents you from reaching the forest floor.  Fortunately, you're already where you want to be."

After going to in_forest:
	if Constance is speeding:
		now Constance is super-fast;
	otherwise if Constance is super-fast:
		say "Your wings tighten close to your body as you rocket through the mist, your keen eyesight only barely enough to keep you from crashing into branches and trees[first time].
		
		It is, without a doubt, the most thrilling dive of your entire life.
		
		At the last second, you flare your wings, and feel like they're about to rip off of your shoulders.  You skim over the netting, your curved talons juddering across the lines, making your whole body tremble until you pull up again to dodge more tree trunks.  You allow yourself a triumphant cry, safe in the knowledge that nobody could catch you at these speeds.  Nobody[only].";
		continue the action;
		stop;
	otherwise:
		now Constance is speeding;
	if go go go is happening:
		now Constance is super-fast;
		say "You dive into and through the forest, twisting expertly as you dodge trees and branches.  The fog closes behind you with a quiet 'shhhhmp', leaving no record of your passing.";
	otherwise:
		say "You tuck in your wings and dive down into the forest below the Aerie, dodging tightly-spaced trees with acrobatic precision.";
	continue the action;

Map ends here.

