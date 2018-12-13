# Create Factions
factions = Faction.create!([
  {id: "1", fac_name: "Crew"},
  {id: "2", fac_name: "Passengers"},
  ])

# Create Characters
users = User.create!([
  {email: "kal444h@gmail.com", password: "asdf123", faction_id: "1", role: "admin", position: "game_master", character: "Tiberius", title: "mysterious host", tagline: "heyyyyy"},
  {email: "siconninja@gmail.com", password: "asdf123", faction_id: "1", role: "admin", position: "game_master", character: "Sicon", title: "mysterious host", tagline: "schweet"},
  {email: "a@email.com", password: "biqI75W6", faction_id: "1", role: "member", position: "First Officer", character: "Daniel Warren", title: "35, American", tagline: "Competent First Officer, well liked by the crew and expected to be given command of a ship as soon as possible. Reports to the Captain."},
  {email: "b@email.com", password: "V34kQ33g", faction_id: "1", role: "member", position: "Second Officer", character: "David Whitworth", title: "47, English", tagline: "Reliable and competent officer, previously sailed with the Royal Merchant Navy. Reports to the First Officer."},
  {email: "c@email.com", password: "Ys20mnng", faction_id: "1", role: "member", position: "Third Officer", character: "Christina Younger", title: "36, American", tagline: "The highest placed woman in the Cruise Line and has sacrificed her personal life for her career. Reports to the Second Officer."},
  {email: "aerocricket@gmail.com", password: "mur_maid", faction_id: "1", role: "member", position: "Entertainments Officer", character: "Vic Hammerstein", title: "49, American", tagline: "Always provides lavish entertainment spectaculars for passengers. Reports to the First Officer."},
  {email: "d@email.com", password: "BzRk6300", faction_id: "1", role: "member", position: "Master Chef", character: "Blaise de Richelieu", title: "50, French", tagline: "Temperamental culinary genius, signed on by Hammerstein at great expense. This is de Richelieu’s first voyage aboard the Libertania, and so far the cuisine is not up to expectations. Reports to the Third Officer."},
  {email: "e@email.com", password: "fG4RM9bx", faction_id: "1", role: "member", position: "Cocktail Stewardess", character: "Julia Morteblanca", title: "25, Italian", tagline: "Previously worked in the Waldorf Astoria as America’s first professional female cocktail mixer. Reports to the Chief Purser."},
  {email: "f@email.com", password: "UfnPmyq5", faction_id: "1", role: "member", position: "Cabin Stewardess", character: "Catherine New", title: "18, English", tagline: "Only recently joined the Libertainia, but already knows everything about anything on board the ship. Reports to the Chief Purser."},
  {email: "g@email.com", password: "1cdRkuuc", faction_id: "1", role: "member", position: "Cabin Stewardess", character: "Cynthia Petal", title: "32", tagline: "Has been working aboard liners for half of her life, and is competent and well liked by crew and passengers. Reports to the Chief Purser."},
  {email: "h@email.com", password: "O9U5jUOM", faction_id: "1", role: "member", position: "Trainee Steward", character: "Eric Lassiter", title: "20, Scottish", tagline: "Training to be a steward. Reports to the Chief Purser."},
  {email: "i@email.com", password: "78aUpZlV", faction_id: "1", role: "member", position: "Cabaret Singer", character: "Jennifer Floreste", title: "41, American", tagline: "Previously starred at the London Palladium, a famous singer on her last voyage. Reports to the Entertainments Officer."},
  {email: "j@email.com", password: "5n6KP601", faction_id: "2", role: "member", character: "Sir Rory Canter", title: "Baronet, 54", tagline: "Rumoured to be the richest man in Great Britain."},
  {email: "k@email.com", password: "01bqdgn5", faction_id: "2", role: "member", character: "Lady Isabelle Canter", title: "33", tagline: "Young and pretty wife of Sir Rory, was previously an actress and ballet dancer."},
  {email: "l@email.com", password: "zxA6n64f", faction_id: "2", role: "member", character: "Jeremiah Finkelstein", title: "Industrial Businessman, 61", tagline: "Owner of several large American manufacturing concerns, as well as the first aircraft factory outside of Europe."},
  {email: "m@email.com", password: "swmhrJyD", faction_id: "2", role: "member", character: "Rachel Finkelstein", title: "Jeremiah’s wife and business partner, 58", tagline: "Rachel is renowned for her financial acumen."},
  {email: "n@email.com", password: "fzXQ06lz", faction_id: "2", role: "member", character: "PJ Nichols", title: "Singer, 27", tagline: "Although predominantly a Music Hall singer and entertainer, PJ has recently returned from Hollywood, after ‘trying out’ for several of the main studios."},
  {email: "o@email.com", password: "3I5rtpL0", faction_id: "2", role: "member", character: "Clark Ridgeway", title: "PJ's Manager, 35", tagline: "Has arranged several stupendously successful shows and tours for PJ in the past."},
  {email: "p@email.com", password: "7uo1CkV5", faction_id: "2", role: "member", character: "Gilbert Ryce", title: "American Secretary of State, 68", tagline: "Ageing friend of the American President."},
  {email: "q@email.com", password: "KfIx72JW", faction_id: "2", role: "member", character: "Wilma Drew", title: "Ryce's Assistant, 32", tagline: "Gilbert Ryce’s assistant in the American State Department, always smooth and unruffled."},
  {email: "r@email.com", password: "0ir8J25T", faction_id: "2", role: "member", character: "Sir Ranulph Royston", title: "British Minister of War, 63", tagline: "A widower, Sir Ranulph’s wife recently died in a riding accident."},
  {email: "s@email.com", password: "O7D84FEI", faction_id: "2", role: "member", character: "Elizabeth James", title: "Sir Ranulph’s Daughter, 19", tagline: "Elizabeth is divorcing her husband after he had an affair."},
  {email: "t@email.com", password: "57U79t30", faction_id: "2", role: "member", character: "Maximillian von Grafenberg", title: "German Procurement Minister, 47", tagline: "Has been in America for the last year, and is now returning to Germany."},
  {email: "u@email.com", password: "VsVri2w1", faction_id: "2", role: "member", character: "Armin Oberhausen", title: "Maximilian’s assistant, 39.", tagline: "Armin is ambitious and some say fancies the Maximilian’s job."},
  {email: "v@email.com", password: "woWcpXUb", faction_id: "2", role: "member", character: "Sasha Alexanderovich Ilyatkin", title: "Russian Minister, 45", tagline: "Sasha was in New York to sign trade agreements with the American Government."},
  {email: "w@email.com", password: "39tlUhD6", faction_id: "2", role: "member", character: "Eldon Dumlop II", title: "American socialite, 47", tagline: "Rich American heir to the Dumlop rubber fortune."},
  {email: "x@email.com", password: "5cyD4sR9", faction_id: "2", role: "member", character: "Candice Dumlop", title: "American socialite and Eldon’s wife, 21", tagline: "Very glamorous and flirtatious rich American."},
  {email: "y@email.com", password: "t7j05zfr", faction_id: "2", role: "member", character: "Marie Hati", title: "French journalist, 40", tagline: "Writes passionate columnes for Le Monde, demanding equal rights for women, and increased spending on hospitals."},
  {email: "z@email.com", password: "1ullA682", faction_id: "2", role: "member", character: "Aggie Marbles", title: "American, 26", tagline: "Aggie is travelling with the Finkelsteins. She has made a name for herself as an amateur sleuth."},
  ])

