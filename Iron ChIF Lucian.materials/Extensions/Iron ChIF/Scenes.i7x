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
	[Never had to worry about this!  Grabbing the capsa of health triggers the end-game, so it's literally always open.]
	now Constance is not wounded;
	say "You feel your skin prickle where you were wounded, and look down.  To your amazement, your wound has closed and the bleeding stopped.  As you watch, even the line from the cut disappears, and the feathers around it fluff out again.
	
	It's the scroll of Health.  It [i]has[r] to be.  It's actually here!  And active.  Hmm."
	[We'd need different text if the player gets wounded more than once, but right now, they can't even get wounded once, so let's just leave it for now.]
	[Nor this!  Eventually added a thing that will knock Constance out if she was wounded, but there's always only ever two levels: fine or wounded]

Sneaking is a recurring scene.  Sneaking begins when the player is wearing the hunting cloak.  Sneaking ends when the player is not wearing the hunting cloak.

Check going up during Sneaking:
	say "You can't fly with this damn cloak on!" instead.

Check going down during Sneaking:
	say "You can't fly with this damn cloak on!" instead.

Ash_chat is a scene.  Ash_chat begins when the player is in the Nursery_itself for the first time.

When Ash_chat begins:
	say "Perched on the open window looking out over the forest is a fledgling Red Wing Clan.  As you enter, they turn and their face and feathers perk up with delight.  'Aunty Constance!' they chirrup, and dash across the room to bury their face in your downfeathers.
	
	You stroke the feathers on their head gently.  The feathers crackle worryingly.  'Hi, Ash,' you say.  'It's good to see you, too.'
	
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

Constance can be determined.  Constance is not determined.

Last check taking green capsa:
	if Constance is not determined:
		now Constance is determined;
		say "You take a deep breath.  Once you take the green capsa, you'll be the 'holder' of taclor, and Horatio will ask you for your decision.  Should you get it now?";
		if player consents:
			say "You're right.  It's time.";
		otherwise:
			say "You turn to look at Ash and the Nursery once more.  Before things change." instead;
	otherwise:
		say "It's time.";

Report taking green capsa:
	stop the action;


Finale is a scene.  Finale begins when the player encloses the green capsa.

When Finale begins:
	switch to cyoa at F1

F1 is a page.  The description is "[one of]You hold the capsa of health in your hands, turning it over and looking at it from all sides.  It's what you came here for.  To take it back home and save your mother.  Your people.  Is it still that simple?

'You are now the holder of the scroll of taclor' says Horatio, as Ash continues to tell you about what it was like to see a real jaguar this one time.  'Will you have me read it?'[or]Horatio looks at you expectantly.[stopping]"

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
The description is "The feathers on Horatio's neck ruffle.  'She has already denied me.  Every day, I send a new request, and every day, she sends her rejection.  If you leave, I will keep asking her.  She may change her mind.  She may not.  You may know her better than I.'"


F3 is a page.  It is for F1.
The cdesc is "Leave without the capsa."
The description is "[i]Switching to Horatio.[r]

You watch as the struggle plays out across Constance's face, while Ash happily prattles behind her.  Slowly, she sets the capsa back down on the desk, and just stares at it.  'I can't do it,' she finally says.  'I can't condemn Ash for the sake of my people.  I can't condemn anyone for the sake of a fairy-tale promise.'"

F3A is a page.  It is for F3.  It flips to F3_1.
The cdesc is "Try to explain, again, that it's not a fairy tale.".
The description is "'It's no fairy tale,' you say.  'It is my heritage.  I know---'

Constance cuts you off.  'You don't know what will happen.  The fairy tale is that it will help me, today.  That it will help Ash.  That my mother--' her voice goes quiet, hoarse, 'won't die.'

It's true. You hope things will get better, in the end.  You believe it, with all your being.  But you can't say anything about her people, or Ash.";

F3B is a page.  It is for F3.  It flips to F3_1.
The cdesc is "Let her process.".
The description is "Though it's difficult, you try not to bristle.  She has no particular reason to believe you, and you don't even have much hope to offer.  She might even believe, as you do, that eventually things would be better.  But she has to live with what's true now.";

F3_1 is a page.
The description is "Constance reaches out a wing, and strokes Ash's head.  'I love you, kid,' she tells them.  'Say hi to your mom for me.'

'You're not staying?' they ask, suddenly stricken.  

Constance shakes her head, steps onto the window ledge, and launches herself into the mist.  A keening cry from Ash, of confusion and loss.  You feel it as well, as you've felt it for years.  You had forgotten it could be given voice.

As if summoned by the cry, the queen--Aubrey--rushes in, with her own cry of worry, replaced by one of relief.  She engulfs Ash in her wings.  'You're okay; you're okay,' she repeats like a mantra, eyes closed, holding Ash tight.  She opens them to see taclor on the desk.  A questioning look at you.  'She didn't take it?  She didn't have you read it?'

'No,' you reply.  'She held it.  She could have done either.'

Aubrey breathes out and deflates.  The fight that sustained her for so long is over.  When your opponent concedes, victory in their grasp, what then?  You sense an opening."

F3_1A is a page.  It is for F3_1.
The cdesc is "Ask her to let you read the scroll."
The description is "'You are, once again, the holder of taclor,' you say.  'Will you let me read it, and release its power to everyone, as the Gods intended?'

Aubrey stares out at the impenetrable mist.  At nothing; at everything; at Constance.  She's actually considering the question, perhaps for the first time in years.  Ash looks up at her, a question and the beginnings of understanding on his face.  'Ask me again tomorrow,' she finally says, eyes fixed on the mist; Ash under her wing.

'Indeed,' you reply."

A page-toggle rule for F3_1A:
	move world_change to the Trophy Room;
	write out achievements;
	end the story finally saying "The question is reconsidered."

F3_1b is a page.  It is for F3_1.
The cdesc is "Now is not the time."
The description is "An opening, yes, but if you move too quickly, you risk it closing again.  Aubrey catches your eyes and you gaze at each other for a long moment, understanding passing between you.  Ash watches you both, looking back and forth.

Aubrey sighs.  'Your imprisonment is rescinded.  You're obviously safe.  And if you will, I would have you be Ash's ward.  They cannot leave the scroll, but there are those who also need it, so they both will need to travel.'  She looks out into the mist, and you imagine that the whorls of mist spilling into the window are the echoes of Constance's wingbeats.  'Teach them what you know.  There may be more we can do.' You raise an eyebrow. 'More we can do short of that.'

'I will do my best to protect and teach the child,' you promise.  'What I know.  And what I believe.'

Aubrey nods absently, still looking out the window.  Ash closes his eyes, and rests his head under her wing."

A page-toggle rule for F3_1B:
	move world_change to the Trophy Room;
	write out achievements;
	end the story finally saying "A generational transfer begins."



F4 is a dead-end.  It is for F1.  It is one-off.
The cdesc is "Leave with the capsa, and leave Ash behind."
The description is "This is what you came here to do.  You have the capsa of health.  Your mother; your village needs it.  You could leave.  

If it hadn't been Ash who would suffer, you probably could do it.  Random people working for the queen versus your own mother?  Your own people?

But not Ash.  You have to find another way."


F5 is a page.  It is for F1.
The cdesc is "Leave with the capsa, and take Ash with you."
The description is "[i]Switching to Horatio.[r]

Constance closes her eyes and sighs.  'I can't do it,' she says.  'I can't condemn Ash for the sake of my people.  I can't condemn my people for the sake of Ash.  I can't condemn both for the sake of a fairy-tale promise.'  You wince at that; you had hoped you had been [i]slightly[r] more convincing.  But before you can object, Constance has moved on.

'Kid,' she says, turning to Ash.  'Put this on.  We're going on a trip, and it's cold out there.'  Ash delights in putting on a genuine invisibility cloak, then hops on her back, vibrating with anticipation.

Constance turns to you.  'You're welcome to join us.  But if you stay, can you... try to explain?  To Aubrey?'  The queen."

F5A is a page.  It is for F5.
The cdesc is "Leave with Constance."
The description is "If Constance ever changes her mind about taclor, you want to be there when she does.  'I will go with you,' you say, and Constance nods.  You join the two of them on the window ledge, and silently launch yourselves into the mist.  Behind you, you hear a strangled cry of a familiar Red Wing.  Constance flinches, but doesn't look back.

'She'll come after you, you know,' you say.

'Yes,' she sighs.

You wait.  From her back, a disembodied voice exclaims, 'Aunty Constance!  I can't see myself [i]at all[r]!'

'This was always the plan,' she continues quietly, after a moment.  'Get the capsa of health, gather everyone, then... migrate.  Like our ancestors[if C5a is previously displayed].'  She turns to look at you.  'I've been thinking about our conversation, about taking the capsa to where it's needed.  It'll make us easier to find, but you're right that hoarding is what got us into this mess in the first place[end if].'

You feel a surge of empathy for this brash young woman, trying her best to patch together a good outcome for as many people as she can manage.  She may change her mind and let you read the scroll one day, but even if she doesn't?  Migrating with it to try to help people doesn't seem so bad."

A page-toggle rule for F5A:
	move world_change to the Trophy Room;
	write out achievements;
	end the story finally saying "A new migration begins."

F5B is a page.  It is for F5.
The cdesc is "Stay to talk with the queen.".
The description is "You watch Contance go, and steel yourself.  Sure enough, the queen bursts into the room scant minutes later.  When she sees you and not Ash nor the capsa of health, she screams and flies at you, knocking you to the floor, talon on your neck.  'Where are they?' she shrieks.

Crap.";

F5B1 is a page.  It is for F5B.
The cdesc is "Try to explain."
The description is "You had hoped to have a day or two first.  To explain after the shock wore off.  That plan is not to be, and you can barely breathe.  'Constance-' you choke, 'her mother.  Couldn't sacrifice Ash.  Tried to-'

The queen cuts you off.  'WHERE?' she demands.";

F5b2 is a page.  It is for F5B and F5B1.  It flips to F5_cellEnd.
The cdesc is "Refuse to speak."
The description is "There's nothing you can say that will divert this force of nature.  But you don't have to participate.  You close you eyes and wait for the inevitable.

Which doesn't come.  The pressure from the talons relents, there's commotion and rattling and the Pounding of woodpeckers, and by the time you open your eyes, the room is filling with guards and the queen is staring out the window at the thinning fog."

[When play begins:
	say "[war_party_desc][course_correction]";
	say "Now we switch to cyoa.";
	switch to cyoa at F5B3;
]

F5B3 is a page.  It is for F5B and F5B1.
The cdesc is "Offer to lead her to them."
The description is "'I can sense... capsae' you wheeze.  'Lead you... taclor'

The queen lets you up, and you gasp.  She stabs a button, and woodpeckers somewhere in the complex pound out a message.  In seconds, guards fill the room.

'Gather arms,' she tells them.  'We strike the Falcon clan tonight.'

[bstars]
All too soon, you're flying at the front of a well armed war party.  Constance's mist has long since evaporated, and a full moon and a thousand stars light your way over the forest.  For far too long, the capsa of health stays in one place, and your guidance is hardly needed--they knew where the Falcons nested.  And then--thank the gods--the capsa moves again.  You breathe a quiet prayer to Stohleblanc, and bank to the south.

'What?' the queen demands, suspicious.

'Course correction,' you reply.  'They're moving out.'

The queen consults the guards, and sends a handful straight on anyway, before joining you with the rest.  'If they haven't left, things will not go well with you.  Or them.'

You shrug.  'I cannot say who left and who didn't.  I only know the capsa of health is on the move.'

Eventually, the dispatched guards join you again, reporting that the Falcon nests were indeed abandoned.  You continue your trek south, and feel the capsa gradually getting further and further away to the north.   You'll never get to read it.  But maybe it can do some good.";



[A page-toggle rule for F5B3:
	move world_change to the Trophy Room;
	write out achievements;
	end the story finally saying "Taclor is no longer hoarded.";]

F5C is a page.  It is for F5.
The cdesc is "Stay, but wear the cloak of invisibility.".
The description is "You disappear under the cloak, as you watch Contance gather herself on the window ledge, accompanied by excited noises from Ash, then disappear with him into the mist.

Less than a minute later, the queen rushes in to the room.  'Ash!' she cries.  'Ash!'  Then her eyes fall on the empty desk where taclor sat, and a high, thin warbling cry escapes her throat.  Her legs buckle, and she collapses to the floor, her keening only broken when she plucks at her feathers in distress.

You can't stay here and watch without her knowing you're here.  You had hoped to wait a few days, for the shock to pass.  But you simply can't.  You pull back the hood, and let the cloak fall behind you.  She doesn't see you.  She isn't seeing anything.

'Aubrey,' you say.  The name you once knew her by, when her mother was still queen, and you were still free to wander the Aerie, watching her and Constance play.

Her head whips around and she's on you in a flash, wing against your throat, talon pushing you into the wall.  'What did you do?  Where are they?'  Fierce, pure anger; grief abandoned.

'Constance took the capsa of health for her people.  For her mother.  But she was unwilling to sacrifice Ash to do so.'  You try to keep your voice calm, measured.

Reluctant understanding flashes across Aubrey's face, replaced quickly with grim determination.  'That's no reason to [i]kidnap my child[r],' she rasps."


F5C1 is a page.  It is for F5C.  It flips to F5_cellEnd.
The cdesc is "'Indeed.'"
The description is "Aubrey glares intently at you, then releases your chest to stab at a hidden button with a talon.  Distant woodpeckers rattle some sort of call in their Pounding dialect, which you never learned, but can guess what it must mean.  'Please--' you start, but Aubrey cuts you off.  In seconds, the room fills up with guards."

F5_cellEnd is a page.  The description is "'Take this one back to his cell,' she tells them.  'Then gather arms.  We hit the Falcon clan tonight.'

[bstars]
It's hard to gather any information from your cell, but the fact that you continue to feel taclor moving in the distance tells you what you most wanted to know.  It never returns to the Aerie.  And you never hear the name 'Ash' again."

A page-toggle rule for F5_cellEnd:
	move world_change to the Trophy Room;
	write out achievements;
	end the story finally saying "Constance and taclor are free, but without Horatio.  {Need something better -LS DEBUG}"

F5C2 is a page.  It is for F5c.
The cdesc is "Offer to take her to them, alone."
The description is "'Do you want to talk to her?' you ask.  'Alone?'  You can't be the go-between.  Somehow, the two of them need to talk.

Emotions play across her face, and her feathers rise and settle, then rise and settle again.  She fixes you with a steady glare that you try to meet as calmly as you can, though talons are digging into your stomach.  Then, with quiet intensity, 'yes'.  She stares at you longer, unflinching.  You nod slightly.

Then she releases you, and in one fluid motion, she's out the window, flying after Constance, her friend, her love, her subject, her enemy.  You follow, focusing on the pull of taclor.  The same pull that guided you here a decade ago.  A pull, for all its mystique, much more straightforward than the pull between Constance and Aubrey.

You hope you can guide them together.  And to where they can let go."

A page-toggle rule for F5C2:
	move world_change to the Trophy Room;
	write out achievements;
	end the story finally saying "A meeting awaits."



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
The description is "You fling yourself across the room to stop her, but before she even reaches you, a wave of sound catches her and stops her in her tracks.  Her eyes roll back, and she falls twitching to the floor."

F6b is a page.  It is for F6.  It flips to F7.
The cdesc is "'Aubrey, no!'"
The description is "You start to shriek at Aubrey to stop, that this is the only way, that you love her but she can't hoard this power for only herself, or even for Ash, but before you even get a word out, a wave of sound catches her and stops her in her tracks.  Her eyes roll back, and she falls twitching to the floor."

F7 is a page.  The description is "Horatio continues to sing.  Ash's face is a mixture of horror and delight."

F7a is a page.  It is for F7.  It flips to F8.
The cdesc is "Rush to Aubrey's side."
The description is "You rush to the side of your love, cradling her head with your wing.  'Aubrey, darling, be all right.  Listen to me.  [i]Be all right[r].  I need you.  I need the true you.'".

F7b is a page.  It is for F7.  It flips to F8.
The cdesc is "Shield Ash from the sight."
The description is "'Ash!' you cry.  You wrench them physically so they stand facing Horatio and away from their stricken mother.  'Listen to the song.  Remember it!' you cry."

F7c is a page.  It is for F7.  It flips to F8.
The cdesc is "Tell Horatio to stop.".
The description is "'Horatio!  It's too much!  You have to stop!' you cry.  You might better yell at a waterfall.  The song tumbles from his mouth, filling the room, the Aerie, the world with sound."

F7d is a page.  It is for F7.  It flips to F7.  It is a one-off.
The cdesc is "The song's affecting Aubrey, but not you and Ash.  Why?"
The description is "Your eyes dart wildly across the scene, trying to figure things out; trying to understand.  A ripple; a run in the music.  A corresponding shudder in Aubrey's wings.  You spread your own wings.  Nothing."

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

And then it's done.  The writing fades from the scroll, and Horatio gently rewinds it back to the title.  'TACLOR'.

Aubrey relaxes, wakes.  Looks into your eyes.  'I'm so sorry,' she whispers.  She glances at her child.  'Ash...' she explains.

'I'm sorry, too,' you answer.  'My mother,' you explain.  You both look at the other with glistening eyes.

Then Aubrey gets a strange expression on her face.  'I... I [i]remember[r],' she says.  'The... Ash.  Come here.'

Obediently, Ash comes and perches by her side.

Aubrey begins to sing.  It's not The Song.  Nothing will ever be The Song.  But it's an echo.  The song of the Taclorim.

As she sings, Ash's pallor fades, and their feathers straighten.  A hunch you didn't realize they had straightens out.  'Oh!' they exclaim.  'OH!'  Their eyes shine.

You help Aubrey to her feet and she rises to her full height, full of queenly majesty.  The four of you look at each other.  'Come,' she says.  'We have work to do.'"

A page-toggle rule for F9:
	move world_change to the Trophy Room;
	write out achievements;
	end the story finally saying "You have changed the world.";

world_change is an achievement in the Void.  The printed name is "Taclor".  The description is "Finish the game, deciding what to do with the scroll of health.".



Lucian's Scenes ends here.
