Lucian's Scenes by Iron ChIF begins here.
Use authorial modesty.

Book 0 Ongoing Effects

Include Being Chased by Iron ChIF.


Not Recovering is a recurring scene.

Not recovering begins when Constance is wounded and the capsa of opening is open.
Not recovering ends when the capsa of opening is closed.

Not recovering has a number called timer.  The timer of not recovering is zero.

Every turn during Not Recovering:
	if the player is not Horatio and Horatio is not stage three:
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
	now Constance is not wounded;
	say "You feel your skin prickle where you were wounded, and look down.  To your amazement, your wound has closed and the bleeding stopped.  As you watch, even the line from the cut disappears, and the feathers around it fluff out again.
	
	It's the scroll of Health.  It [i]has[r] to be.  It's actually here!  And active.  Hmm."
	[We'd need different text if the player gets wounded more than once, but right now, they can't even get wounded once, so let's just leave it for now.]

Sneaking is a recurring scene.  Sneaking begins when the player is wearing the hunting cloak.  Sneaking ends when the player is not wearing the hunting cloak.

Check going up during Sneaking:
	say "You can't fly with this damn cloak on!" instead.

Check going down during Sneaking:
	say "You can't fly with this damn cloak on!" instead.

Ash_chat is a scene.  Ash_chat begins when the player is in the Nursery_itself for the first time.

When Ash_chat begins:
	say "Perched on the open window looking out over the forest is a fledgling Red Wing Clan.  As you enter, they turn and their face and feathers light up with delight.  'Aunty Constance!' they chirrup, and dash across the room to bury their face in your downfeathers.
	
	You stroke the feathers on their head gently.  The feathers crackle worryingly.  'Hi, Ash,' you say.  It's good to see you, too.'
	
	Their face sufficiently smothered, Ash pops out again excitedly.  'It's been so long!  Did you know there's a whole new wing of the southwest aerie?  Momma took me there just the other day, and...'"

Every turn during Ash_chat:
	say "Ash prattles happily, telling you [one of]about how they're putting in a huge room just for sick people[or]about meeting a Throckwright, and getting to see his pouch of seeds[or]about a model treehouse they made out of sticks[or]a long convoluted story about drama between their stuffed animals[or]about a flock of wild birds that lived beneath her window for a whole season[or]that they secretly dislike dust baths[or]how they need to build another treehouse because Mr. Featherstick doesn't like the first one[or]about a song they're trying to learn[or]that Loudbeak Threewings can't go anywhere without her special stack of [cycling]."

Ash is a person in Nursery_itself.  "Ash doesn't look particularly healthy, but they're in high spirits."  The description is "Ash's flight feathers are starting to come in, though they won't be able to actually fly for at least another year.  Worryingly, the feathers are drooping and seem brittle; early signs of the Red Plague.  It's not a stage of the plague you've ever seen before; maybe the capsa halted the disease's progression, but didn't cure it?  How long have they been like this?"


answering the Ash that something is chit-chat.
telling the Ash about something is chit-chat.
asking the Ash about something is chit-chat.
asking the Ash for something is chit-chat.

instead of chit-chat:
	say "There's no way you're getting a word in edgewise in this chatterfall.";

Instead of attacking the Ash:
	say "You playfully bat Ash on the head.  They stick their tongue out at you.";

Instead of kissing the Ash:
	say "You give Ash a peck on the shoulder.  They preen.";

Instead of showing something to the Ash:
	say "You consider doing that, but are enjoying the chatter too much to break it up.";

Instead of giving something to the Ash:
	say "You'd never see it again, and you probably need it.  Maybe later.  If there's time.  If.";

Instead of waking the Ash:
	say "Hoo boy, if Ash fell asleep you definitely would not wake them up again.";

Instead of eating Ash:
	say "What is it about children that makes them seem so delicious?  You playfully peck at Ash's head, and they squeal in delight.";

Instead of taking Ash:
	say "You could take Ash with you.  When you go.  Maybe."

Finale is a scene.  Finale begins when the player encloses the green capsa.

When Finale begins:
	switch to cyoa at F1

F1 is a page.  The description is "[one of]You hold the capsa of health in your hands, turning it over and looking at it from all sides.  It's what you came here for.  To take it back home and save your mother.  Your people.  Is it still that simple?

'You are now the holder of the scroll of taclor' says Horatio, as Ash continues to tell you about what it was like to see a real jaguar that one time.  'Will you have me read it?'[or]Horatio looks at you expectantly.[stopping]"

F2a is a dead-end.  It is for F1.  It is one-off.
The cdesc is "'Ash was holding it before.  Why can't they make the decision?'"
The description is "Horatio looks at Ash, then looks at you.  Ash continues to tell you about having to get their desk grown twice in two months because they were growing [i]so fast[r].

Yeah, OK, fair."

F2b is a dead-end.  It is for F1.  It is one-off.
The cdesc is "'What will happen when you read it?'"
The description is "'I know not,' Horatio replies.  'I know that it will grant a power related to the scroll's effect to some percentage of all people.  Everywhere.  Regardless of class or heritage or clan.  My guess is that it will improve their health--perhaps make them immune, perhaps give them regeneration, perhaps grant them an immortality, of sorts.'

'Will it affect people right now?' you ask, 'Or just people in the future?  People hatched tomorrow?  Eggs laid tomorrow?'

'The stories do not say,' he replies.  'What difference is five years; twenty years to the march of history?'

'It makes a difference to me,' you say.

'Indeed,' he replies."

F2c is a dead-end.  It is for F1.  It is one-off.
The cdesc is "'Why not let the queen... let Aubrey decide?'"
The description is "The feathers on Horatio's neck ruffle.  'She has already denied me.  Every day, I ask, and every day, she sends her rejection.  If you leave, I will keep asking her.  She may change her mind.  She may not.  You may know her better than I.'"


F3 is a page.  It is for F1.
The cdesc is "Leave without the capsa."
The description is "'I can't do it,' you say.  'I can't condemn Ash for the sake of my people.  I can't condemn anyone for the sake of a fairy-tale promise.'  You stroke Ash's head one more time.  'I love you, kid,' you tell them.  'Say hi to your mom for me.'  

You place the capsa of taclor back on the desk, step onto the window ledge, and launch yourself into the mist."

A page-toggle rule for F3:
	end the story finally saying "You have learned much."

F4 is a page.  It is for F1.
The cdesc is "Leave with the capsa, and leave Ash behind."
The description is "'I can't do it,' you say.  'I can't take Ash away from their mother.  I can't condemn anyone for the sake of a fairy-tale promise.'  You stroke Ash's head one more time.  'I love you, kid,' you tell them.  'Say hi to your mom for me.'  

You and Horatio step onto the window ledge, and launch yourselves into the mist.  You hear the strangled cry of a familiar Red Wing behind you, but don't turn back."

A page-toggle rule for F4:
	end the story finally saying "You have accomplished what you set out to accomplish."

F5 is a page.  It is for F1.
The cdesc is "Leave with the capsa, and take Ash with you."
The description is "'I can't do it,' you say.  'I can't condemn Ash for the sake of my people.  I can't condemn my people for the sake of Ash.  I can't condemn both for the sake of a fairy-tale promise.'

'Kid,' you turn to Ash.  'Put this on.  We're going on a trip, and it's cold out there.'  Ash delights in putting on a genuine invisibility cloak, then hops on your back with anticipation when you tell him.  Horatio dons his own cloak as well, disappearing from view.

All three of you step onto the window ledge, and launch yourselves into the mist.  You hear the strangled cry of a familiar Red Wing behind you, but don't turn back."

A page-toggle rule for F5:
	end the story finally saying "You have done what you were sure would help the greatest number."


F6 is a page.  It is for F1.
The cdesc is "Let Horatio read the scroll of taclor."
The description is "'I can't do it,' you say.  'There's no good solution here.  Even the scroll itself only halts the disease; it doesn't cure it.  Nobody wins.'

You turn to Horatio.  'And maybe nobody I care about wins if you read this, but lots of people I don't know win.  And maybe we win anyway.  Or maybe you're just crazy.  It's a risk.  Life is risk.  In the balance, maybe that's enough.'

You take a deep breath, and hand him the scroll.  'Read it,' you tell him.

Horatio nods, pulls out a small key, inserts it into the side of the capsa, and begins to slowly turn it, exposing the rest of the writing as the scroll is rolled from one rod to the next.  He reads.

Or, rather, he sings.  You've never heard a buzzard sing like this before, but then again, you've never heard [i]anyone[r] sing like this before.  It's a deep, primal song of awakening; of understanding; of comfort.  Ash's beak drops open in amazement and wonder.

Then Aubrey, your friend, your love, your queen, your enemy, bursts through the door.  'Ash!' she cries, then, seeing them safe, turns to Horatio.  'No!' she gasps, and launches herself at him."

F6a is a page.  It is for F6.  It flips to F7.
The cdesc is "Get between Aubrey and Horatio."
The description is "You fling yourself across the room to stop her, but before she even reaches you, her head jerks back, she stops, then falls twitching to the floor."

F6b is a page.  It is for F6.  It flips to F7.
The cdesc is "'Aubrey, no!'"
The description is "You start to shriek at Aubrey to stop, that this is the only way, that you love her but she can't hoard this power for only herself, but before you even get a word out, her head jerks back, she stops, then falls twitching to the floor."

F7 is a page.  The description is "Horatio continues to sing.  Ash's face is a mixture of horror and delight."

F7a is a page.  It is for F7.  It flips to F8.
The cdesc is "Rush to her side."
The description is "You rush to the side of your love, cradling her head with your wing.  'Aubrey, darling, be all right.  Listen to me.  [i]Be all right[r].  I need you.  I need the true you.'".

F7b is a page.  It is for F7.  It flips to F8.
The cdesc is "Shield Ash from the sight."
The description is "'Ash!' you cry.  You wrench them physically so they stand facing Horatio and away from their stricken mother.  'Listen to the song.  Remember it!' you cry."

F7c is a page.  It is for F7.  It flips to F8.
The cdesc is "Tell Horatio to stop.".
The description is "'Horatio!  It's too much!  You have to stop!' you cry.  You might better yell at a waterfall.  The song tumbles from his mouth, filling the room, the Aerie, the world with sound."

F8 is a page.  The description is "The song reaches a crescendo.  The Aerie itself threatens to shake apart."


F8a is a page.  It is for F8.  It flips to F9.  It is cancelled by F7b and F7c.
The cdesc is "Hold Aubrey tight."
The description is "You close your eyes and wrap Aubrey with both wings, not to shield her from the song, which is everywhere, even your bones, but just to let her know she's not alone.  She can't be alone when she dies."

F8b is a page.  It is for F8.  It flips to F9.  It is cancelled by F7a.
The cdesc is "Turn to Aubrey."
The description is "You turn to see Aubrey's arched back, and she spasms again on the cold floor.  You dash to her side, just as her wing flails out sideways, knocking you off your feet.  You land heavily on the ground, in the perfect position to see Horatio's feet, lifted slightly off the ground, though his wings are tucked in tight."

F8c is a page.  It is for F8.  It flips to F9.  It is cancelled by F7a.
The cdesc is "Physically attack Horatio."
The description is "You rush at Horatio, but before you get within a wingspan, you hit some sort of wall of--energy?  Magic?  Sound?  You hammer futilely against it."

F8d is a page.  It is for F8.  It flips to F9.  It is cancelled by F7a.
The cdesc is "Wait for the inevitable."
The description is "You can do nothing to stop this.  You can do nothing to help.  But you can listen.  And you can remember.  The song burns its way into your memories."

F9 is a page.  The description is "You didn't expect the apocalypse to be this pretty.

The song is everywhere.  The song is everything.  It is morningsong.  It is evensong.  It is the tide, and the moons, and the stars.

And threading it together, it is life.  Health.  The roost.  The nest.  A bubble of comfort pushing back against the dark.

And then it's done.  The writing fades from the scroll, and Horatio gently rewinds it back to the title.  'TACHLOR'.

Aubrey relaxes, wakes.  Looks into your eyes.  'I'm so sorry,' she whispers.  She glances at her child.  'Ash...' she explains.

'I'm sorry, too,' you answer.  'My mother,' you explain.  You both look at the other with glistening eyes.

Then Aubrey gets a strange expression on her face.  'I... I [i]remember[r],' she says.  'The... Ash.  Come here.'

Obediently, Ash comes and perches by her side.

Aubrey begins to sing.  It's not The Song.  Nothing will ever be The Song.  But it's an echo.

As she sings, Ash's pallor fades, and their feathers straighten.  A hunch you didn't realize they had straightens out.  'Oh!' they exclaim.  'OH!'  Their eyes shine.

You help Aubrey to her feet.  She looks around at the four of you, and rises to her full height, full of queenly majesty.  'Come,' she says.  'We have work to do.'"

A page-toggle rule for F9:
	end the story finally saying "You have changed the world."

Lucian's Scenes ends here.