#
char_stories = CharStory.create!([
  {user_id: 6, char_story: "You are a young prince from the neighboring kingdom of Dakhma. Since you are your father’s third son, you will not inherit the throne, so you have been training to someday become Captain of Dakhma’s Guard. A week ago, though, you were invited to a banquet where Princess Almeera’s father would choose her future husband. Your father thought that it was an amazing opportunity to inherit a throne, but that isn’t why you were keen. You have been in love with Princess Almeera since you used to play together as children. You have never told her how you feel, because you are worried she won’t feel the same way.\n\nThis morning you arrived at the Sultan’s palace, and met a prince named Amir Barad. Prince Amir Barad seemed overly confident that he would be chosen. The Grand Vizier seemed interested in you and in Prince Amir Barad, and spent time talking to each of you. However, when the dinner party started, the Sultan ignored you both: he spent all his time talking to a newly-arrived prince you had never seen before. His name was Prince Ala’ ad-Din, and he seemed arrogant. You noticed that he was cruel to the servants and worried that if he were chosen, he would mistreat the princess. While watching Prince Ala’ ad-Din, you noticed he had a bag he never let go of. You were curious what was in the bag, so you purposely bumped into him, and the bag fell to the floor. An old oil lamp poked out of the top of the bag. Prince Ala’ ad-Din quickly picked up the bag, stuffing the oil lamp back inside and called you a fool. You were left to wonder why the prince carried around an oil lamp – surely if he needed light, his servants should carry a lamp for him?\n\nWhen the Sultan announced that Prince Ala’ ad-Din would marry the princess, you knew you had to do something. You wrote the princess a letter telling her that you didn’t think it was fair that her father had not consulted with her before announcing the engagement. You invited her to meet you in the marketplace and run away to your kingdom, where she could negotiate with her father from a safe distance. You wrote that you just wanted to help, and she would have no obligation towards you. As you were about to sign your name, you stopped. Would Princess Almeera still come if she knew it was you? Both Ala’ ad-Din and Amir Barad were much more handsome... you signed the letter: Sincerely, Someone Who Cares. Then you stepped outside the banquet hall and gave the letter to a woman named Cantara, who was passing by, to deliver for you. You didn’t go back to dinner: instead, you packed your bags and headed to the marketplace to meet the princess.\n\nWhile you waited you let your thoughts wander. Last month, your brother returned from this city with a magic carpet, which he said he bought in this very marketplace. If Princess Almeera runs away with you, you’d like to take her on a magic carpet ride, and show her the sights of Dakhma. While you’re here you might as well try to find one for yourself, so you don’t have to borrow your brother’s. Magic carpets are illegal in this kingdom, so if you do get hold of one, you will have to keep it hidden. After a while you noticed that guards had surrounded the marketplace and the Grand Vizier had arrived. You heard whispered voices saying Princess Almeera’s fiancé had been murdered!\n\nIf Prince Ala’ ad-Din is dead, then you might still have a chance to be chosen as Princess Almeera’s fiancé! Maybe you should speak to the Grand Vizier and ask that he and the Sultan reconsider you. However, if things don’t turn out well and some other prince is chosen, the Princess may still want to run away with you. You don’t see her anywhere, but she might have disguised herself to sneak out of the palace. If the princess hasn’t come, you can at least stick close to Captain Hayat and learn how to be a good Captain of the Guards. You have heard rumors of a Band of Forty Thieves that haunts the alleyways at night: maybe the Captain can use your help in stopping them. You really hate thieves!"},
  ])

