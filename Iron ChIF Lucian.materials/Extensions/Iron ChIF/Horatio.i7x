Horatio by Iron ChIF begins here.
Use authorial modesty.

Horatio's story is a scene.  Horatio's story begins when Horatio is remembered.  Horatio's story ends when the location is High Above.

Forgotten Brig is a room.  "A small but cosy cell, grown with austerity but basic comfort in mind.  Your now-open [cell door] leads west."

The cell door is a door.  It is west of Forgotten Brig and east of Disused Hallway.  It is closed and locked.  The description is "Ironwood-grown and maintained; your cell door is [if closed]closed[otherwise]open[end if]."

cell_contents is scenery in Forgotten Brig.  The printed name is "cell contents".  The description is "A straight roost by a desk for writing, and a scooped roost for sleeping.  Enough space to spread your wings.  A rope wall for excercise.  Not bad."  Understand "cell/contents/austerity/comfort/straight/scooped/roost/space/spread/rope/wall/desk" as cell_contents;

Does the player mean examining cell_contents: it is likely;

Horatio is a man in Forgotten Brig.  "[Horatio room desc]."  The description is "[if the player is Horatio]You're a member of the Buzzard Clan, and fit the stereotype fairly well: bald red head and red talons, hunched shoulders, mottled black and brown feathers.  You've balded down past your neck now, betraying your advanced age.[otherwise]Horatio is an ancient Buzzard Clan sage of sorts, you suppose, given that he was jailed for heresy back in the day[end if]."

To say Horatio room desc:
	If the location is the Librum Landing Cradle:
		say "Horatio is talking [if go go go is happening]quickly[otherwise]slowly[end if] to the [lone guard] about [one of]the ethics of a monarchy[or]his grandchildren[or]regrettable fashion choices from the youth of today[or]whether the dot on the back of looks infected[or]how to get to zenostan (is that a real place?) from here[or]whether her mother was the Isabella he once knew[or]some meandering story about flying to the park[cycling], driving the guard quietly insane";
	otherwise:
		say "Horatio is here, watching you with quiet aplomb and patience"

Horatio can be remembered.  Horatio is not remembered.

The blue capsa of mist is a capsa carried by Horatio.  The description is "[If the player is Horatio]The blue capsa of mist contains a scroll of bostrat, but its power has long since faded, as the Gods intended[otherwise]You suppose that now that the scroll's power has been spread to Bostrat everywhere, that capsa itself is little more than a trinket; a curiosity.  But you can't help but think of it almost reverentially.  In a very real sense, it [i]made[r] you.  A part of you[end if]."  Understand "bostrat" as the blue capsa.

A scroll of bostrat is a scroll in the blue capsa.  The name is "BOSTRAT".  Understand "mist/water" as the scroll of bostrat.

The description of the scroll of bostrat is "While '[name]' can be clearly read at the top of the scroll, the rest of the script has faded away[if the player is Constance].  That power now lives, in part, within your own being[end if]."

Disused Hallway is a room.  It is east of Nope.  "The only time you ever saw anyone in this hallway was when Georg came to give you your meals, or clean the cell.  The living walls, still elegantly patterned, even here, self-replenish, and the floor carries away shed bark through the [grate].  It leads west into the living area, and your old [cell door] leads east.";

A grate is a closed openable enterable container in Disused Hallway.  The description is "The grate conveys unneeded materials to the outside, and the forest floor.  [if open]'Rezrov' has done its job there, too: it lies open[otherwise]The grate is folded down, closed[end if].";

Check going west from Disused Hallway:
	say "Your place is not with the denizens of this Aerie, but with the prodigal daughter, now returned, and the capsa she seeks." instead.

After opening grate:
	say "You grasp the grate with your talons and carefully fold it upward, allowing access.";
	stop the action;

Before taking the grate:
	try opening the grate;

Before attacking the grate:
	try opening the grate;

