class Room < ApplicationRecord
  has_many :cards

  before_create :assign_black_card

  private

    def assign_black_card
      random_black_card = BLACK_CARDS.shuffle.first
      if random_black_card[:pick] = 1
        self.black_card   = random_black_card[:text]
        self.pick         = random_black_card[:pick]
      end
    end

  BLACK_CARDS = [
    {
      text: "Why can't I sleep at night?",
      pick: 1
    },
    {
      text: "I got 99 problems but _ ain't one.",
      pick: 1
    },
    {
      text: "What's a girl's best friend?",
      pick: 1
    },
    {
      text: "What's that smell?",
      pick: 1
    },
    {
      text: "This is the way the world ends / This is the way the world ends / Not with a bang but with _.",
      pick: 1
    },
    {
      text: "What is Batman's guilty pleasure?",
      pick: 1
    },
    {
      text: "TSA guidelines now prohibit _ on airplanes.",
      pick: 1
    },
    {
      text: "What ended my last relationship?",
      pick: 1
    },
    {
      text: "MTV's new reality show features eight washed-up celebrities living with _.",
      pick: 1
    },
    {
      text: "I drink to forget _.",
      pick: 1
    },
    {
      text: "I'm sorry, Professor, but I couldn't complete my homework because of _.",
      pick: 1
    },
    {
      text: "Alternative medicine is now embracing the curative powers of _.",
      pick: 1
    },
    {
      text: "What's that sound?",
      pick: 1
    },
    {
      text: "What's the next Happy Meal&reg; toy?",
      pick: 1
    },
    {
      text: "It's a pity that kids these days are all getting involved with _.",
      pick: 1
    },
    {
      text: "In the new Disney Channel Original Movie, Hannah Montana struggles with _ for the first time.",
      pick: 1
    },
    {
      text: "_. That's how I want to die.",
      pick: 1
    },
    {
      text: "What does Dick Cheney prefer?",
      pick: 1
    },
    {
      text: "What's the most emo?",
      pick: 1
    },
    {
      text: "Instead of coal, Santa now gives the bad children _.",
      pick: 1
    },
    {
      text: "Next from J.K. Rowling: Harry Potter and the Chamber of _.",
      pick: 1
    },
    {
      text: "A romantic, candlelit dinner would be incomplete without _.",
      pick: 1
    },
    {
      text: "White people like _.",
      pick: 1
    },
    {
      text: "_. Betcha can't have just one!",
      pick: 1
    },
    {
      text: "War!<br><br>What is it good for?",
      pick: 1
    },
    {
      text: "BILLY MAYS HERE FOR _.",
      pick: 1
    },
    {
      text: "_. High five, bro.",
      pick: 1
    },
    {
      text: "During sex, I like to think about _.",
      pick: 1
    },
    {
      text: "What did I bring back from Mexico?",
      pick: 1
    },
    {
      text: "What are my parents hiding from me?",
      pick: 1
    },
    {
      text: "What will always get you laid?",
      pick: 1
    },
    {
      text: "What would grandma find disturbing, yet oddly charming?",
      pick: 1
    },
    {
      text: "What did the U.S. airdrop to the children of Afghanistan?",
      pick: 1
    },
    {
      text: "What helps Obama unwind?",
      pick: 1
    },
    {
      text: "What's there a ton of in heaven?",
      pick: 1
    },
    {
      text: "Major League Baseball has banned _ for giving players an unfair advantage.",
      pick: 1
    },
    {
      text: "When I am a billionaire, I shall erect a 50-foot statue to commemorate _.",
      pick: 1
    },
    {
      text: "What's the new fad diet?",
      pick: 1
    },
    {
      text: "When I am the President of the United States, I will create the Department of _.",
      pick: 1
    },
    {
      text: "_. It's a trap!",
      pick: 1
    },
    {
      text: "How am I maintaining my relationship status?",
      pick: 1
    },
    {
      text: "What will I bring back in time to convince people that I am a powerful wizard?",
      pick: 1
    },
    {
      text: "While the United States raced the Soviet Union to the moon, the Mexican government funneled millions of pesos into research on _.",
      pick: 1
    },
    {
      text: "Coming to Broadway this season, _: The Musical.",
      pick: 1
    },
    {
      text: "What's my secret power?",
      pick: 1
    },
    {
      text: "What gives me uncontrollable gas?",
      pick: 1
    },
    {
      text: "But before I kill you, Mr. Bond, I must show you _.",
      pick: 1
    },
    {
      text: "What never fails to liven up the party?",
      pick: 1
    },
    {
      text: "What am I giving up for Lent?",
      pick: 1
    },
    {
      text: "What do old people smell like? ",
      pick: 1
    },
    {
      text: "The class field trip was completely ruined by _.",
      pick: 1
    },
    {
      text: "When Pharaoh remained unmoved, Moses called down a plague of _.",
      pick: 1
    },
    {
      text: "I do not know with which weapons World War III will be fought, but World War IV will be fought with _.",
      pick: 1
    },
    {
      text: "What's Teach for America using to inspire inner city students to succeed?",
      pick: 1
    },
    {
      text: "In Michael Jackson's final moments, he thought about _.",
      pick: 1
    },
    {
      text: "Why do I hurt all over?",
      pick: 1
    },
    {
      text: "Studies show that lab rats navigate mazes 50% faster after being exposed to _.",
      pick: 1
    },
    {
      text: "Why am I sticky?",
      pick: 1
    },
    {
      text: "What's my anti-drug?",
      pick: 1
    },
    {
      text: "And the Academy Award for _ goes to _.",
      pick: 2
    },
    {
      text: "For my next trick, I will pull _ out of _.",
      pick: 2
    },
    {
      text: "_: Good to the last drop.",
      pick: 1
    },
    {
      text: "What did Vin Diesel eat for dinner?",
      pick: 1
    },
    {
      text: "_: kid-tested, mother-approved.",
      pick: 1
    },
    {
      text: "What gets better with age?",
      pick: 1
    },
    {
      text: "I never truly understood _ until I encountered _.",
      pick: 2
    },
    {
      text: "Rumor has it that Vladimir Putin's favorite delicacy is _ stuffed with _.",
      pick: 2
    },
    {
      text: "Lifetime&reg; presents _, the story of _.",
      pick: 2
    },
    {
      text: "Make a haiku.",
      pick: 3
    },
    {
      text: "In M. Night Shyamalan's new movie, Bruce Willis discovers that _ had really been _ all along.",
      pick: 2
    },
    {
      text: "_ is a slippery slope that leads to _.",
      pick: 2
    },
    {
      text: "In a world ravaged by _, our only solace is _.",
      pick: 2
    },
    {
      text: "That's right, I killed _. How, you ask? _.",
      pick: 2
    },
    {
      text: "When I was tripping on acid, _ turned into _.",
      pick: 2
    },
    {
      text: "_ + _ = _.",
      pick: 3
    },
    {
      text: "What's the next superhero/sidekick duo?",
      pick: 2
    },
    {
      text: "Dear Abby,<br><br>I'm having some trouble with _ and would like your advice.",
      pick: 1
    },
    {
      text: "After the earthquake, Sean Penn brought _ to the people of Haiti.",
      pick: 1
    },
    {
      text: "In L.A. County Jail, word is you can trade 200 cigarettes for _.",
      pick: 1
    },
    {
      text: "Maybe she's born with it. Maybe it's _.",
      pick: 1
    },
    {
      text: "Life for American Indians was forever changed when the White Man introduced them to _.",
      pick: 1
    },
    {
      text: "Next on ESPN2, the World Series of _.",
      pick: 1
    },
    {
      text: "Step 1: _. Step 2: _. Step 3: Profit.",
      pick: 2
    },
    {
      text: "Here is the church<br>Here is the steeple<br>Open the doors<br>And there is _.",
      pick: 1
    },
    {
      text: "How did I lose my virginity?",
      pick: 1
    },
    {
      text: "During his childhood, Salvador Dal&iacute; produced hundreds of paintings of _.",
      pick: 1
    },
    {
      text: "In 1,000 years, when paper money is a distant memory, how will we pay for goods and services?",
      pick: 1
    },
    {
      text: "What don't you want to find in your Kung Pao chicken?",
      pick: 1
    },
    {
      text: "The Smithsonian Museum of Natural History has just opened an exhibit on _.",
      pick: 1
    },
    {
      text: "Daddy, why is Mommy crying?",
      pick: 1
    },
    {
      text: "What brought the orgy to a grinding halt?",
      pick: 1
    },
    {
      text: "When I pooped, what came out of my butt?",
      pick: 1
    },
    {
      text: "In the distant future, historians will agree that _ marked the beginning of America's decline.",
      pick: 1
    },
    {
      text: "What's the gift that keeps on giving?",
      pick: 1
    },
    {
      text: "This season on Man vs. Wild, Bear Grylls must survive in the depths of the Amazon with only _ and his wits.",
      pick: 1
    },
    {
      text: "Michael Bay's new three-hour action epic pits _ against _.",
      pick: 2
    },
    {
      text: "And I would have gotten away with it, too, if it hadn't been for _!",
      pick: 1
    },
    {
      text: "In a pinch, _ can be a suitable substitute for _.",
      pick: 2
    },
    {
      text: "What has been making life difficult at the nudist colony?",
      pick: 1
    },
    {
      text: "Science will never explain the origin of _.",
      pick: 1
    },
    {
      text: "In Rome, there are whisperings that the Vatican has a secret room devoted to _.",
      pick: 1
    },
    {
      text: "I learned the hard way that you can't cheer up a grieving friend with _.",
      pick: 1
    },
    {
      text: "When all else fails, I can always masturbate to _.",
      pick: 1
    },
    {
      text: "An international tribunal has found _ guilty of _.",
      pick: 2
    },
    {
      text: "In its new tourism campaign, Detroit proudly proclaims that it has finally eliminated _.",
      pick: 1
    },
    {
      text: "In his new self-produced album, Kanye West raps over the sounds of _.",
      pick: 1
    },
    {
      text: "The socialist governments of Scandinavia have declared that access to _ is a basic human right.",
      pick: 1
    },
    {
      text: "He who controls _ controls the world.",
      pick: 1
    },
    {
      text: "Dear Sir or Madam, We regret to inform you that the Office of _ has denied your request for _.",
      pick: 2
    },
    {
      text: "The CIA now interrogates enemy agents by repeatedly subjecting them to _.",
      pick: 1
    },
    {
      text: "_ would be woefully incomplete without _.",
      pick: 2
    },
    {
      text: "During his midlife crisis, my dad got really into _.",
      pick: 1
    },
    {
      text: "Before I run for president, I must destroy all evidence of my involvement with _.",
      pick: 1
    },
    {
      text: "My new favorite porn star is Joey \"_\" McGee.",
      pick: 1
    },
    {
      text: "In his newest and most difficult stunt, David Blaine must escape from _.",
      pick: 1
    },
    {
      text: "This is your captain speaking. Fasten your seatbelts and prepare for _.",
      pick: 1
    },
    {
      text: "My mom freaked out when she looked at my browser history and found _.com/_.",
      pick: 2
    },
    {
      text: "The Five Stages of Grief: denial, anger, bargaining, _, acceptance.",
      pick: 1
    },
    {
      text: "Members of New York's social elite are paying thousands of dollars just to experience _.",
      pick: 1
    },
    {
      text: "I went from _ to _, all thanks to _.",
      pick: 3
    },
    {
      text: "Little Miss Muffet Sat on a tuffet, Eating her curds and _.",
      pick: 1
    },
    {
      text: "This month's Cosmo: \"Spice up your sex life by bringing _ into the bedroom.\"",
      pick: 1
    },
    {
      text: "If God didn't want us to enjoy _, he wouldn't have given us _.",
      pick: 2
    },
    {
      text: "My country, 'tis of thee, sweet land of _.",
      pick: 1
    },
    {
      text: "After months of debate, the Occupy Wall Street General Assembly could only agree on \"More _!\"",
      pick: 1
    },
    {
      text: "I spent my whole life working toward _, only to have it ruined by _.",
      pick: 2
    },
    {
      text: "Next time on Dr. Phil: How to talk to your child about _.",
      pick: 1
    },
    {
      text: "Only two things in life are certain: death and _.",
      pick: 1
    },
    {
      text: "Everyone down on the ground! We don't want to hurt anyone. We're just here for _.",
      pick: 1
    },
    {
      text: "The healing process began when I joined a support group for victims of _.",
      pick: 1
    },
    {
      text: "The votes are in, and the new high school mascot is _.",
      pick: 1
    },
    {
      text: "Charades was ruined for me forever when my mom had to act out _.",
      pick: 1
    },
    {
      text: "Before _, all we had was _.",
      pick: 2
    },
    {
      text: "Tonight on 20/20: What you don't know about _ could kill you.",
      pick: 1
    },
    {
      text: "You haven't truly lived until you've experienced _ and _ at the same time.",
      pick: 2
    },
    {
      text: "Hey baby, come back to my place and I'll show you _.",
      pick: 1
    },
    {
      text: "My gym teacher got fired for adding _ to the obstacle course.",
      pick: 1
    },
    {
      text: "Finally! A service that delivers _ right to your door.",
      pick: 1
    },
    {
      text: "To prepare for his upcoming role, Daniel Day-Lewis immersed himself in the world of _.",
      pick: 1
    },
    {
      text: "My life is ruled by a vicious cycle of _ and _.",
      pick: 2
    },
    {
      text: "During high school, I never really fit in until I found _ club.",
      pick: 1
    },
    {
      text: "Money can't buy me love, but it can buy me _.",
      pick: 1
    },
    {
      text: "Listen, son. If you want to get involved with _, I won't stop you. Just steer clear of _.",
      pick: 2
    },
    {
      text: "A successful job interview begins with a firm handshake and ends with _.",
      pick: 1
    },
    {
      text: "Call the law offices of Goldstein &amp; Goldstein, because no one should have to tolerate _ in the workplace.",
      pick: 1
    },
    {
      text: "Lovin' you is easy 'cause you're _.",
      pick: 1
    },
    {
      text: "The blind date was going horribly until we discovered our shared interest in _.",
      pick: 1
    },
    {
      text: "What left this stain on my couch?",
      pick: 1
    },
    {
      text: "Turns out that _-Man was neither the hero we needed nor wanted.",
      pick: 1
    },
    {
      text: "After months of practice with _, I think I'm finally ready for _.",
      pick: 2
    },
    {
      text: "In the seventh circle of Hell, sinners must endure _ for all eternity.",
      pick: 1
    },
    {
      text: "As part of his daily regimen, Anderson Cooper sets aside 15 minutes for _.",
      pick: 1
    },
    {
      text: "When you get right down to it, _ is just _.",
      pick: 2
    },
    {
      text: "Having problems with _? Try _!",
      pick: 2
    },
    {
      text: "And what did <i>you</i> bring for show and tell?",
      pick: 1
    },
    {
      text: "I'm not like the rest of you. I'm too rich and busy for _.",
      pick: 1
    },
    {
      text: "With enough time and pressure, _ will turn into _.",
      pick: 2
    },
    {
      text: "_: Hours of fun. Easy to use. Perfect for _!",
      pick: 2
    },
    {
      text: "_. Awesome in theory, kind of a mess in practice.",
      pick: 1
    },
    {
      text: "As part of his contract, Prince won't perform without _ in his dressing room.",
      pick: 1
    },
    {
      text: "Man, this is bullshit. Fuck _.",
      pick: 1
    },
    {
      text: "Dear Leader Kim Jong-un,<br>our village praises your infinite wisdom with a humble offering of _.",
      pick: 1
    },
    {
      text: "_ may pass, but _ will last forever.",
      pick: 2
    },
    {
      text: "She's up all night for good fun.<br>I'm up all night for _.",
      pick: 1
    },
    {
      text: "Alright, bros. Our frat house is condemned, and all the hot slampieces are over at Gamma Phi. The time has come to commence Operation _.",
      pick: 1
    },
    {
      text: "The Japanese have developed a smaller, more efficient version of _.",
      pick: 1
    },
    {
      text: "In return for my soul, the Devil promised me _, but all I got was _.",
      pick: 2
    },
    {
      text: "You guys, I saw this crazy movie last night. It opens on _, and then there's some stuff about _, and then it ends with _.",
      pick: 3
    },
    {
      text: "_ will never be the same after _.",
      pick: 2
    },
    {
      text: "Wes Anderson's new film tells the story of a precocious child coming to terms with _.",
      pick: 1
    },
    {
      text: "In the beginning, there was _.<br>And the Lord said, \"Let there be _.\"",
      pick: 2
    },
    {
      text: "What's fun until it gets weird?",
      pick: 1
    },
    {
      text: "We never did find _, but along the way we sure learned a lot about _.",
      pick: 2
    },
    {
      text: "You've seen the bearded lady!<br>You've seen the ring of fire!<br>Now, ladies and gentlemen, feast your eyes upon _!",
      pick: 1
    },
    {
      text: "How am I compensating for my tiny penis?",
      pick: 1
    },
    {
      text: "I'm sorry, sir, but we don't allow _ at the country club.",
      pick: 1
    },
    {
      text: "2 AM in the city that never sleeps. The door swings open and <i>she</i> walks in, legs up to here. Something in her eyes tells me she's looking for _.",
      pick: 1
    },
    {
      text: "As king, how will I keep the peasants in line?",
      pick: 1
    },
    {
      text: "Oprah's book of the month is \"_ For _: A Story of Hope.\"",
      pick: 2
    },
    {
      text: "Do <i>not</i> fuck with me! I am literally _ right now.",
      pick: 1
    },
    {
      text: "Adventure.<br>Romance.<br>_.<br><br>From Paramount Pictures, \"_.\"",
      pick: 2
    },
    {
      text: "I am become _, destroyer of _!",
      pick: 2
    },
    {
      text: "It lurks in the night. It hungers for flesh. This summer, no one is safe from _.",
      pick: 1
    },
    {
      text: "If you can't handle _, you'd better stay away from _.",
      pick: 2
    },
    {
      text: "This is the prime of my life. I'm young, hot, and full of _.",
      pick: 1
    },
    {
      text: "I'm pretty sure I'm high right now, because I'm absolutely mesmerized by _.",
      pick: 1
    },
    {
      text: "This year's hottest album is \"_\" by _.",
      pick: 2
    },
    {
      text: "Every step towards _ gets me a little closer to _.",
      pick: 2
    },
    {
      text: "Forget everything you know about _, because now we've supercharged it with _!",
      pick: 2
    },
    {
      text: "Honey, I have a new role-play I want to try tonight! You can be _, and I'll be _.",
      pick: 2
    },
    {
      text: "Do the Dew &reg; with our most extreme flavor yet! Get ready for Mountain Dew _!",
      pick: 1
    },
    {
      text: "Armani suit: $1,000. Dinner for two at that swanky restaurant: $300. The look on her face when you surprise her with _: priceless.",
      pick: 1
    },
    {
      text: "In his new action comedy, Jackie Chan must fend off ninjas while also dealing with _.",
      pick: 1
    },
    {
      text: "Well what do you have to say for yourself, Casey? This is the third time you've been sent to the principal's office for _.",
      pick: 1
    },
    {
      text: "Here at the Academy for Gifted Children, we allow students to explore _ at their own pace.",
      pick: 1
    },
    {
      text: "Heed my voice, mortals! I am the god of _, and I will not tolerate _!",
      pick: 2
    },
    {
      text: "I don't mean to brag, but they call me the Michael Jordan of _.",
      pick: 1
    },
    {
      text: "Why am I broke?",
      pick: 1
    },
    {
      text: "Help me doctor, I've got _ in my butt!",
      pick: 1
    },
    {
      text: "Hi MTV! My name is Kendra, I live in Malibu, I'm into _, and I love to have a good time.",
      pick: 1
    },
    {
      text: "Patient presents with _. Likely a result of _.",
      pick: 2
    },
    {
      text: "Life's pretty tough in the fast lane. That's why I never leave the house without _.",
      pick: 1
    },
    {
      text: "What's making things awkward in the sauna?",
      pick: 1
    },
    {
      text: "Get ready for the movie of the summer! One cop plays by the book. The other's only interested in one thing: _.",
      pick: 1
    },
    {
      text: "Having the worst day EVER. #_",
      pick: 1
    },
    {
      text: "In his farewell address, George Washington famously warned Americans about the dangers of _.",
      pick: 1
    },
    {
      text: "Don't forget! Beginning this week, Casual Friday will officially become \"_ Friday.\"",
      pick: 1
    },
    {
      text: "What killed my boner?",
      pick: 1
    },
    {
      text: "Yo' mama so fat she _!",
      pick: 1
    },
    {
      text: "Well if _ is good enough for _, it's good enough for me.",
      pick: 2
    },
    {
      text: "Hi, this is Jim from accounting. We noticed a $1,200 charge labeled \"_\". Can you explain?",
      pick: 1
    },
    {
      text: "Do you lack energy? Does it sometimes feel like the whole world is _? Zoloft.&reg;",
      pick: 1
    },
    {
      text: "WHOOO! God damn I love _!",
      pick: 1
    },
    {
      text: "Now in bookstores: \"The Audacity of _\", by Barack Obama.",
      pick: 1
    },
    {
      text: "And today's soup is Cream of _.",
      pick: 1
    },
    {
      pick: 1,
      text: "I work my ass off all day for this family, and this is what I come home to? _!?"
    },
    {
      pick: 1,
      text: "I have a strict policy. First date, dinner. Second date, kiss. Third date, _."
    },
    {
      pick: 1,
      text: "When I was a kid, we used to play Cowboys and _."
    },
    {
      pick: 1,
      text: "This is America. If you don't work hard, you don't succeed. I don't care if you're black, white, purple, or _."
    },
    {
      pick: 1,
      text: "You Won't Believe These 15 Hilarious _ Bloopers!"
    },
    {
      pick: 1,
      text: "James is a lonely boy. But when he discovers a secret door in his attic, he meets a magical new friend: _."
    },
    {
      pick: 1,
      text: "Don't worry kid. It gets better. I've been living with _ for 20 years."
    },
    {
      pick: 1,
      text: "My grandfather worked his way up from nothing. When he came to this country, all he had was the shoes on his feet and _."
    },
    {
      pick: 1,
      text: "Behind every powerful man is _."
    },
    {
      pick: 1,
      text: "You are not alone. Millions of Americans struggle with _ every day."
    },
    {
      pick: 1,
      text: "Come to Dubai, where you can relax in our world famous spas, experience the nightlife, or simply enjoy _ by the poolside."
    },
    {
      pick: 1,
      text: "\"This is madness.\" \"No, THIS IS _!\""
    },
    {
      pick: 1,
      text: "Listen Gary, I like you. But if you want that corner office, you're going to have to show me _."
    },
    {
      pick: 1,
      text: "I went to the desert and ate of the peyote cactus. Turns out my spirit animal is _."
    },
    {
      pick: 1,
      text: "And would you like those buffalo wings mild, hot, or _?"
    },
    {
      pick: 1,
      text: "The six things I could never do without: oxygen, Facebook, chocolate, Netflix, friends, and _ LOL!"
    },
    {
      pick: 1,
      text: "Why won't you make love to me anymore? Is it _?"
    },
    {
      pick: 1,
      text: "Puberty is a time of change. You might notice hair growing in new places. You might develop an interest in _. This is normal."
    },
    {
      pick: 1,
      text: "I'm sorry, Mrs. Chen, but there was nothing we could do. At 4:15 this morning, your son succumbed to _."
    },
    {
      pick: 1,
      text: "I'm Miss Tennessee, and if I could make the world better by changing one thing, I would get rid of _."
    },
    {
      pick: 1,
      text: "Tonight we will have sex. And afterwards, If you'd like, a little bit of _."
    },
    {
      pick: 1,
      text: "Everybody join hands and close your eyes. Do you sense that? That's the presence of _ in this room."
    },
    {
      pick: 1,
      text: "To become a true Yanomamo warrior, you must prove that you can withstand _ without crying out."
    },
    {
      pick: 1,
      text: "Y'all ready to get this thing started? I'm Nick Cannon, and this is America's Got _."
    },
    {
      pick: 1,
      text: "If you had to describe the Card Czar, using only one of the cards in your hand, which one would it be?"
    },
    {
      pick: 2,
      text: "_ be all like _."
    },
    {
      pick: 1,
      text: "Art isn't just a painting in a stuffy museum. Art is alive. Art is _."
    },
    {
      pick: 1,
      text: "As reparations for slavery, all African Americans will receive _."
    },
    {
      pick: 1,
      text: "As Teddy Roosevelt said, the four manly virtues are honor, temperance, industry, and _."
    },
    {
      pick: 1,
      text: "Best you go back where you came from, now. We don't take too kindly to _ in these parts."
    },
    {
      pick: 1,
      text: "CNN breaking news! Scientists discover _."
    },
    {
      pick: 1,
      text: "Coming to Red Lobster&reg; this month, _."
    },
    {
      pick: 1,
      text: "Congratulations! You have been selected for our summer internship program. While we are unable to offer a salary, we can offer you _."
    },
    {
      pick: 1,
      text: "Dance like there's nobody watching, love like you'll never be hurt, and live like you're _."
    },
    {
      pick: 1,
      text: "Errbody in the club _."
    },
    {
      pick: 1,
      text: "Feeling so grateful! #amazing #mylife #_."
    },
    {
      pick: 1,
      text: "Girls just wanna have _."
    },
    {
      pick: 1,
      text: "Google Calendar alert: _ in 10 minutes."
    },
    {
      pick: 1,
      text: "I don't believe in God. I believe in _."
    },
    {
      pick: 1,
      text: "I got rhythm, I've got music, I've got _. Who could ask for anything more?"
    },
    {
      pick: 1,
      text: "I may not be much to look at, but I fuck like _."
    },
    {
      pick: 1,
      text: "I tell you, it was a non-stop fuckfest. When it was over, my asshole looked like _."
    },
    {
      pick: 1,
      text: "I'll take the BBQ bacon burger with friend egg and fuck it how about _."
    },
    {
      pick: 1,
      text: "I'm sorry, sir, but your insurance plan doesn't cover injuries caused by _."
    },
    {
      pick: 1,
      text: "I've had a horrible vision, father. I saw mountains crumbling, stars falling from the sky. I saw _."
    },
    {
      pick: 1,
      text: "If at first you don't succeed, try _."
    },
    {
      pick: 1,
      text: "In the 1950s, psychologists prescribed _ as a cure for homosexually."
    },
    {
      pick: 1,
      text: "LSD + _ = really bad time."
    },
    {
      pick: 1,
      text: "\"Mom's to-do list:"
    },
    {
      pick: 1,
      text: "* Buy Groceries"
    },
    {
      pick: 1,
      text: "* Clean up _."
    },
    {
      pick: 1,
      text: "* Soccer Practice.\""
    },
    {
      pick: 1,
      text: "Most Americans would not vote for a candidate who is openly _."
    },
    {
      pick: 1,
      text: "No, no, no, no, no, no, NO! I will NOT let _ ruin this wedding."
    },
    {
      pick: 1,
      text: "Oh no! Siri, how do I fix _?"
    },
    {
      pick: 1,
      text: "One more thing. Watch out for Big Mike. They say he killed a man with _."
    },
    {
      pick: 1,
      text: "Ooo, daddy like _."
    },
    {
      pick: 1,
      text: "Poor Brandon, still living in his parent's basement. I heard he never got over _."
    },
    {
      pick: 1,
      text: "Run, run, as fast as you can! You can't catch me, I'm _!"
    },
    {
      pick: 1,
      text: "She's a lady in the streets, _ in the sheets."
    },
    {
      pick: 1,
      text: "She's just one of the guys, you know? She likes beer, and football, and _."
    },
    {
      pick: 1,
      text: "Son, take it from someone who's been around the block a few times. Nothin' puts her in the mood like _."
    },
    {
      pick: 1,
      text: "Summer lovin', had me a blast. _, happened so fast."
    },
    {
      pick: 1,
      text: "\"The top Google auto-complete results for \"Barack Obama\":"
    },
    {
      pick: 1,
      text: "Barack Obama Height."
    },
    {
      pick: 1,
      text: "Barack Obama net worth."
    },
    {
      pick: 1,
      text: "Barack Obama _.\""
    },
    {
      pick: 1,
      text: "Then the princess kissed the frog, and all of a sudden the frog was _!"
    },
    {
      pick: 1,
      text: "There is no God. It's just _ and then you die."
    },
    {
      pick: 1,
      text: "This Friday at the Liquid Lunge, it's _ Night! Ladies drink free."
    },
    {
      pick: 1,
      text: "We do not shake with our left hands in this country. That is the hand we use for _."
    },
    {
      pick: 1,
      text: "Well if _ is a crime, then lock me up!"
    },
    {
      pick: 1,
      text: "Well, shit. My eyes ain't so good, but I'll eat my own boot if that ain't _!"
    },
    {
      pick: 1,
      text: "What are all those whales singing about?"
    },
    {
      pick: 1,
      text: "What sucks balls?"
    },
    {
      pick: 1,
      text: "What totally destroyed my asshole?"
    },
    {
      pick: 1,
      text: "What turned me into a Republican?"
    },
    {
      pick: 1,
      text: "What will end racism once and for all?"
    },
    {
      pick: 1,
      text: "What's a total waste of Hillary Clinton's time?"
    },
    {
      pick: 1,
      text: "What's about to take dance floor to the next level?"
    },
    {
      pick: 1,
      text: "What's the gayest?"
    },
    {
      pick: 1,
      text: "What's the most problematic?"
    },
    {
      pick: 1,
      text: "Why am I laughing and crying and taking off my clothes?"
    },
    {
      pick: 1,
      text: "With a one-time gift of just $10, you can save this child from _."
    },
    {
      pick: 1,
      text: "You know who else liked _? Hitler."
    },
    {
      pick: 1,
      text: "You won't believe what's in my pussy. It's _."
    },
    {
      text: "Siskel and Ebert have panned _ as \"poorly conceived\" and \"sloppily executed.\"",
      pick: 1
    },
    {
      text: "Up next on Nickelodeon: \"Clarissa Explains _.\"",
      pick: 1
    },
    {
      text: "Believe it or not, Jim Carrey can do a dead-on impression of _.",
      pick: 1
    },
    {
      text: "It's Morphin' Time! Mastadon! Pterodactyl! Triceratops! Sabertooth Tiger! _!",
      pick: 1
    },
    {
      text: "I'm a bitch, I'm a lover, I'm a child, I'm _.",
      pick: 1
    },
    {
      text: "How did Stella get her groove back?",
      pick: 1
    },
    {
      text: "Tonight on SNICK: \"Are You Afraid of _?\"",
      pick: 1
    },
    {
      pick: 1,
      text: "And in the end, the dragon was not evil; he just wanted _."
    },
    {
      pick: 2,
      text: "Critics are raving about HBO's new <i>Game of Thrones</i> spin-off, \"_ of _.\""
    },
    {
      pick: 1,
      text: "Having tired of poetry and music, the immortal elves now fill their days with _."
    },
    {
      pick: 1,
      text: "Legend tells of a princess who has been asleep for a thousand years and can only be awoken by _."
    },
    {
      pick: 1,
      text: "Who blasphemes and bubbles at the center of all infinity, whose name no lips dare speak aloud, and who gnaws hungrily in inconceivable, unlighted chambers beyond time?"
    },
    {
      pick: 1,
      text: "Your father was a powerful wizard, Harry. Before he died, he left you something very precious: _."
    },
    {
      pick: 1,
      text: "I'm Bobby Flay, and if you can't stand _, get out of the kitchen!"
    },
    {
      pick: 1,
      text: "It's not delivery. It's _."
    },
    {
      pick: 1,
      text: "Aw babe, your burps smell like _!"
    },
    {
      pick: 1,
      text: "Don't miss Rachel Ray's hit new show, <i>Cooking with _</i>."
    },
    {
      pick: 1,
      text: "Excuse me, waiter. Could take this back? This soup tastes like _."
    },
    {
      pick: 1,
      text: "Now on Netflix: <i>Jiro Dreams of _</i>."
    },
    {
      pick: 2,
      text: "In line with our predictions, we find a robust correlation between _ and _ (p&gt;.05)."
    },
    {
      pick: 1,
      text: "In what's being hailed as a major breakthrough, scientists have synthesized _ in the lab."
    },
    {
      pick: 1,
      text: "A study published in Nature this week found that _ is good for you in small doses."
    },
    {
      pick: 2,
      text: "In an attempt to recreate conditions just after the Big Bang, physicists at the LHC are observing collisions between _ and _."
    },
    {
      pick: 1,
      text: "What really killed the dinosaurs?"
    },
    {
      pick: 1,
      text: "Hey there, Young Scientists! Put on your labcoats and strap on your safety goggles, because today we're learning about _!"
    },
    {
      pick: 2,
      text: "Today on MythBusters, we found out how long _ can withstand _."
    },
    {
      pick: 1,
      text: "Don't worry, Penny! Go Go Gadget _!"
    },
    {
      pick: 2,
      text: "I need you like _ needs _."
    },
    {
      pick: 1,
      text: "I'm just gonna stay in tonight. You know, Netflix and _."
    },
    {
      pick: 1,
      text: "Nothing says \"I love you\" like _."
    },
    {
      pick: 2,
      text: "Such _. Very _. Wow."
    },
    {
      pick: 1,
      text: "This app is basically Tinder, but for _."
    },
    {
      pick: 1,
      text: "TRIGGER WARNING: _."
    },
    {
      pick: 1,
      text: "What did I nickname my genitals?"
    },
    {
      pick: 1,
      text: "You guys, you can buy _ on the dark web."
    },
    {
      pick: 1,
      text: "When you go to the polls on Tuesday, remember:  a vote for me is a vote for _."
    },
    {
      pick: 1,
      text: "Senator, I trust you enjoyed _ last night.  Now, can I count on your vote?"
    },
    {
      pick: 1,
      text: "Trump's great!  Trump's got _.  I love that."
    },
    {
      pick: 1,
      text: "According to Arizona's stand-your-ground law, you're allowed to shoot someone if they're _."
    },
    {
      pick: 1,
      text: "It's 3AM.  The red phone rings.  It's _.  Who do you want answering?"
    },
    {
      pick: 1,
      text: "Donald Trump has nominated _ for his VP."
    },
    {
      pick: 1,
      text: "In 2019, Donald Trump eliminated our national parks to make room for _."
    },
    {
      pick: 1,
      text: "Donald Trump's first act as president was to outlaw _."
    },
    {
      text: "A wise man said, \"Everything is about sex. Except sex. Sex is about _.\"",
      pick: 1
    },
    {
      text: "Our relationship is strictly professional. Let's not complicate things with _.",
      pick: 1
    },
    {
      text: "Corruption. Betrayal. _. Coming soon to Netflix, \"House of _.\"",
      pick: 2
    },
    {
      text: "Because you enjoyed _, we thought you'd like _.",
      pick: 2
    },
    {
      text: "I can't believe Netflix is using _ to promote House of Cards.",
      pick: 1
    },
    {
      text: "We're not like other news organizations. Here at Slugline, we welcome _ in the office. ",
      pick: 1
    },
    {
      text: "I'm not going to lie. I despise _. There, I said it.",
      pick: 1
    },
    {
      text: "Cancel all my meetings. We've got a situation with _ that requires my immediate attention.",
      pick: 1
    },
    {
      text: "If you need him to, Remy Danton can pull some strings and get you _, but it'll cost you.",
      pick: 1
    },
    {
      pick: 1,
      text: "What's the most common obstacle to consummating a marriage on one's wedding night?"
    },
    {
      pick: 1,
      text: "What will the groom think of when he first sees the bride on their wedding day?"
    },
    {
      pick: 1,
      text: "What was the happiest memory from the honeymoon?"
    },
    {
      pick: 1,
      text: "What should every couple incorporate into their first dance?"
    },
    {
      pick: 1,
      text: "In a marriage, whatever the question is, the answer is always _."
    },
    {
      pick: 1,
      text: "First comes love, then comes marriage, then comes _."
    },
    {
      pick: 1,
      text: "If you like it, then you should put _ on it."
    },
    {
      pick: 1,
      text: "What's a sure sign of a healthy marriage?"
    },
    {
      pick: 1,
      text: "True love means _."
    },
    {
      pick: 1,
      text: "She's not just my wife. She's also _."
    },
    {
      pick: 1,
      text: "Consider including _ in your vows."
    },
    {
      pick: 1,
      text: "What's the #1 cause of wedding day jitters?"
    },
    {
      pick: 1,
      text: "What the fuck is your problem?"
    },
    {
      pick: 1,
      text: "What's the best way to spice up your marriage after years of monotony?"
    },
    {
      pick: 2,
      text: "It's not _ that puts strain on a relationship, it's _."
    },
    {
      pick: 1,
      text: "Love is patient, love is kind. Love is _."
    },
    {
      pick: 1,
      text: "Marriage is a lot of work, which mainly consists of _."
    },
    {
      pick: 2,
      text: "Marriage: the end of _ and the beginning of _."
    },
    {
      pick: 1,
      text: "_ doesn't count as cheating."
    },
    {
      pick: 1,
      text: "What was your favorite wedding photo of?"
    },
    {
      pick: 1,
      text: "_: grounds for divorce in all 50 states."
    },
    {
      pick: 1,
      text: "Along with something borrowed and something blue, be sure to take _ with you down the aisle."
    },
    {
      pick: 2,
      text: "The only thing worse than _ at a wedding is _."
    },
    {
      pick: 1,
      text: "What's the secret to a long and happy marriage?"
    },
    {
      pick: 1,
      text: "Nothing gets a wedding reception fired up like _."
    },
    {
      pick: 1,
      text: "What will be the best thing about the couple's married sex life?"
    },
    {
      pick: 1,
      text: "The first five years are the hardest. After that, it's all _."
    },
    {
      pick: 1,
      text: "Make sure you have _ and the rest will take care of itself."
    },
    {
      pick: 1,
      text: "The first issue the couple tackles in marriage counseling will be _."
    },
    {
      pick: 1,
      text: "Nothing says \"fulfilling life-long commitment\" like _."
    },
    {
      pick: 1,
      text: "It's trendy to include _ in your wedding these days."
    },
    {
      pick: 1,
      text: "Every wedding toast should include at least one mention of _."
    },
    {
      pick: 1,
      text: "What's the only thing sexier than confidence?"
    },
    {
      pick: 1,
      text: "The word \"husband\" comes from the Latin word for _."
    },
    {
      pick: 1,
      text: "Between the champagne toast and the cake-cutting, there was _."
    },
    {
      pick: 1,
      text: "_. A sure-fire cure for the seven-year itch."
    },
    {
      pick: 1,
      text: "_. A wedding gift you'll cherish forever."
    },
    {
      pick: 1,
      text: "In a committed adult relationship, _ goes a long way."
    },
    {
      pick: 1,
      text: "Studies show that married people are much more likely than single people to have _."
    },
    {
      pick: 1,
      text: "What unique detail did the bride's dress include?"
    },
    {
      pick: 1,
      text: "Being married means having the freedom to embrace _."
    },
    {
      pick: 1,
      text: "The wedding cake was shaped like _."
    },
    {
      pick: 1,
      text: "What's the groom hiding in his underwear?"
    },
    {
      pick: 1,
      text: "The ceremony ended with _."
    },
    {
      pick: 1,
      text: "The couple has a wonderful life filled with _ ahead of them."
    },
    {
      pick: 1,
      text: "There's nothing more romantic than _."
    },
    {
      pick: 1,
      text: "A healthy long-term sex life is built on _."
    },
    {
      pick: 1,
      text: "What's the couple's favorite shared hobby?"
    },
    {
      pick: 1,
      text: "Instead of a garter toss, try _."
    },
    {
      pick: 1,
      text: "How did you celebrate your first anniversary?"
    },
    {
      pick: 1,
      text: "What saved your marriage?"
    },
    {
      pick: 1,
      text: "Their first fight as a married couple was about _."
    },
    {
      pick: 1,
      text: "The proposal featured _."
    },
    {
      pick: 1,
      text: "What's a favorite pastime of the family you're marrying into?"
    },
    {
      pick: 1,
      text: "What did the rehearsal dinner taste like?"
    },
    {
      text: "FUN FACT: The Daleks were originally shaped to look like _.",
      pick: 1
    },
    {
      text: "At this new Doctor Who themed restaurant, you can get a free _ if you can eat a plate of bangers and mash in under 3 minutes.",
      pick: 1
    },
    {
      text: "There's a new dance on Gallifrey. It's called the _.",
      pick: 1
    },
    {
      text: "They announced a new LEGO Doctor Who game! Rumor has it that _ is an unlockable character.",
      pick: 1
    },
    {
      text: "I think the BBC is losing it. They just released a Doctor Who themed _.",
      pick: 1
    },
    {
      text: "It's a little known fact that if you send a _ to the BBC, they will send you a picture of The Doctor.",
      pick: 1
    },
    {
      text: "According to the Daleks, _ is better at _.",
      pick: 2
    },
    {
      text: "Who is going to be The Doctor's next companion?",
      pick: 1
    },
    {
      text: "In all of space and time you decide that _ is a good choice?!",
      pick: 1
    },
    {
      text: "Originally, the 50th special was going to have _ appear, but the BBC decided against it in the end.",
      pick: 1
    },
    {
      text: "Adipose were thought to be made of fat, but are really made of _.",
      pick: 1
    },
    {
      text: "After we watch an episode, I've got some _-flavored Jelly Babies to hand out.",
      pick: 1
    },
    {
      text: "I was ok with all the BAD WOLF graffiti, until someone wrote it on _.",
      pick: 1
    },
    {
      text: "Who should be the 13th Doctor?",
      pick: 1
    },
    {
      text: "Jack Harkness, I can't leave you alone for a minute! I turn around and you're trying to seduce _.",
      pick: 1
    },
    {
      text: "The Chameleon circuit is working again...somewhat. Instead of a phone booth, the TARDIS is now a _.",
      pick: 1
    },
    {
      text: "Bowties are _.",
      pick: 1
    },
    {
      text: "Old and busted: EXTERMINATE! New hotness: _.",
      pick: 1
    },
    {
      text: "I hear the next thing that will cause The Doctor to regenerate is _.",
      pick: 1
    },
    {
      text: "Wibbly-wobbly, timey-wimey _.",
      pick: 1
    },
    {
      text: "What's going to be The Doctor's new catchphrase?",
      pick: 1
    },
    {
      text: "They found some more last episodes! They were found in _.",
      pick: 1
    },
    {
      text: "The next Doctor Who spin-off is going to be called _.",
      pick: 1
    },
    {
      text: "I'd give up _ to travel with The Doctor.",
      pick: 1
    },
    {
      text: "_ was sent to save _.",
      pick: 2
    },
    {
      text: "The Doctor did it! He saved the world again! This time using a _.",
      pick: 1
    },
    {
      text: "If Ned Stark had _, he never would have _.",
      pick: 2
    },
    {
      text: "Brace yourselves, _ is coming.",
      pick: 1
    },
    {
      text: "In exchange for his sister, Viserys was given _.",
      pick: 1
    },
    {
      text: "Despite his best efforts, King Robert filled his reign with _.",
      pick: 1
    },
    {
      text: "_ was proclaimed the true king of the Seven Kingdoms.",
      pick: 1
    },
    {
      text: "In _, you win or you lose.",
      pick: 1
    },
    {
      text: "Because of _, Danerys was called _ by everyone.",
      pick: 2
    },
    {
      text: "I will take what is mine with _ and _.",
      pick: 2
    },
    {
      text: "There is no word for _ in Dothraki.",
      pick: 1
    },
    {
      text: "In the next Game of Thrones book, George R. R. Martin said _ will _.",
      pick: 2
    },
    {
      text: "All hail _! King of _!",
      pick: 2
    },
    {
      text: "A Lannister always pays _.",
      pick: 1
    },
    {
      text: "First lesson, stick them with _.",
      pick: 1
    },
    {
      text: "In the name of _, first of his _.",
      pick: 2
    },
    {
      text: "The things I do for _.",
      pick: 1
    },
    {
      text: "Hodor only ever says _.",
      pick: 1
    },
    {
      text: "The next Game of Thrones book will be titled _ of _.",
      pick: 2
    },
    {
      text: "A Dothraki wedding without _ is considered a dull affair.",
      pick: 1
    },
    {
      text: "After I was caught _, I was forced to join the Night's Watch.",
      pick: 1
    },
    {
      text: "A man without _ is a man without power.",
      pick: 1
    },
    {
      text: "/r/ _.",
      pick: 1
    },
    {
      text: "The Ada Initiative is now attacking _.",
      pick: 1
    },
    {
      text: "Not another _ in the hotel elevator!",
      pick: 1
    },
    {
      text: "Closing Ceremonies drinking game: Every time _ is mentioned... DRINK!",
      pick: 1
    },
    {
      text: "In a Congressional hearing, US CYBERCOM commander Gen. Alexander claimed the latest data breach was due to _.",
      pick: 1
    },
    {
      text: "The Maker Faire was unexpectedly interrupted by _.",
      pick: 1
    },
    {
      text: "Do you even _?",
      pick: 1
    },
    {
      text: "Come to the dark side, we have _.",
      pick: 1
    },
    {
      text: "Y U NO _!!!!!",
      pick: 1
    },
    {
      text: "While alone in the server room I _.",
      pick: 1
    },
    {
      text: "When I get drunk I am an expert on _",
      pick: 1
    },
    {
      text: "Well, guess what? I've got a fever, and the only prescription is more _.",
      pick: 1
    },
    {
      text: "We should take _ and push it _.",
      pick: 2
    },
    {
      text: "We decided to _ to raise money for the EFF.",
      pick: 1
    },
    {
      text: "TSA wouldn't allow me through because of my _.",
      pick: 1
    },
    {
      text: "Tonight's Final Hacker Jeopardy category will be _!",
      pick: 1
    },
    {
      text: "Today's PaulDotCom podcast featured _.",
      pick: 1
    },
    {
      text: "These are not the _ you are looking for.",
      pick: 1
    },
    {
      text: "The snozberries taste like _.",
      pick: 1
    },
    {
      text: "The only winning move is to _.",
      pick: 1
    },
    {
      text: "The next cyber war will feature _.",
      pick: 1
    },
    {
      text: "The best part of Alexis Park was all the _.",
      pick: 1
    },
    {
      text: "So long and thanks for all the _.",
      pick: 1
    },
    {
      text: "Security through obscurity is better than _.",
      pick: 1
    },
    {
      text: "Rule 34 _.",
      pick: 1
    },
    {
      text: "Rock, Paper, Scissors, Lizard, _.",
      pick: 1
    },
    {
      text: "Our most powerful weapon for the Zombie Apocalypse will be _.",
      pick: 1
    },
    {
      text: "Only half of programming is coding. The other 90% is _.",
      pick: 1
    },
    {
      text: "One does not simply _.",
      pick: 1
    },
    {
      text: "On the Internet, no one can tell you're _.",
      pick: 1
    },
    {
      text: "Occupy _.",
      pick: 1
    },
    {
      text: "Next year's scavenger hunt is rumored to include finding a _ with a _.",
      pick: 2
    },
    {
      text: "Next time we meet we should _.",
      pick: 1
    },
    {
      text: "My extremely large _ is what makes me better than you.",
      pick: 1
    },
    {
      text: "My _ brings all the _ to the yard.",
      pick: 2
    },
    {
      text: "Most hackers smell like _.",
      pick: 1
    },
    {
      text: "Las Vegas is best known for _.",
      pick: 1
    },
    {
      text: "Keep calm and _.",
      pick: 1
    },
    {
      text: "It's dangerous to go alone. Take _.",
      pick: 1
    },
    {
      text: "It smells like _ in this room.",
      pick: 1
    },
    {
      text: "In a shocking move Archive.org decided to NOT back up _.",
      pick: 1
    },
    {
      text: "I'mma let you finish but _ is the best _ of all time.",
      pick: 2
    },
    {
      text: "I'm fucking tired of hearing about _.",
      pick: 1
    },
    {
      text: "I would be doing more with my life, except for this _ in the way.",
      pick: 1
    },
    {
      text: "I work 80 hours a week and still can't afford a _.",
      pick: 1
    },
    {
      text: "I used to be a hacker like you, until I took a(n) _ to the knee.",
      pick: 1
    },
    {
      text: "I use _ to secure all of my personal data.",
      pick: 1
    },
    {
      text: "I spotted the fed and all I got was _.",
      pick: 1
    },
    {
      text: "I look like a geeky hacker, but I don't know anything about _.",
      pick: 1
    },
    {
      text: "I have the biggest _, ever!",
      pick: 1
    },
    {
      text: "I find your lack of _ disturbing.",
      pick: 1
    },
    {
      text: "I can't believe they rejected my talk on _.",
      pick: 1
    },
    {
      text: "I can haz _.",
      pick: 1
    },
    {
      text: "HOLY _ BATMAN!!",
      pick: 1
    },
    {
      text: "High Tech start-up company combines _ with _.",
      pick: 2
    },
    {
      text: "Go home _, you're drunk.",
      pick: 1
    },
    {
      text: "Go Go Gadget _!",
      pick: 1
    },
    {
      text: "Drink all the _. Hack all the _.",
      pick: 2
    },
    {
      text: "Def Con Kids will now focus on teaching young hackers _.",
      pick: 1
    },
    {
      text: "Confession Bear Says: _",
      pick: 1
    },
    {
      text: "But does _ run NetBSD?",
      pick: 1
    },
    {
      text: "Am I the only one around here who _.",
      pick: 1
    },
    {
      text: "All I did was _ but someone gave me a red card.",
      pick: 1
    },
    {
      text: "35% of all hackers have to deal with _.",
      pick: 1
    },
    {
      text: "_. There's an app for that.",
      pick: 1
    },
    {
      text: "_. This is why I can't have nice things!",
      pick: 1
    },
    {
      text: "_: You keep using that term. I do not think it means what you think it means.",
      pick: 1
    },
    {
      text: "_ is now outsourced to call centers in India.",
      pick: 1
    },
    {
      text: "_ shot first.",
      pick: 1
    },
    {
      text: "_ Killed the barrel roll",
      pick: 1
    },
    {
      text: "_ A'int Nobody Got Time For Dat!!",
      pick: 1
    },
    {
      text: "_ Put a bird on it!",
      pick: 1
    },
    {
      text: "_ makes me puke rainbows.",
      pick: 1
    },
    {
      text: "_ is also monitored by Prism.",
      pick: 1
    },
    {
      text: "_ is what keeps us together.",
      pick: 1
    },
    {
      text: "_ is a better replacement for crypto.",
      pick: 1
    },
    {
      text: "_ riding a Segway",
      pick: 1
    },
    {
      text: "One day, over my fireplace, I'm going to have a massive painting of _. You know, to remind me where I came from.",
      pick: 1
    },
    {
      text: "Hey, Susie. I know your job is _ but can you just grab me _? Thanks.",
      pick: 2
    },
    {
      text: "This month in Cosmo: how to give your man _ at the expense of _.",
      pick: 2
    },
    {
      text: "Are you there, God? It's me, _",
      pick: 1
    },
    {
      text: "50 Shades of _.",
      pick: 1
    },
    {
      text: "It's not length, it's _.",
      pick: 1
    },
    {
      text: "Whatever, Peeta. You'll never understand my struggle with _.",
      pick: 1
    },
    {
      text: "Men are from _, women are from _.",
      pick: 2
    },
    {
      text: "Why does the Komen Foundation hate Planned Parenthood?",
      pick: 1
    },
    {
      text: "Math is hard. Let's go _!",
      pick: 1
    },
    {
      text: "The latest proposal in the Texas legislature is to take away _ from women.",
      pick: 1
    },
    {
      text: "If you don't mind my asking, how *do* lesbians have sex?",
      pick: 1
    },
    {
      text: "In her next romcom, Katherine Heigl plays a woman who falls in love with her boss's _.",
      pick: 1
    },
    {
      text: "The Pantone color of the year is inspired by _.",
      pick: 1
    },
    {
      text: "What is Olivia Pope's secret to removing red wine stains from white clothes?",
      pick: 1
    },
    {
      text: "Why exactly was Alanis so mad at Uncle Joey?",
      pick: 1
    },
    {
      text: "Why do men on the Internet send me pictures of _?",
      pick: 1
    },
    {
      text: "What's my weapon of choice in the \"War on Women\"?",
      pick: 1
    },
    {
      text: "What's Seth MacFarlane's problem?",
      pick: 1
    },
    {
      text: "I couldn't help but wonder: was it Mr. Big, or was it _?",
      pick: 1
    },
    {
      text: "What fell into my bra?",
      pick: 1
    },
    {
      text: "What's my preferred method of contraception?",
      pick: 1
    },
    {
      text: "Sofia Coppola's new film focuses on a wealthy young white woman feeling alienated by _.",
      pick: 1
    },
    {
      text: "_: the Tori Amos song that changed my life",
      pick: 1
    },
    {
      text: "Something old, something new, something borrowed, and _.",
      pick: 1
    },
    {
      text: "Why can't we have nice things?",
      pick: 1
    }
  ]
end