#Create Goals
goals = Goal.create([
  {user_id: 6, goal_objective: "Find the Princess", goal_details: "Find out if the Princess is in the marketplace. If she is, convince her that you wrote the letter.", goal_achieved: 0},
  {user_id: 6, goal_objective: "Become Princess Almeera’s new fiancé", goal_details: "Convince the Vizier that you are the one who should marry Princess Almeera.", goal_achieved: 0},
  {user_id: 6, goal_objective: "Find a magic carpet", goal_details: "Find out who sells magic carpets, and buy one for yourself.", goal_achieved: 0},
  {user_id: 6, goal_objective: "Catch the murderer", goal_details: "Help the Grand Vizier and Captain Hayat catch the murderer. Learn from Hayat how a good Captain operates.", goal_achieved: 0},
  {user_id: 6, goal_objective: "Catch the Thieves", goal_details: "Help Captain Hayat catch the leader of the Band of Forty Thieves, and any other members who are identified.", goal_achieved: 0},
  ])

#Create Character Abilities
abilities = Ability.create!([
  {user_id: "6", power_name: "It's just a flesh wound", power_desc: "When you would have been injured, use this Ability and you take no damage.", quant_total: 1, quant_used: 0, quant_left: 1},
  {user_id: "6", power_name: "Tell me your secrets", power_desc: "After speaking briefly and in a trustworthy manner to another player, show them this and they must show you their Secret.", quant_total: 3, quant_used: 0, quant_left: 3},
  {user_id: "6", power_name: "Let’s gossip!", power_desc: "After speaking briefly to another player, show them your Information and this Ability. They must show you their Information.", quant_total: 3, quant_used: 0, quant_left: 3},
  ])