Instead of going nowhere from Disused Hallway:
	if the noun is down:
		try entering the grate instead;
	if the noun is inside:
		try entering the grate instead;
	otherwise:
		say "The hallway runs east to west, and there's a grate on the floor you could enter.";

After entering the grate:
	say "You flatten yourself to the floor and, hearing your bones creak, roll into the space behind the grate.  Using your minimal throck ability, you whisper to the veins of this place: 'I am extra.  I am not needed.  Take me from this place, which will renew itself through my absence.'
	
	After a few moments, you feel an undulation in the slick rippled floor beneath you, and you are compressed even further, as its peristalsis slides you slowly, and then more rapidly, away from your only home for the last ten years.  Then with a sudden >plop<, you're ejected into space.
	
	You try to spread your wings, but your reaction time is not what it was, and you hit wirey netting before fully stopping yourself.
	
	No matter.";
	Move Horatio to in_forest;
	Now cell door is open; [Just in case]
	stop the action;


When Horatio's story begins:
	say "[bstars]";
	wait for any key;
	clear the screen;
	say "You wait, expectantly.";
	wait for any key;
	say "[lb]Silently, your cell door unlocks, then swings open.";
	wait for any key;
	say "[lb]Well above your cell, you sense rezrov, rudenj, and quiste settle in their movements until they make lazy circles, high above the Aerie. Igram and taclor remain in place, quiet.
	
	It is time.";
	Now the player is Horatio;
	Try looking;

When Horatio's story ends:
	say "[bstars]";
	wait for any key;
	clear the screen;
	switch to cyoa at H1.

Section The Chat

H1 is a page.
The cdesc is "Start a new conversation with Horatio."
The description is "'Good job, Constance,' you say as you approach to fly adjacent to her broad circling.

She peers at you, and you know she can make out every barb on each of your feathers.  Patiently, you wait.

'You're Horatio,' she finally says.  'Didn't the queen... imprison you for heresy?'

'Indeed,' you reply.

'And I just unlocked your cell,' she says.

'Indeed,' you reply.

'They wouldn't tell me what the heresy was.  I guess that's the point of trying to suppress dangerous ideas.'

This time, you just wait, and slightly incline your head.  Saying 'Indeed' again might make her self-conscious about her babbling.

There's a pause.

'What was it?' she asks."

H2 is a page.  It is for H1 and H3a and H3b.
The cdesc is "Tell her about capsae."
The description is "'I believe that the gods gave us the capsae to benefit everyone,' you say.

Constance frowns.  'That's not... a dangerous idea.  I mean, people may not truly believe in the gods much today, but they're generally seen as having been... nice?  I guess?'".

H2a is a page.  It is for H2.
The cdesc is "Explain."
The description is "'When I say everyone, I mean everyone.  In the whole world.  As far as the Clans extend.'

Constance chuckles.  'A little hard for the capsae to do [i]that[r].  Longest range I know of is, like, two miles.'

'Indeed,' you reply.

Constance locks her wings so she can turn and look at you intently for several seconds as she glides.  She probably thinks she's being tested.  Which would be good, because she is.  You wait.

'So.  You believe that the capsae are being misused.  That the kingdoms hoarding them should instead... share them?  Move them around?  Shuffle them, so each kingdom gets a bit of their power every so often?'

'Misused, yes,' you reply.  'And, yes, it would be in the spirit of that initial gift to share them more.  But what I proposed to your queen, and to other queens and kings of other realms, goes beyond this.'

Constance thinks for a bit.  [if H3 is not previously displayed]Then she rolls her eyes.  'OK, yeah, I have no idea what you're talking about.'[otherwise]Then her eyes widen.  'You want to read the scrolls!' she exclaims.[end if]"

H2b is a page.  It is for H2a.  It is cancelled by H3.
The cdesc is "Ask her about scrolls."
The description is "'What do you do with scrolls?' you ask.

