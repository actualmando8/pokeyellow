; Per-leader rematch dialogue (Phase 9i), used by engine/events/gym_rematch.asm

_GymRematchAcceptBrock::
	text "Good. I respect a"
	line "trainer with a"
	cont "rock-hard will."
	para "Come at me!"
	done

_GymRematchAcceptMisty::
	text "Now you're"
	line "talking! I won't"
	cont "go easy on you!"
	para "My Water #MON"
	line "are ready to make"
	cont "a splash!"
	done

_GymRematchAcceptSurge::
	text "Now we're talking,"
	line "kid! Fall in!"
	para "Time to see what"
	line "you're made of!"
	done

_GymRematchAcceptErika::
	text "Oh my, how lovely."
	line "Then let us begin."
	para "Gently, but in"
	line "earnest."
	done

_GymRematchAcceptKoga::
	text "Fwahaha! Then"
	line "prepare yourself!"
	para "A ninja shows no"
	line "mercy!"
	done

_GymRematchAcceptSabrina::
	text "I foresaw your"
	line "answer."
	para "Very well. Let us"
	line "begin."
	done

_GymRematchAcceptBlaine::
	text "Hah! Now that's"
	line "the spirit!"
	para "Let's turn up the"
	line "heat!"
	done

_GymRematchAcceptGiovanni::
	text "Very well."
	para "Show me the"
	line "strength that"
	cont "crushed my"
	cont "organization."
	done

_GymRematchDeclineBrock::
	text "Take your time. A"
	line "solid foundation"
	cont "comes first."
	done

_GymRematchDeclineMisty::
	text "Scared? Fine, come"
	line "back when you're"
	cont "ready to get"
	cont "splashed!"
	done

_GymRematchDeclineSurge::
	text "Scared, kid? Come"
	line "back when you've"
	cont "got some guts!"
	done

_GymRematchDeclineErika::
	text "Oh... perhaps"
	line "another day then."
	cont "The garden will"
	cont "wait."
	done

_GymRematchDeclineKoga::
	text "A wise ninja knows"
	line "when to retreat."
	cont "Return when"
	cont "prepared."
	done

_GymRematchDeclineSabrina::
	text "...I knew you"
	line "would hesitate."
	cont "Return when your"
	cont "mind is steady."
	done

_GymRematchDeclineBlaine::
	text "Hah! Cooling off?"
	line "Come back when"
	cont "you're hot to"
	cont "trot!"
	done

_GymRematchDeclineGiovanni::
	text "Hmph. Do not waste"
	line "my time. Return"
	cont "when you are"
	cont "ready."
	done

_GymRematchWinBrock::
	text "Your resolve is"
	line "harder than any"
	cont "rock."
	para "I'm proud to have"
	line "battled you."
	prompt

_GymRematchWinMisty::
	text "Wow... you really"
	line "have gotten"
	cont "strong!"
	para "I guess I can't"
	line "call you a rookie"
	cont "anymore."
	prompt

_GymRematchWinSurge::
	text "Whoa! Shocking!"
	para "You're a real"
	line "soldier now, kid!"
	prompt

_GymRematchWinErika::
	text "Oh my... you have"
	line "bloomed"
	cont "beautifully."
	para "I am truly"
	line "delighted."
	prompt

_GymRematchWinKoga::
	text "Impossible... Your"
	line "technique"
	cont "surpasses even"
	cont "mine."
	para "Well done."
	prompt

_GymRematchWinSabrina::
	text "...I saw this"
	line "outcome."
	para "Even so, your"
	line "power impresses"
	cont "me."
	prompt

_GymRematchWinBlaine::
	text "Hah! I've burned"
	line "out!"
	para "A rising star put"
	line "out my fire!"
	prompt

_GymRematchWinGiovanni::
	text "...Remarkable."
	para "Defeated by a"
	line "child once more,"
	cont "yet I feel no"
	cont "shame."
	prompt

_GymRematchLoseBrock::
	text "Not yet. A rock"
	line "doesn't crumble"
	cont "that easily."
	para "Train some more."
	prompt

_GymRematchLoseMisty::
	text "Ha! Still a"
	line "beginner next to"
	cont "me!"
	para "Go practice and"
	line "come back!"
	prompt

_GymRematchLoseSurge::
	text "Ha! Still green,"
	line "kid!"
	para "Get back to boot"
	line "camp!"
	prompt

_GymRematchLoseErika::
	text "Oh dear, did I"
	line "overdo it?"
	para "Please rest, and"
	line "try again."
	prompt

_GymRematchLoseKoga::
	text "Fwahaha! You have"
	line "yet to see through"
	cont "my ninja arts!"
	prompt

_GymRematchLoseSabrina::
	text "I saw this."
	para "Your mind is not"
	line "yet strong enough."
	prompt

_GymRematchLoseBlaine::
	text "Hah! You got"
	line "burned!"
	para "Your flame needs"
	line "more fuel."
	prompt

_GymRematchLoseGiovanni::
	text "Hmph. As expected."
	para "Power must be"
	line "earned."
	prompt

_GymRematchRewardBrock::
	text "Take this. A good"
	line "trainer looks"
	cont "after his"
	cont "#MON's"
	cont "strength."
	para "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_promptbutton
	text_end

_GymRematchRewardMisty::
	text "Here, for your"
	line "Water #MON."
	cont "Don't read into"
	cont "it, it's just a"
	cont "prize!"
	para "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_promptbutton
	text_end

_GymRematchRewardSurge::
	text "You earned this,"
	line "kid. Don't let it"
	cont "go to your head!"
	para "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_promptbutton
	text_end

_GymRematchRewardErika::
	text "Please accept"
	line "this, a small gift"
	cont "from my garden."
	para "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_promptbutton
	text_end

_GymRematchRewardKoga::
	text "A ninja rewards"
	line "skill. Let this"
	cont "sharpen your"
	cont "techniques."
	para "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_promptbutton
	text_end

_GymRematchRewardSabrina::
	text "Take this. It was"
	line "in my vision that"
	cont "you would carry"
	cont "it."
	para "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_promptbutton
	text_end

_GymRematchRewardBlaine::
	text "Hah! Take this,"
	line "you hot shot!"
	cont "Don't let your"
	cont "flame die out!"
	para "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_promptbutton
	text_end

_GymRematchRewardGiovanni::
	text "Take this. A"
	line "leader always pays"
	cont "his debts."
	para "<PLAYER> received"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_promptbutton
	text_end

_GymRematchNoRoomBrock::
	text "Your pack is full."
	line "A good trainer"
	cont "stays organized."
	cont "Make room, then"
	cont "return."
	done

_GymRematchNoRoomMisty::
	text "Your pack is"
	line "totally stuffed!"
	cont "Make some room and"
	cont "come back!"
	done

_GymRematchNoRoomSurge::
	text "Your pack's"
	line "jammed! Clear some"
	cont "space, soldier!"
	done

_GymRematchNoRoomErika::
	text "Oh dear, your pack"
	line "is quite full. Do"
	cont "tidy up, then come"
	cont "back."
	done

_GymRematchNoRoomKoga::
	text "Your pack is full."
	line "A ninja travels"
	cont "light! Make space."
	done

_GymRematchNoRoomSabrina::
	text "Your pack is full."
	line "I saw that too."
	cont "Make room and"
	cont "return."
	done

_GymRematchNoRoomBlaine::
	text "Hah! Your pack is"
	line "overflowing! Clear"
	cont "it and come back!"
	done

_GymRematchNoRoomGiovanni::
	text "You cannot carry"
	line "all this. Make"
	cont "room."
	done