#Create Character secrets
char_secrets = CharSecret.create!([
  {user_id: 6, sec_desc: "You are your father’s third son, and your father wants you to become the Captain of the Guards. Marrying the princess is the only way you will get to rule a country."},
  ])

#Create Character Information
char_infos = CharInfo.create!([
  {user_id: 6, info_desc: "The Princess received a note inviting her to run away with one of her suitors, and may now be here in the marketplace in disguise."},
  ])

#Create Beginner Tips
beginner_tips = BeginnerTip.create!([
  {user_id: 6, advice: "Talk to the young women in the marketplace (Joharra, Ara, Rasha, Nadia, and Zahrah) and try to find out if Princess Almeera is here. One of them might be the princess in disguise."},
  {user_id: 6, advice: "Tell Captain Hayat that you are training to be the Captain of the Guards in the kingdom of Dakhma, and ask if you can observe the investigations. Find out what you can do to help find the murderer."},
  ])

#Create Other People
other_people = OtherPeople.create!([
  {user_id: 6, lead_name: "Captain Hayat", lead_info: "You view the Captain as a role model. Hayat is very strict and efficient with the guards. Someday you may become the Captain of the Guards in Dakhma, and you can learn a lot from Hayat."},
  {user_id: 6, lead_name: "Abdul-Malik", lead_info: "The Grand Vizier is the Sultan’s most trusted friend. He is loyal to the Sultan and Princess Almeera. He has known and liked you since you were a child, but he would probably not like the fact that you were planning on sneaking away with the Princess."},
  {user_id: 6, lead_name: "Joharra", lead_info: "This young woman looks vaguely familiar. You wonder where you might have seen her before."},
  {user_id: 6, lead_name: "Cantara", lead_info: "Cantara is the woman who delivered your message to Princess Almeera. You liked Cantara, though she seemed a little absentminded."},
  {user_id: 6, lead_name: "Adi", lead_info: "While visiting Ardalan when you were young, Adi used to play with you and the princess. Adi is now working as a guard – much as you will be, if you do not marry Princess Almeera."},
  ])

#Create Game Rules
game_rules = GameRule.create!([
  {rule_name: "The Genie’s Word is Law", rule_desc: "The Genie is impartial. If you have a problem or want to do something unusual, see the Genie. The Genie’s power is absolute – and cannot be affected by Abilities!"},
  {rule_name: "Winning and Losing", rule_desc: "You can achieve most of your goals simply by talking to people. The Genie will announce when the game is over. If you haven’t succeeded by that point – you’re too late! Be warned – not everyone here will want you to succeed!"},
  {rule_name: "Doing Stuff", rule_desc: "Ordinary actions are resolved by simply carrying them out. If you want to try something unusual (such as leap up onto a market stall), see the Genie. The Genie knows everything – and will be able to tell you the outcome of whatever it is that you are trying to do. (For example, the stall may be too flimsy.) Do use your imagination, though! – this is a very flexible game, and you can do all sorts of things beyond what’s listed in these rules."},
  {rule_name: "Fighting", rule_desc: "Ardalan can be a dangerous place! Your character may wish to grapple with, come to blows with, or even stab one of the other characters. Should you wish to do something along these lines though, don’t just dive in! See the Genie first and tell them what you plan to do so they can oversee and give you more detailed rules if it’s necessary."},
  {rule_name: "Leaving the Marketplace", rule_desc: "The Sultan’s guard has surrounded the marketplace, and no-one will be allowed to leave until the murderer is found and arrested. Anyone attempting to leave will be killed, no questions asked."},
  {rule_name: "Item Cards", rule_desc: "Any items of importance within the game are represented as Item cards – and the only items that can affect the game are those detailed on the cards. If you do not have an Item card, you do not have that item with you."},
  {rule_name: "Time", rule_desc: "Arabian Nights is played over three hours, with extra time for reading your character etc. There will be breaks to get drinks and food! The Genie will tell you when each period starts and finishes."},
  ])