Constance scoffs.  'Read them!' she exclaims, then laughs, as another thought occurs to her. 'Which is the one thing you [i]can't[r] do with the scrolls in the capsae, because nobody knows...'  She trails off, and gives you another look.  'Wait, really?  You?'";

H2c is a page. It is for H2a.  It is cancelled by H3.
The cdesc is "Tell her about scrolls."
The description is "'The scrolls were meant to be read, not hoarded', you say.

Constance thinks.  'Hmm.  So, you want to research the dead language on the scrolls?  Figure it out again?  Do some sort of cross-Kingdom research project, where everyone agrees to send the texts of their capsae to everyone else?  That seems reasonable, but again, it's not a particularly dangerous idea.'"

H3 is a page.  It is for H1, H2b, and H2c.
The cdesc is "Tell her what you can do."
The description is "'You've seen the scrolls themselves?  The writing on them?'

'[apostrophe]Indeed,[apostrophe]' Constance replies, raising an eyebrow.  You grin.

'What you may not know is that those symbols are not found in any other form of known writing.  There are fragments of writing from before the capsae.  They differ.  Some say it is the language of the gods themselves.'

'Woo, fancy,' says Constance.  'In other words, they're gibberish.'

'No,' you reply.  'I can read them.'

'Oh?  What do they say?' Constance asks."

H3a is a page. It is for H3.
The cdesc is "Tell her the truth."
The description is "'I don't know,' you tell her.

Constance sputters.  'But you--' she begins, then cuts herself off, looking at you askance again.  She's a clever woman.  You wait, tipping your wings synchronously with hers as you turn into another circuit.

'So.  You learned the language from somewhere.'  She thinks.  You wait.  'No, you said the symbols matched no other writing.  You were born knowing the language.  It's your heritage, as I was born knowing how to summon mist.'

You let her think, the lack of any contradiction from you enough of an encouragement.

'Which means you've either just never seen an actual scroll--which seems unlikely; the queen didn't get mad at you until several days had passed--or,' she slows down, but continues, 'or you were born with the ability to read, but not understand.'

'Inde--'  Constance shoots you warning look.  'Yes.  That's it exactly.  Congratulations.'  You bob your head and splay your wingfeathers in a grin of approval.

[if H2 is not previously displayed]'So I assume this is some sort of backstory for what your heresy actually is?' Constance asks[otherwise]'So, you want to read a capsa's scroll.  And you won't know what you're reading.' says Constance[end if]."

H3b is a page. It is for H3.
The cdesc is "Wax poetical a bit."
The description is "'I have read and felt what it was like to thunder across the plains as a gazelle from the scroll of izyuk.  I have read and felt the desperate yen of attraction from the scroll of obidil. From the scroll you now hold in your posession, I have read and felt what it is to be the very earth itself, spinning through the cosmos.'

Constance looks at you.  A beat.  'So you don't know.'

'I don't know,' you agree.

Constance waits.  OK, you can give her this one.

'I don't know because reading is my heritage, as the ability to summon mist is yours.  But understanding is not part of that gift.'

'Well that sucks,' Constance says.

'It is a touch of the language of the gods,' you say, simply.  'It is enough.'

The two of you make another circuit.  The mist streams off the ends of your outstretched wings in curled eddies.

[if H2 is not previously displayed]'So I assume this is some sort of backstory for what your heresy actually is?' Constance finally asks[otherwise]'So, you want to read a capsa's scroll.  And you won't know what you're reading.' says Constance, after a bit[end if]."

H4 is a page.  It is for H3a, H3b, and H2a.  It needs H2 and H3.
The cdesc is "Share your speculation."
The description is "'I will not know what it is I'm saying, but I have a guess about what will happen.

And no capsae holder I have yet met will risk such a thing,' you say."

C1a is a page.  It is for H4.
The cdesc is "[if the player is Horatio][i]{Switching to Constance}: [r][end if]Scoff at 'capsae holder'."
The description is "You scoff.  'No Queen or King, you mean.'

