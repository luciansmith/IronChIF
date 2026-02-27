Lucian's Scenes by Iron ChIF begins here.
Use authorial modesty.

Book 0 Ongoing Effects

Include Being Chased by Iron ChIF.


Not Recovering is a recurring scene.

Not recovering begins when Constance is wounded and the capsa of opening is open.
Not recovering ends when the capsa of opening is closed.

Not recovering has a number called timer.  The timer of not recovering is zero.

Every turn during Not Recovering:
	if the player is Horatio:
		stop;
	if Horatio is stage three:
		stop;
	if the timer of not recovering is at least six:
		if go go go is happening:
			say "[one of]Your wound continues to bleed.  It's not a huge wound, but the blood is flowing rather quickly[or]Your wound aches.  You look down at it, and it's still open and a fast small trickle of blood drips down your side[or]Your open wound really should have closed by now, but it continues to bleed[stopping].";
		Otherwise:
			say "[one of]Your wound continues to lightly bleed[or]Your wound aches.  You look down at it, and it's still open and bleeding[or]Your open wound really should have closed by now, but it continues to lightly bleed[stopping].";
		now the timer of not recovering is 0;
	otherwise:
		increase the timer of not recovering by one;

[Above code courtesy of ideas from https://intfiction.org/t/every-third-turn/1443]

Actually Recovering is a recurring scene.
Actually Recovering begins when Constance is wounded and the capsa of opening is closed.
Actually Recovering ends when Constance is not wounded.

When Actually Recovering begins:
	[Perhaps eventually check to see if the capsa of Health is open, but the premise of the game is that it's open the entire time; we'd have to let the player close it and then get wounded for this to not happen.]
	say "You feel your skin prickle where you were wounded, and look down.  To your amazement, your wound has closed and the bleeding stopped.  As you watch, even the line from the cut disappears, and the feathers around it fluff out again.
	
	It's the scroll of Health.  It [i]has[r] to be.  It's actually here!  And active.  Hmm."
	[We'd need different text if the player gets wounded more than once, but right now, they can't even get wounded once, so let's just leave it for now.]

Sneaking is a recurring scene.  Sneaking begins when the player is wearing the hunting cloak.  Sneaking ends when the player is not wearing the hunting cloak.

Check going up during Sneaking:
	say "You can't fly with this damn cloak on!" instead.

Check going down during Sneaking:
	say "You can't fly with this damn cloak on!" instead.

Finale is a scene.  Finale begins when the player is in the Nursery_itself for the first time.

When Finale begins:
	say "Perched on the open window looking out over the forest is a young Red Wing Clan.  As you enter, they turn and their face and feathers light up with delight.  'Aunty Constance!' they chirrup, and  dash across the room to bury their face in your downfeathers."

Lucian's Scenes ends here.