'You personally currently hold three capsae, more than some kingdoms,' replies Horatio, 

You laugh.  '[apostrophe]Cause I stole [apostrophe]em!  And they weren't even the one I wanted; I just didn't know what color I was after!'

'Nevertheless,' you tell her, 'you are their holder. If you told me you wanted me to read one, I then could."

A page-toggle rule for C1a:
	now the player is Constance;


C2 is a page.  It is for C1a.
The cdesc is "He needs instructions?"
The description is "'Wait.  So, I could order you to read a capsa?  And the magic would compel you to do it?' you ask, incredulously.

'No.  I will not read one without the holder's permission, but I may refuse any order,' Horatio replies.

'[apostrophe]Will not.[apostrophe]  So you're not compelled to do anything.  It's just a personal choice,' you say.

Horatio winces slightly.  'I suppose, technically, you are correct.  It is a tradition among the Readers who know the history.'"

C2a is a page.  It is for C2.  It flips to C3.
The cdesc is "Getting information out of this guy is like pulling mist out of the desert.  Say nothing."
The description is "You say nothing, and wait expectantly."

C1b is a page.  It is for H4 and C1a.  It flips to C3.
The cdesc is "[if the player is Horatio][i]{Switching to Constance}: [r][end if]Ask about his guess."
The description is "'So, what's your guess?' you ask.  'Is that your heresy?'"

A page-toggle rule for C1b:
	now the player is Constance;

C3 is a page.
The description is "In response, Horatio offers you the blue capsa he's holding.  It's closed, and you cock your head questioningly at him.  'It is safe.  Nothing will happen when you open it.'

Weird trap if it was a trap.  Fine.  You open the blue capsa, bracing yourself... and nothing happens.  You look at the scroll, which seems to have no symbols on it at all apart from the title:  'BOSTRAT'."

A page-toggle rule for C3:
	move the blue capsa to the rucksack;

C3b is a page.  It is for C3.
The cdesc is "Is that real?"
The description is "Horatio shrugs.  'I cannot prove it is so.  Many have chosen not to believe.  But I can sense capsae, so I sought this one out, and found it in the ruins of Creshim.'";

C3a is a page.  It is for C3 and C3b.
The cdesc is "Wow."
The description is "'Wow,' you say, amazed by the implication.

'Indeed,' Horatio replies.  'At one time, if my research and the ancient tales I have collected are correct, this capsa, when activated, would bring rain to the land around it.'

'And now... any Bostrat anywhere in the world can bring rain,' you conclude.  'If they work together,' you amend.

Horatio nods, seriously.  'In the past, this scroll could alter its surroundings.  When it was finally read, it [i]changed the world[r].

You gaze in wonder at the capsa.  Your heritage.  You can't say for sure it's genuine any more than Horatio can, but you feel the stirrings of some sort of pull towards it."

C4a is a page.  It is for C3a.
The cdesc is "Ask about the other abilities."
The description is "'And the Throckwrights?  The Ikniq?' you ask.

Horatio nods.  'From the stories I have collected, I believe 'throck' was the first of the scrolls to be read out and gifted to the people, and a renaissance of agriculture and architecture resulted.  When civilization pushed into the barren boundaries of the known world, bostrat was next, and spread our people across the desert.'

He stops.  There's an obvious Part Three, but you'll be damned if he makes you ask for it.  You wait.  You make another complete circuit together, and you realize there's a tear in his eye.  You're suddenly glad you gave him space to be emotionally ready to finish the story, though you're worried you already know where this is going.

Finally, with a deep breath, he speaks.  'Yes.  The first two gifts benefitted the herbivore clans more than the carnivore clans, or so they claimed.  Ikniq was next chosen, and hunting did indeed become easier.'  He pauses.

'But so did hunting each other,' you conclude, quietly.  Horatio nods.  The Great Wars.  Entire clans wiped out.  Whole swaths of countryside burned to the rock, where still nothing grows, a thousand years later."


C4b is a page.  It is for C3a and C4a.
The cdesc is "Pull everything together."
The description is "'So that's your heresy,' you conclude.  'You want to read a capsa's scroll.  And change the world again.'

'Not just any capsa.  The scroll of health.  Taclor.  Ten years ago, I would have been happy to read any.  Now, it must be that one.  But I will not make that choice on my own.  Every Reader like myself has the innate ability to Read a single scroll, and I will yield to the will of its holder, as my predecessors swore to do in the aftermath of the Great War.  But I will not waste my ability on anything else.'"

C5a is a page.  It is for C4b and C5b.
The cdesc is "He can't have the scroll."
The description is "'You can't read that scroll,' you say.  'I need it to save my mother.  To save the village.'

'The whole world,' Horatio turns his head to face to you, 'could say the same.'

'But [i]I'm here[r]!' you shout.  'I have [i]three capsae[r].  I didn't start any wars!  I didn't force people to live with their livestock and kickstart the Red Plague!  The Queen's hoarding the capsa for gods-know-what reason, probably so the selfish bastard could ensure she doesn't come down with it herself...'

Horatio flinches.  That's right, he knew you when you and the now-Queen were... closer.  Inseparable.

'I'll take it around the world!' you declare.  'I'll take it to every village in this kingdom; wherever the need is greatest.  I'll take it to other kingdoms!'

Horatio nods.  'When you are the holder, you may do as you wish,' he says, simply.  'But first, you must become the holder.  And for that, you will need igram.  It's in the librum."

C5b is a page.  It is for C4b.
The cdesc is "You need more details."
The description is "'So, what will happen?  What would it do if it was read?' you ask.

'I cannot say.  The gods created the scrolls with their local effects, I believe, to give people a taste of what was to come.  Throck, as a capsa, encouraged vegetation to grow.  Throckwrights push vegetation to grow in very specific ways.  Bostra, as a capsa, caused rain by itself, but the bostra must work together to do the same.  Ikniq... I can find no record of what it did as a capsa.  That information must have been purged.'  He pauses.  You let him collect his thoughts.

'My best guess is that it will give people the ability to heal themselves; perhaps even to regenerate.  Maybe it will make them immune to disease.  Maybe to death.  The gods only know.'"

C6 is an end-page.  It is for C5b and C5a.
The cdesc is "Figure out what's next."
The description is "'So, what do we do next?' you ask.

'I can sense the capsae.  Taclor, health, is in the Royal Quarters.  Igram is in the Librum.'

'I ransacked the Librum last time; there was only these three,' you protest.

'It was considered worthless, and was discarded.  With it, I can lead you to taclor,' Horatio tells you.

'What does it--you know, never mind, you obviously don't want to tell me.  How do I get it?' you ask.

'It is in the Librum,' he says, simply.  'Therefore, either you must go into the Librum, or the capsa must come out.  I will talk to the guard to distract her, if that helps,' Horatio offers.

Gods, yes, you can inflict this man on someone you hate.  'Perfect,' you say, grimly. You shake yourself, and turn to your new task."

Horatio can be distracting.  Horatio is not distracting.

A page-toggle rule for C6:
	now the player is Constance; [Just in case]
	now Horatio is distracting;

Section fooling around - not for release

become_constance is an end-page.  It is for H1, H2, H2a, H2b, H3, H3a, H3b, H4, H4a, H4b, C1a, C1b, C2, C2a, C3, C3a, C3b, C4a, C4b, C5a, C5b.  
The cdesc is "OK, I'm a tester and I need to skip ahead and be Constance, fiddling with scrolls and stuff."
The description is "Done!  Thank you for testing!  If you want to come back to this conversation at the start, just >TOUCH HORATIO.";

A page-toggle rule for become_constance:
	now the player is Constance;
	now the blue capsa is in the rucksack;
	now Horatio is distracting;

start_over is a page.  It is for H1, H2, H2a, H2b, H3, H3a, H3b, H4, H4a, H4b, C1a, C1b, C2, C2a, C3, C3a, C3b, C4a, C4b, C5a, C5b.
The cdesc is "I'm also a tester, and I just want to go back to the beginning of this conversation."
The description is "Done!  Thank you for testing![bstars]".
start_over flips to H1.

A page-toggle rule for start_over:
	repeat with X running through every page:
		now X is not previously displayed;

Instead of touching Horatio:
	switch to cyoa at H1.

Section Horatio in act 3

Horatio distracts the guard is a scene.  Horatio distracts the guard begins when Horatio is distracting.  Horatio distracts the guard ends when the black capsa is not enclosed by the Librum Itself.

When Horatio distracts the guard begins:
	Move Horatio to the Librum Landing Cradle;
	say "With a solemn nod to you, Horatio explains where the black capsa of igram should be, then banks to the east, and descends to the Librum.";

Horatio tries to make zgi less ridiculous is a scene.  Horatio tries to make zgi less ridiculous begins when Horatio distracts the guard ends.  Horatio tries to make zgi less ridiculous ends when the player encloses the hunting cloak.

Horatio can be stage one or stage two or stage three.  Horatio is stage one.

Every turn during Horatio tries to make zgi less ridiculous:
	If Horatio is stage one and the location is not Librum Landing Cradle:
		if the location is Royal Gardens:
			if a random chance of one in three succeeds:
				say "Where is Horatio?  Didn't he say to get the capsa of igram, and then you'd both go in the Royal Quarters?";
		otherwise:
			say "Horatio glides out of the mist and circles near you.  He nods at the black capsa.  'Excellent work.  Now, we need something from the Great Hall.'[lb]";
			Move Horatio to the Lower Great Hall;
			Now Horatio is stage two;
			if the location is the Great Hall Landing Cradle:
				say "Horatio glides through the open double doors of the Great Hall.";
			otherwise:
				say "Horatio glides away, heading towards the Great Hall.";
	Otherwise if Horatio is stage two and the location is Lower Great Hall:
		now Horatio is stage three;
		say "You circle down and land near Horatio.  'So.  [i]Now[r] will you tell me what igram does and why it's so important?' you ask.
		
		'It is better to show you,' he replies.  'Try it.'
		
		You sigh.  Fine."

When Horatio tries to make zgi less ridiculous ends:
	move Horatio to the void;
	Now the black capsa is explained;
	say "You turn to Horatio, questions bubbling in your head.  'So, nothing else here turned invisible.  Does the scroll work on cloaks?  Things for hunting?  Ancient materials?  Hides?'
	
	Horatio looks a little uncomfortable.  'No.  It works on... purple.'
	
	'Purple?!?' you exclaim/ask.
	
	'Purple,' he confirms.
	
	'It [i]turns purple things invisible[r]?  Purple things!  The gift from the gods, on a scroll written in their secret language!  To turn [i]purple things invisible[r]!'  You cackle in glee.
	
	Horatio looks uncomfortably affronted.  'The hippotomai were common in those days.  It made sense...'
	
	You continue to laugh, cutting him off, but unable to contain your utter delight.  'Herds of invisible hippotomai!  Grass on the marshy banks disappearing into nowhere!  Weird divots in the lakes!  I bet--wait!  The trickster god!  Ape, the trickster!  Stohleblanc!'  You laughter gets more hysterical and you nearly can't breathe.
	
	With as much dignity as he can muster, Horatio waits solemnly for you to finish laughing.  You fail to do so.  Finally he gets impatient and turns to go.  'We can enter the Royal Quarters cloaked.  I will follow you.'
	
	'Wait,' you sputter, trying to push down the hysteria.  'How will you follow me?  I'll be invisible!'
	
	'I can sense the capsae.  I will know where you are,' he replies, and with a deep breath, he gathers himself and flies up and out of the Great Hall.";

Horatio ends here.
