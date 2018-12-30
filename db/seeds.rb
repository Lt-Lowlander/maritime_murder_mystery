# Create Factions
factions = Faction.create!([
  {id: "1", fac_name: "Crew"},
  {id: "2", fac_name: "Passengers"},
  ])

#Create Narrative
narratives = Narrative.create!([
  {heading: "Overview", content: "In early August in 1914 the American cruise liner SS Libertania set sail from New York, bound for Southampton. On 14 August the Captain requested that all crew and passengers meet him in the Grand Ballroom. In solemn tones, Captain Bayard announced that he had just been informed that German military forces had invaded Russia and Belgium, and that the British and French governments had declared war on Germany.\n\nThere was stunned silence from the assembled passengers and crew. Then, just as voices were getting louder, the lights went out. There were screams, and a shot. By the time the lights came on again, many people had left the ballroom and the Captain’s body was slumped on the floor. He had been shot dead.\n\nBut by whom?\n\nMurder at Sea is a murder mystery game set at the start of the First World War for 17 to 33 players, plus one or two hosts. It takes an evening to play, and is ideally suited for a buffet meal or finger food.\n\nEveryone invited to Murder at Sea is given a character with goals and objectives that they must complete by the end of the evening. Everyone has their own goals – and not all goals are compatible. If one person achieves their goals, another may fail. The passengers have various items, such as guns and money. They may also have abilities to help them uncover secrets and achieve their goals.\n\nThe passengers may form alliances, blackmail each other, steal items and money and maybe even try to kill one another. Along the way they may solve some of Murder at Sea’s mysteries. Who was at the secret Captain’s meeting? Who shot Captain Bayard – and why?\n\nJoin us aboard the Libertania and find out in Murder at Sea."},
  ])

# Create Characters
users = User.create!([
  {email: "kal444h@gmail.com", password: "asdf123", faction_id: "1", role: "admin", attendee: "Kirk Lansman", position: "game_master", character: "Tiberius", title: "mysterious host", tagline: "heyyyyy"},
  {email: "siconninja@gmail.com", password: "asdf123", faction_id: "1", role: "admin", attendee: "Carmine Iannacone", position: "game_master", character: "Sicon", title: "mysterious host", tagline: "schweet"},
  {email: "zpastore@wesleyan.edu", password: "flooring", faction_id: "1", role: "member", attendee: "Zach Pastore", position: "First Officer", character: "Daniel Warren", title: "35, American", tagline: "Competent First Officer, well liked by the crew and expected to be given command of a ship as soon as possible. Reports to the Captain."},
  {email: "rich.keohane@gmail.com", password: "seating", faction_id: "1", role: "member",  attendee: "Richard Keohane",position: "Second Officer", character: "David Whitworth", title: "47, English", tagline: "Reliable and competent officer, previously sailed with the Royal Merchant Navy. Reports to the First Officer."},
  {email: "jacqueline.s.pastore@gmail.com", password: "watchmen", faction_id: "1", role: "member",  attendee: "Jacqui Pastore",position: "Third Officer", character: "Christina Younger", title: "36, American", tagline: "The highest placed woman in the Cruise Line and has sacrificed her personal life for her career. Reports to the Second Officer."},
  {email: "aerocricket@gmail.com", password: "mur_maid", faction_id: "1", role: "member", attendee: "David Atwater", position: "Entertainments Officer", character: "Vic Hammerstein", title: "49, American", tagline: "Always provides lavish entertainment spectaculars for passengers. Reports to the First Officer."},
  {email: "christine.t.attanasio@gmail.com", password: "ladybug", faction_id: "1", role: "member", attendee: "Christine Attanasio", position: "Master Chef", character: "Blaise de Richelieu", title: "50, French", tagline: "Temperamental culinary genius, signed on by Hammerstein at great expense. This is de Richelieu’s first voyage aboard the Libertania, and so far the cuisine is not up to expectations. Reports to the Third Officer."},
  {email: "juliai1291@gmail.com", password: "exoskeleton", faction_id: "1", role: "member", attendee: "Julia Iannacone", position: "Cocktail Stewardess", character: "Julia Morteblanca", title: "25, Italian", tagline: "Previously worked in the Waldorf Astoria as America’s first professional female cocktail mixer. Reports to the Chief Purser."},
  {email: "knight8@tcnj.edu", password: "carport", faction_id: "1", role: "member", attendee: "Hannah Knight", position: "Cabin Stewardess", character: "Catherine New", title: "18, English", tagline: "Only recently joined the Libertainia, but already knows everything about anything on board the ship. Reports to the Chief Purser."},
  {email: "Heather.schrepel@gmail.com", password: "squirrel", faction_id: "1", role: "member", attendee: "Heather Schrepel", position: "Cabin Stewardess", character: "Cynthia Petal", title: "32", tagline: "Has been working aboard liners for half of her life, and is competent and well liked by crew and passengers. Reports to the Chief Purser."},
  {email: "terrasilva.vix@gmail.com", password: "weather", faction_id: "1", role: "member", attendee: "Jim Phillips", position: "Trainee Steward", character: "Eric Lassiter", title: "20, Scottish", tagline: "Training to be a steward. Reports to the Chief Purser."},
  {email: "Andrea.j.Agra@gmail.com", password: "tempered", faction_id: "1", role: "member", attendee: "Andrea Agra", position: "Cabaret Singer", character: "Jennifer Floreste", title: "41, American", tagline: "Previously starred at the London Palladium, a famous singer on her last voyage. Reports to the Entertainments Officer."},
  {email: "sam@snug.ug", password: "tethering", faction_id: "2", role: "member", attendee: "Sam Richard", character: "Sir Rory Canter", title: "Baronet, 54", tagline: "Rumoured to be the richest man in Great Britain."},
  {email: "acbiggs92@gmail.com", password: "religion", faction_id: "2", role: "member", attendee: "Annie Biggs", character: "Lady Isabelle Canter", title: "33", tagline: "Young and pretty wife of Sir Rory, was previously an actress and ballet dancer."},
  {email: "jwkrizan@gmail.com", password: "sister", faction_id: "2", role: "member", attendee: "Jason Krizan", character: "Jeremiah Finkelstein", title: "Industrial Businessman, 61", tagline: "Owner of several large American manufacturing concerns, as well as the first aircraft factory outside of Europe."},
  {email: "aemmert@live.com", password: "milkman", faction_id: "2", role: "member", attendee: "Amanda Emmert", character: "Rachel Finkelstein", title: "Jeremiah’s wife and business partner, 58", tagline: "Rachel is renowned for her financial acumen."},
  {email: "john.w.petsche@gmail.com", password: "rifling", faction_id: "2", role: "member", attendee: "John Petsche", character: "PJ Nichols", title: "Singer, 27", tagline: "Although predominantly a Music Hall singer and entertainer, PJ has recently returned from Hollywood, after ‘trying out’ for several of the main studios."},
  {email: "jhr0189@gmail.com", password: "carpenter", faction_id: "2", role: "member", attendee: "Justin Richman", character: "Clark Ridgeway", title: "PJ's Manager, 35", tagline: "Has arranged several stupendously successful shows and tours for PJ in the past."},
  {email: "Chrispaclark@gmail.com", password: "whistle", faction_id: "2", role: "member", attendee: "Christian Clark", character: "Gilbert Ryce", title: "American Secretary of State, 68", tagline: "Ageing friend of the American President."},
  {email: "murich29@gmail.com", password: "company", faction_id: "2", role: "member", attendee: "Monica Urich", character: "Wilma Drew", title: "Ryce's Assistant, 32", tagline: "Gilbert Ryce’s assistant in the American State Department, always smooth and unruffled."},
  {email: "cbribiescas@gmail.com", password: "bumblebee", faction_id: "2", role: "member", attendee: "Carlos Bribiescas", character: "Sir Ranulph Royston", title: "British Minister of War, 63", tagline: "A widower, Sir Ranulph’s wife recently died in a riding accident."},
  {email: "susanvha@gmail.com", password: "channel", faction_id: "2", role: "member", attendee: "Susan Ha", character: "Elizabeth James", title: "Sir Ranulph’s Daughter, 19", tagline: "Elizabeth is divorcing her husband after he had an affair."},
  {email: "dom594@gmail.com", password: "ideation", faction_id: "2", role: "member", attendee: "Domenic Iannacone", character: "Maximillian von Grafenberg", title: "German Procurement Minister, 47", tagline: "Has been in America for the last year, and is now returning to Germany."},
  {email: "kyungbchoi@gmail.com", password: "volcano", faction_id: "2", role: "member", attendee: "Kyung Choi", character: "Armin Oberhausen", title: "Maximilian’s assistant, 39.", tagline: "Armin is ambitious and some say fancies the Maximilian’s job."},
  {email: "scarter1293@gmail.com", password: "battle", faction_id: "2", role: "member", attendee: "Stephen Carter", character: "Sasha Alexanderovich Ilyatkin", title: "Russian Minister, 45", tagline: "Sasha was in New York to sign trade agreements with the American Government."},
  {email: "lemay@bu.edu", password: "fieldnotes", faction_id: "2", role: "member", attendee: "Mark Lemay", character: "Eldon Dumlop II", title: "American socialite, 47", tagline: "Rich American heir to the Dumlop rubber fortune."},
  {email: "stephsavir@gmail.com", password: "trouble", faction_id: "2", role: "member", attendee: "Stephanie Savir", character: "Candice Dumlop", title: "American socialite and Eldon’s wife, 21", tagline: "Very glamorous and flirtatious rich American."},
  {email: "jgm616@gmail.com", password: "stepper", faction_id: "2", role: "member", attendee: "Janet May", character: "Marie Hati", title: "French journalist, 40", tagline: "Writes passionate columnes for Le Monde, demanding equal rights for women, and increased spending on hospitals."},
  {email: "Kaitpnr75@gmail.com", password: "direction", faction_id: "2", role: "member", attendee: "Kait Piñero", character: "Aggie Marbles", title: "American, 26", tagline: "Aggie is travelling with the Finkelsteins. She has made a name for herself as an amateur sleuth."},
  ])

  #Create Game Rules
  game_rules = GameRule.create!([
    {rule_name: "The Host’s Word is Law", rule_desc: "The Host is impartial. If you have a problem or want to do something unusual, see the Host. The Host’s power is absolute – and cannot be affected by ability cards!"},
    {rule_name: "Winning and Losing", rule_desc: "You can achieve most of your goals simply by talking to people. The Host will announce when the game is over. If you haven’t succeeded by that point – you’re too late! Be warned – not everyone here will want you to succeed!"},
    {rule_name: "Doing Stuff", rule_desc: "Ordinary actions are resolved by simply carrying them out. If you want to try something unusual, see the Host. The Host will be able to tell you the outcome of whatever it is that you are trying to do. Do use your imagination – this is a very flexible game, and you can do all sorts of things beyond what’s listed in these rules."},
    {rule_name: "Fighting", rule_desc: "The Libertania is a civilised ship and fighting is normally frowned upon. However, tensions are running high and your character may wish to come to blows with another character. Should you wish to do so, see the Host and tell them what you plan to do so they can oversee and give you more detailed rules if it’s necessary."},
    {rule_name: "Leaving the Libertania", rule_desc: "The Libertania is in the middle of the Atlantic Ocean – there is nowhere to go!"},
    {rule_name: "Item Cards", rule_desc: "Any items of importance within the game are represented as item cards – and the only items that can affect the game are those detailed on the cards. If you do not have an item card, you do not have that item with you."},
    {rule_name: "Other Characters", rule_desc: "Information about other characters is listed above – either in the main background or in the “Other People” section. If a character isn’t listed on your character sheet, then you don’t know anything specific about that character."},
    {rule_name: "Money", rule_desc: "Most characters have money. While you are free to negotiate your own terms for favours or objects, you should note that $500 is enough to buy a new car."},
    {rule_name: "Dying", rule_desc: "There is no guarantee that your character will survive Murder at Sea. You may have enemies, and those enemies may try to kill you. However, nobody can die until one hour before the end. Until that point, you are safe. After that? That’s up to you..."},
    ])

    # Character stories
    char_stories = CharStory.create!([
      {user_id: 1, char_story: "aa"},
      {user_id: 2, char_story: "bb"},
      {user_id: 3, char_story: "You are Daniel Warren and you are the First Officer aboard the Libertania.
     \n\n
    The Captain's death is terrible news. Although Captain Bayard had told you that he would do everything in his power to ensure your Captaincy once the ship reached Southampton, this is not how you wanted a  promotion.
     \n\n
    As acting-Captain, you must promote one of the senior officers to First Officer. Conceivably, you could promote a junior officer to this role, but that would be very unusual. You don't have to decide immediately, but you should decide within the first hour or so. The main candidates:
     \n\n
     Whitworth doesn't like you much, because you are younger than he is. However, he seemed to get on well with the late Captain, and even took lunch with him today.
     \n\n
     Cawdra is brilliant, but a little unstable, and doesn't have much time for people - should he be placed in a senior role?
     \n\n
     Hammerstein is excellent at dealing with people, and has always kept the passengers happy with the entertainments.
     \n\n
     Gamble is a bit of a mystery - you don't know what to make of the Chief Purser. Is ability more important than warmth in this job?
     \n\n
    Obviously you must try to find out who killed the Captain, as well as maintain order aboard the Libertania. You do know that only someone familiar with the workings of the ship could have arranged for all the lights in the ballroom to be turned off at once.
     \n\n
    Also, should the ship continue to Southampton, or return to New York?
     \n\n
    Your main concern is that the Captain's keys have been taken from his desk and someone has rifled his cabin and safe (you found the Captain's keys in the lock of the safe). The only document that you know for sure is missing is his personnel log, but who knows what else he kept in there? You do know that the Captain had detailed promotion and discharge recommendations in the log, so it is important that you get it back.
     \n\n
    Unfortunately there was considerable confusion when the lights came up, before you took charge - people were coming and going from the ballroom and you completely lost track.
     \n\n
    You know that all senior crew members carry a revolver. The Captain also had a revolver, but that seems to have gone missing. You have no idea which passengers might own firearms."},
      {user_id: 4, char_story: "You are David Whitworth, the Second Officer aboard the Libertania - and you are secretly pleased that Captain Bayard has been murdered.
     \n\n
    This morning the Captain ordered you to attend one of his ‘private lunches' along with Gilbert Ryce, Wilma Drew, Maximilian von Grafenberg, Armin Oberhausen and Marie Hati. At lunch, the Captain announced that he had received a telegram announcing that war had been declared but that he wasn't going to announce it to the rest of the crew and passengers until this evening. He then asked that nobody mention it until he had made the announcement.
     \n\n
    The Captain then also told you (in front of that ghastly French harridan, but you don't think anyone else overheard) that he was recommending your dismissal as soon as you reached Southampton.
     \n\n
    He must have found out about the little smuggling ring that you have going with Wilma Drew and the Canters. You smuggle fine wine and brandy from Europe to America and cigars back to Europe. Your part is to get it aboard the Libertania and off again (which is why you always insist on personally supervising the cargo operations). Everything is paid for up front by the Canters; that's why they take 80% of the profit. You receive 10%; you'd like more considering the risk you're taking.
     \n\n
    Anyway, as soon as the lights came up and you saw the old man slumped face down, First Officer Warren took charge. Everyone started milling around, and in the confusion you nipped off to the Captain's cabin to get the personnel log. Normally, the log is handed to the Cruise Line's managers at the end of each voyage, so you wanted to rip out any bits relating to you.
     \n\n
    On the way to the Captain's cabin, however, you saw someone leaving - a woman, but you're not sure who. By the time you arrived the safe was empty, and the Captain's desk had been rifled. There was nothing left of consequence.
     \n\n
    Now's your chance to get promoted over that jumped up little Yank, Warren, though. If you can find the log and slip in some bad things about him, then when you return to England he'd be sacked and you'd be Captain. Even if you can't find the log, you should be able to discredit him - as long as you can keep the French reporter quiet."},
      {user_id: 5, char_story: "You are Christina Younger and you are Third Officer aboard the Libertania. You've worked hard to get to Third Officer, but you seem to have hit a ceiling. Maybe tonight is your big chance - if you can find out who killed the Captain before anyone else, then you're bound to get noticed within the company, and the years of struggle and sacrifice will be worth it.
     \n\n
    You decided on a nautical career after you got pregnant at 16. You were sailing to England and Maximilian von Grafenberg seduced you and got you pregnant. You put your son up for adoption in England and it was while you were on the ship back to the USA that you decided what you wanted to do with your life - captain a cruise liner!
     \n\n
    However, there has never been a woman Captain, and so far it has been hard work.
     \n\n
    Still, you have your chance now. Warren will have to promote someone to First Officer. He would normally promote one of the senior officers - Whitworth, Hammerstein or Cawdra. However, you know that Captain Bayard was going to get rid of Whitworth and Hammerstein at the end of this trip. All you need to do is make sure that Cawdra is out of the running and Warren should promote you to First Officer.
     \n\n
    You know other things that Warren doesn't know - such as the fact that the Captain received the message about the war this morning! He had secret discussions with the Germans, the Americans and the French reporter journalist - but not with the British!
     \n\n
    You also know that Hammerstein wants to sack Jennifer Floreste, and that Julia has been fiddling the cocktail bar accounts.
     \n\n
    The Libertania should continue to Southampton, otherwise the Cruise Line will have to pay compensation to the passengers, but going back to the USA would increase your glory when you uncover the killer!
     \n\n
    The only fly in the ointment is that your old seducer, Maximilian von Grafenberg, is on this ship with his assistant. He's now the German Procurement Minister, and obviously very important. You must keep him quiet if he recognises you, because this secret could ruin your reputation and your chance to captain a cruise liner.
     \n\n
    Oh yes - and you have a revolver. As a junior officer, you would not normally be issued with a firearm. However, you now have a revolver that you found after Captain Bayard was shot. The revolver (not one of the standard Cruise Line revolvers) was wrapped in a cloth, so there were no fingerprints on it."},
      {user_id: 6, char_story: "You are Vic Hammerstein, the Libertania's Entertainments Officer. And despite this evening's tragedy, the show must go on!
     \n\n
    There really is 'no business like ship business' as you keep telling the passengers, and they love you for it! Whichever boat you are organising is always overbooked because of the fantastic shows that you put on.
     \n\n
    Unfortunately not everyone sees it that way. Both that idiot of a Captain and the penny-pinching narrow-minded close-headed pen-pushers in the finance department think they can save money by cutting down the cost of your shows.
     \n\n
    Well, you've shown them. You're going to save money by not renewing Jennifer Floreste's contract, and this will be that blasted French chef's last voyage as well - the food is simply not up to it.
     \n\n
    You've also warned that fiddling little Italian, Julia Morteblanca, about cooking the cocktail books. If she carries on you'll fire her as well.
     \n\n
    Plus, the Captain's death will save on the monthly salaries. And think of the free publicity: you're sure that people will want to cruise on 'The Ship of Death'. It just needs to be marketed right.
     \n\n
    What you really need now is to hire (for a breathtaking sum) PJ Nichols, ideally for the voyage back to the USA - and beyond. A good long contract with lots of publicity will ensure that the liner is fully booked for ages.
     \n\n
    On the downside, you have heard rumours of smuggling recently. (You've even heard that there are US agents aboard, trying to find the smugglers.) You don't know who's involved, or what is being smuggled, but it's the sort of thing that can give a ship a bad name.
     \n\n
    You think that one of the passengers has the voice of an angel - you've heard her singing during the daytime, but haven't found out who it is yet. Perhaps they would sign up?
     \n\n
    You're not really interested in the First Officer job, but you wouldn't want someone junior to be promoted above you!  You know that the Captain always recommends promotions or increases in salary for crewmembers who perform. (And recommends discharges for those who are not!) Talk to acting-Captain Warren about what you can to do be recommended - and also providing evidence (about Julia or de Richelieu for example) about those that deserved to be fired.
     \n\n
    You should have a revolver, but it's somewhere in your cabin (you think) and you couldn't find it now if you tried."},
      {user_id: 7, char_story: "You are Blaise de Richelieu, and you are the Master Chef aboard the Libertania and in charge of the ship's kitchens. You report to Third Officer Christina Younger.
     \n\n
    At least, that's your cover story: you are not really a master chef and your real name isn't de Richelieu. You can't even cook very well. There is a master chef called Blaise de Richelieu - you just happen to look very similar.
     \n\n
    In fact, you're an agent for the American Internal Affairs department. You have been placed upon this boat to discover who has been smuggling wine and brandy from Europe into America, and how they are being paid. (None of the crew knows any of this - your position here is quite secret.)
     \n\n
    Your bosses have narrowed down the culprits to one of the crew members, but as PJ Nichols, Clark Ridgeway, Marie Hati and the Canters all make frequent trips across the Atlantic, they should also be included in your investigation.
     \n\n
    Then there's von Grafenberg. He doesn't cross the Atlantic too often, but he was involved in some kind of corruption scandal a couple of years ago. He nearly lost his job over that, if you remember right. He's clearly a little untrustworthy and you'd best include him in your investigations as well.
     \n\n
    You have to make a report at the end of the voyage, but you know that you could really impress your bosses by actually capturing the smugglers. You'd have to persuade one of the ship's officers to let you lock them up in the brig (which means you'd have to reveal yourself to them) but that shouldn't be a problem. If you handed over the smugglers you're pretty sure you'd get an instant promotion.
     \n\n
    You were chosen especially for this mission, due to your uncanny resemblance to the chef and the fact that you speak fluent French. Unfortunately an ability to cook is not one of the skills that you possess and while you think you've managed to fool everyone so far, you think some of them may becoming suspicious.
     \n\n
    You should also keep an eye on the Finkelsteins. The industrialists have the capability to produce significant quantities of munitions and now that war has broken out your superiors will no doubt be very interested to find out who they have been selling arms to.
     \n\n
    The death of the Captain may be just the excuse that your department needs to close down this cruise line, and thus expand upon its policy of splendid isolation."},
      {user_id: 8, char_story: "You are Julia Morteblanca, an American-Italian - the sexiest, most beautiful, most resourceful and intelligent race on this earth. And yet here you are mixing cocktails for fat rich drunks!
     \n\n
    When you joined the Libertania, you thought that cruising the high seas would be a wonderful life. You imagined huge tips from rich upper-class passengers and then, after a few years, choosing one who was richer and better looking than all the rest and marrying him.
     \n\n
    But things haven't turned out that way - not only are tips forbidden but Hammerstein has discovered that you fiddled the accounts on the last few voyages. You think Hammerstein will get you fired. (You know that the Captain always recommends promotions for crewmembers who perform and discharges for those that don't.)
     \n\n
    You have a sideline selling Mickey Finns (knockout drugs) - often to husbands to silence their nagging wives. You have to be careful about doing it because you would get into so much trouble if the officers found out. But so far they haven't. But if you are going to be fired, you might as well make the most of it and sell as many as you can for as much as you can. You've also mixed vicious cocktails and sold hangover cures the next day.
     \n\n
    On the other hand, the Captain is dead and promotions are in the air. If you pushed Daniel Warren in the right way perhaps he would promote you. The only problem with that depends on what's in the Captain's personnel log...
     \n\n
    So, during the confusion after the lights came up, you snuck off to the Captain's cabin to get the personnel log. You planned to rip out anything about you, but it had already gone. Instead you took the ship's accounts in case it mentioned your fiddles. The accounts show that the owners wanted to sack Hammerstein and the expensive cabarets, but there was no mention of you.
     \n\n
    You've also heard a rumour that someone is using the Libertania for smuggling. You have no idea who that might be or how they do it, but it's bound to involve at least someone in the crew. Well good for them - you're all in favour of a little private enterprise! If you could find out who it is, perhaps you could blackmail them into helping you retain your position.
     \n\n
    You're pretty good at sleight-of-hand tricks - good enough to be able to pick pockets. You've not flaunted your talent, but you've not kept it secret either."},
      {user_id: 9, char_story: "You are Catherine New, one of the Libertania's Cabin Stewardesses. You report to the Chief Purser, Chris Gamble. Cynthia Petal, one of the other stewardesses is one of your closest friends.
     \n\n
    You were the only daughter in a large wealthy family in Southampton - all boys. When you were twelve, you parents told you that you were adopted, and so, when you reached eighteen, you persuaded them to give you some money to look for your real parents in America. However, on the boat over you fell in love with David Whitworth and so you signed on as a cabin stewardess - that was six months ago.
     \n\n
    At the Captain's private lunch you overheard the Captain talking to the Germans and the Americans - you overhear everything, because no one notices a cabin stewardess. They were talking about war - apparently the Captain had heard about it this morning.
     \n\n
    You also discovered that the Captain was going to get David sacked, which would mean that you wouldn't both be on the same ship any more. You had to stop him. So when you heard about the war you decided to kill the Captain, blame it on someone else, and so make sure that David keeps his job.
     \n\n
    You knew your chance had arrived when Eric approached you with a note from the Captain that he couldn't read. You told Eric (he's a little slow) that the note said that the Captain wanted the lights turning off (when in fact it said the opposite - the Captain wanted the lights turning up so that he could make an announcement). You then stole a revolver from the Russian Minister's cabin (you had seen it when you were cleaning earlier - the revolver has the initials 'CAU' on the handle) and waited until everything went dark.
     \n\n
    When the lights went out you could see the Captain outlined by the window light, and shot him right in the chest. You dropped the gun though, when everybody started panicking, and someone else picked it up.
     \n\n
    Now you have to make sure that no one knows it was you, and that David gets promoted, and that he notices you, and that he falls in love with you too.
     \n\n
    You know that the Captain always recommends promotions or increases in salary for crewmembers who perform. (And recommends discharges for those who are not!) You should check with acting-Captain Warren whether he will be recommending anyone, and what you can do to secure a recommendation. Or even better, secure one for David.
     \n\n
    Note: At the end of the adventure, during the wrap-up, please do not confess to being the killer until the Host asks you!"},
      {user_id: 10, char_story: "You are Cynthia Petal, one of the Libertania's Cabin Stewardesses. You report to the Chief Purser, Chris Gamble. Catherine New, one of the other stewardesses is one of your closest friends.
     \n\n
    You love working the liners, and your times on board this ship have been the happiest of your life. You liked Captain Bayard - he was always fair to you. You feel a personal duty to try and find his murderer. You're also pretty sure it would be very good publicity for the ship - especially if you could find out who did it.
     \n\n
    A good place to start would be Isabelle Canter. You noticed that she left the ballroom when the lights finally came back on, and when she returned you saw her furtively putting something in her bag. You're not sure what it was, but it didn't look like a gun. Either way, you're sure she's up to no good.
     \n\n
    You've also been thinking about a career change. What you would really like to do is be a cabaret singer. You've been practising as you clean the cabins and, even if you do say so yourself, you're not half bad. The only problem is that you believe the Captain was going to sack Hammerstein, the Entertainments Officer. If Hammerstein is going to be sacked, then who should you talk to about auditioning?
     \n\n
    Nobody notices a cleaner and it's amazing the things you find out…
     \n\n
     The Dumlops sleep in single beds.
     \n\n
     Someone has been sharing Gilbert Ryce's bed, but whoever it is, they're very discreet.
     \n\n
     Only someone familiar with the workings of the ship could have arranged for all the lights in the ballroom to be turned off at once.
     \n\n
    The Captain was going to recommend that the Cruise Line sack several members of the crew when the ship gets to England - Whitworth, Hammerstein, Lassiter and de Richelieu amongst them.
     \n\n
    You know that the Captain always recommends promotions or increases in salary for crewmembers who perform. (And recommends discharges for those who are not!) You should check with acting-Captain Warren whether he will be recommending anyone, and what you can do to secure a recommendation.
     \n\n
    Earlier in the voyage you found Eldon Dumlop II in his stateroom looking very dejected (you were delivering the laundry). You asked him what the matter was, and he told you a sorry tale about waking up one morning to find that he was married to Candice. He couldn't remember anything about the wedding, and his father had sent him to England to get a quiet divorce - Candice thinks she's on honeymoon. You promised not to tell a soul, and you've decided to see if you can help poor Eldon."},
      {user_id: 11, char_story: "You are Eric Lassiter and you are a Trainee Steward aboard the Libertania. You're very happy here because this is a great job for you because, well, there's no escaping it - you're a little simple (although slow might be a better word).
     \n\n
    You do, however, have a great affinity for all things nautical - you know the ship like the back of your hand and if something needs sorting you're often able to solve whatever problem needs fixing. You did think about becoming an engineer, but you prefer helping people.
     \n\n
    For example - earlier you managed to work out how to turn out all the lights in the ballroom in one go. You did that because you had a message from the Captain saying that he needed it to be dark just before dinner. It was lucky that Catherine New was nearby to read it for you because you can't read too well, and some of the words were very long.
     \n\n
    Now though, it looks like the message wasn't from the Captain because someone's shot him. Not only that, you don't know what's happened to the message. Perhaps Cynthia cleared it up as she normally arranges the cleaners to clear up the ballroom.
     \n\n
    You're sure that Catherine won't tell anyone that you turned down the lights, because she's always nice to you. She's nice to everyone.
     \n\n
    You should try and please the Purser, Chris Gamble. The Chief Purser is your supervisor and it's important that you do your best.
     \n\n
    You have heard some rumours that the Libertania is involved in some kind of smuggling operation. (You've even heard that there are US agents aboard, trying to find the smugglers.) You don't know who's involved, or what is being smuggled, but you know that if you were smuggling you'd want to make sure that you were involved in the cargo handling operations. That would be the best time to smuggle things on and off the Libertania.
     \n\n
    You know that the Captain always recommends promotions or increases in salary for crewmembers who perform. (And recommends discharges for those who are not!) You should check with acting-Captain Warren whether he will be recommending anyone, and what you can do to secure a recommendation."},
      {user_id: 12, char_story: "You are Jennifer Floreste and you are the cabaret singer here aboard the Libertania.
     \n\n
    While this is the last trip in your contract, you were hoping to get your contract renewed. You were getting on fine with the Captain, and you're sure that he was going to write up a report to keep you on board the company's liners for another five years instead of being sacked like Hammerstein wanted, and someone goes and blows a hole the Captain!
     \n\n
    Hammerstein wanted to sack you because of that little fling you had with that dreamy looking French banker. Or might have been the one with the Arab prince. Or perhaps the English director of the GWR, or... But anyway, so what if you get on well with some of the passengers? Unfortunately, you were relying on the Captain to help you renew your contract - and now with him dead you may have to be nice to Vic, which isn't a happy thought.
     \n\n
    Still, what about Daniel Warren? He's the new Captain - his word should be good for something, and that French reporter tart, Marie Hati, won't get her claws into this one like she was trying to with the Captain! She's obviously a gold-digger - you recognise the type.
     \n\n
    You know that the Captain always recommends promotions or increases in salary for crewmembers who perform. (And recommends discharges for those who are not!) You should check with acting-Captain Warren whether he will be recommending anyone, and what you can do to secure a recommendation.
     \n\n
    Then there's von Grafenberg. Isn't he that German Minister who was involved in some kind of scandal a couple of years ago? He still has his job, so he obviously covered it up very well. Perhaps he would be open to some female company? (You'll have to watch his assistant though - there's something about Armin that you don't trust.)
     \n\n
    You recognise Jeremiah Finkelstein - you remember that he saw you after one of your cabaret shows a few years back. He was very nice to you, and although nothing developed you sensed that things might have gone further than they did. Surely it would be just friendly to go and give him a hug? And maybe one thing might lead to another and you could pick up where you left off…
     \n\n
    Over the last couple of voyages, you have become good friends with the chief engineer, Brynneth Cawdra. There's nothing romantic going on between you, he's just good company. You know that Brynneth resents being overlooked for promotion in favour of more junior officers, and he'd really a promotion to First Officer. You've promised to help if you can."},
      {user_id: 13, char_story: "You are Sir Rory Canter, a Baronet and the richest man in England. You are also a German spy - so secret that even the German Procurement Minister doesn't know about it!
     \n\n
    You were recruited to the German cause in your youth, while studying at Cambridge. About 12 years ago you met Isabelle, an exotic fan-dancer in London. You fell in love and married her shortly after. Luckily both of your parents had already died, as they would never have approved of Isabelle and might even have removed you from their will. As it is, however, you had already inherited their considerable fortune and Isabelle now shares it with you.
     \n\n
    Of course, Isabelle is only a woman and so you manage all family's financial affairs so that she doesn't have to worry about any of it.
     \n\n
    Nobody suspects that you're a spy. You present a proper, British aristocratic front to the world, but behind the scenes you're reporting back to your German masters. Isabelle knows nothing of this, of course. She thinks you're a loyal Brit.
     \n\n
    You supplied Germany with dates and times of ship and troop movements during both the Togoland and the Tanganyika affairs. Thanks to your conversations with Ranulph Royston you have fed your masters with details of England's lack of preparedness, and unwillingness to go to war. So the declaration this evening came as a bit of a shock!
     \n\n
    You must at some time reveal yourself to Grafenberg, and find out if it was him who shot the Captain. In any event, you must make sure that the ship keeps going to Southampton so that you can blend in with the British High Command (most of whom go to your club) and trickle war information out to Germany.
     \n\n
    Concerned that the new Captain might contact the Cruise Line, you went and destroyed the telegraph. Nobody saw you enter (and the officer must have been with the others in the ballroom), but as you came out you bumped into Rachel Finkelstein. You told her that you had gone to send a telegraph but had found the equipment damaged. You think she bought your story.
     \n\n
    You also need to talk to the American Secretary of State. Your German masters really don't want the Americans to have come into the war, and have instructed you to use your influence in keeping them out of it."},
      {user_id: 14, char_story: "You are known as 'Lady Isabelle' and you became a lady when you married Sir Rory about twelve years ago. Before that you were a fan dancer (you used to say you were an actress) and you met Sir Rory at the club. Now that you're a Lady you prefer not to talk about it. The only reason you married Rory was for his money and his stately homes, but he takes complete charge of the money and doesn't let you have access to any of it.
     \n\n
    There is something rather odd about your husband, though. It's hard to be specific, but you're starting to think that his first loyalties aren't to Great Britain. You don't have any specific evidence, but every now and again he'll say something slightly out of character that has lead you to suspect that something isn't quite right. You should try and find out what it is - or perhaps confront him. This voyage might be the ideal time.
     \n\n
    As Rory has been decidedly slow in giving you money, you've found another way to get it - you are sponsoring a smuggling operation.
     \n\n
    You put up a little cash to buy wine and brandy in France, and have it shipped over to Southampton by one of the servants. Second Officer Whitworth then gets it on board the ship, and off again at New York, where Drew (Gilbert Ryce's aide) sells it. On the way back, Drew supplies fine cigars which Whitworth smuggles through customs to you. You take 80% of the profit, which is fair because your money is needed up front. With a war in France, however, it looks as if this lucrative little sideline will have to end.
     \n\n
    (Of course, you've not told Rory about the smuggling.)
     \n\n
    So when you saw the Captain's body, you scooted off to his cabin during the confusion, found his keys in his desk, unlocked the safe, and grabbed his logbook. Bingo! There's enough blackmail material in there to get you a wad of cash - all you have to do is threaten to show it to the new Captain. Except there's a teeny problem - you put the logbook in your bag, but it's not there now. Someone must have taken it from your bag. Armin Oberhausen, Elizabath James and Marie Hati were all nearby. One of them must have it.
     \n\n
    You are going to have one last try to make Rory feel for you as he used to, because you think that he might just be weakening on this romantic cruise!"},
      {user_id: 15, char_story: "You are Jeremiah Finkelstein and you are travelling aboard the Libertania with your wife, Rachel, and your niece, Aggie Marbles. You are the owner of Finkelstein Industries. You tried to tell Rachel, your wife, not to go on a boat. If God wanted men to cross the water he'd have them grow wings. But, as usual, she wouldn't listen.
     \n\n
    And now, now she wants to get mixed up in a terrible war. With all of the weapons both sides already have, it will drag on for years and years, and kill thousands and thousands. Rachel has seen an opportunity for Finkelstein Munitions (a wholly owned subsidiary of Finkelstein Industries that she runs, although you still have to sign the contracts) to make a fast buck. You wish you'd never branched out into the munitions business - it's good business, yes, but it's not good for the soul. You'd like nothing better than to throw in the whole thing and start again making sewing machines or automatic shirt collar pressers or something.
     \n\n
    What peace you've managed to achieve in your own life has been hard won and is hard to preserve, and it pains you to see conflict and struggle among others - plus which, it puts a further strain on your weak heart. If only everyone could use reason and agree with each other! If you see people arguing or disputing, you always try to step in and make peace between them - even if they don't appreciate it at first, you know you're doing them good in the long run.
     \n\n
    You dote on your niece, Aggie. She's the daughter you never had and you spoil her rotten. Rachel wants to fix her up with a husband, but you think that Aggie can make her own mind up about that. Aggie is turning into an amateur detective, so she may be able to help solve the Captain's murder.
     \n\n
    Complicating your voyage, the singer that you went out with in New York, back when you and Rachel weren't getting on and the factories weren't making money, is here. You weren't quite unfaithful, but it was close. You must keep her (Jennifer Floreste) and Rachel apart, but it may be difficult. You had forgotten how beautiful Jennifer is and you're not as strong as you once were.
     \n\n
    This business with Jennifer reappearing has been hard on your heart in more than one way. You've been told by your doctor to avoid all stress, or you could end up leaving Rachel an early widow! Too much stress going on around you and you will need to sit down, to be given water, and generally taken care of.
     \n\n
    If only you could get the nice young Captain to turn the boat round and go back to New York. You could keep the factories running, Rachel can do the books, and everything will be all right again."},
      {user_id: 16, char_story: "You are Rachel Finkelstein and you are travelling aboard the Libertania with your husband, Jeremiah, and your niece, Aggie Marbles. Your husband owns Finkelstein Industries, and you run one of his subsidiaries, Finkelstein Munitions. Your husband is uneasy about getting involved in the coming war, but as far as you are concerned it's the perfect opportunity to expand into Europe.
     \n\n
    With the new weapons available - aircraft, machine guns, armoured cars, and the like - the war will be over by Christmas. And as luck would have it, here you are on a boat with the German Procurement Minister and the English Minister of War. It's the perfect opportunity for Finkelstein Munitions to sell the nebbish some weapons. If you and Jeremiah play your pinochle proper, you could make a packet out of both of these nudniks. As long as the boat keeps on going to Southampton and you can get the Germans back to Germany.
     \n\n
    It's also possible that even the Russian nogoodnik or the French madchen might be interested.
     \n\n
    However, you won't be able to export the arms without a licence, and they're issued by the State Department. Luckily Gilbert Ryce himself is here, so that shouldn't be too much of a problem.
     \n\n
    You are very fond of your niece, Aggie, but you do really think that she ought to settle down with a nice rich husband. You've decided that you ought to put in a good word for her and this voyage is an opportunity to steer eligible bachelors her way.
     \n\n
    The Captain being dead is a little worrying. You did notice that the ballroom lights have separate switches, so whoever turned the lights off was obviously familiar with the ship. It must have been one of the crew.
     \n\n
    You're not sure what to make of the murder. You did notice that Julia Morteblanca left the room when the lights finally came back on, and when she returned you saw her furtively putting something in her bag. You're not sure what it was, but it didn't look like a gun. Either way, you're sure she's up to no good. If you were holding an enquiry - that's where you would start. Still, it's not really your business.
     \n\n
    However, you know that Aggie has become something of an amateur sleuth and you have no doubt that she will be looking into it.
     \n\n
    You have also heard that the Libertania is involved in some kind of smuggling operation. (You've also heard that there are US agents aboard, trying to find the smugglers.) You don't know who's involved, or what is being smuggled, but they might be very useful people to know should the war start hitting your export business. You should try to find out who they are and whether they would be interested in working for you."},
      {user_id: 17, char_story: "You are PJ Nichols, a music hall singer. You are returning from Hollywood where, to put it bluntly, you failed to make an impression. Still, what do they know - they wouldn't recognise real talent if it hit them in the face!
     \n\n
    You can act, sing dance - everything, and what do they want? Not anyone with any degree of talent, but a 'movie star' with no quality other than looking good in designer clothes. Well, by God, that's not what you call performing!
     \n\n
    The trouble is, the moment the news that every studio turned you down hits London, you'll never get a show or tour again.
     \n\n
    If only you could sign up on board one of these boats for a while, then return to England once it had all blown over? In fact, you tried to see the Captain about this at lunch, but he was having lunch with other guests. When you first tried to see him he was in deep discussions with the Germans and the Americans about that new young writer, Waugh. So you thought you'd try again later - but then he was talking quietly with one of the male crew (who looked quite stony-faced). The ship's current singer and the French reporter looked like they were both eavesdropping.
     \n\n
    So you decided it could wait until the morning, but it's too late now!
     \n\n
    However, an even better thing for you would be if the boat went back to New York. By the time you arrived back in England the news of the war would be in all the papers, and a little story about you in Hollywood wouldn't get anyone's attention! This is the sort of thing your manager, Clark, is supposed to arrange. But as usual he's looking after his own interests - he's probably off chasing some bit of fluff.
     \n\n
    Speaking of Clark, he really ought to remember that he's supposed to be representing you. He needs to remember that it's your talent that earns him his commission - and he should treat you with the care and respect you deserve. Sometimes he treats you as if he's the star - not you!
     \n\n
    All this nonsense about Hollywood has left you feeling a little tense. What you really need is a quiet little shipboard romance. Maybe there's someone here who takes your fancy…"},
      {user_id: 18, char_story: "You are Clark Ridgeway, and you are PJ Nichols' manager. PJ Nichols is a music hall singer who wanted to make it big in Hollywood - and failed. You are now accompanying PJ back to London.
     \n\n
    You have been trying to get rid of the talentless old has-been and this might be your chance. PJ has been like a lead weight around your neck these past few months. You're looking forward to being free - and after you've spilt the beans about the Hollywood débâcle to the English press, PJ will never work in London again. And that means you can end your contract with PJ you'll have time to pursue some real talent.
     \n\n
    It is essential, therefore, that the boat keeps on course for Southampton. All you have to do is keep out of PJ's way until you dock, and leak PJ's Hollywood failure to the press.
     \n\n
    Jennifer Floreste, the ship's cabaret singer has caught your eye. You could try and sign up Jennifer away from the boats - she'd go down a storm in Piccadilly.
     \n\n
    And what about Isabelle Canter? You remember seeing her on the stage - and if she ever wanted to return to her old raunchy fan-dancer acts, you know that you could get $50 a night for her (of which, naturally, you'd get $10). But now that she's a 'Lady' she no doubt has less material concerns.
     \n\n
    You're always on the lookout for any other talent. You never know where the next 'big thing' will be found. You should keep your eyes peeled - talent can be found in the most unlikely of places.
     \n\n
    Anyway, from now until you dock, life should be quite sweet if you can keep out of PJ's way!
     \n\n
    When you came aboard you were delighted to see Gilbert Ryce also aboard - isn't the world a small place? Gilbert is your godfather (he was close friends with your parents while he spent a few years in England). You haven't seen 'Uncle' Gilbert since he returned to America about 20 years ago, but you remember him being very generous to you and it's about time you repaid that generosity."},
      {user_id: 19, char_story: "You are Gilbert Ryce, the American Secretary of State. You're not quite sure why your friend, the President, gave you this job. He said that your officials would do all the work, and all you had to do was take the salary and keep quiet, but this war thing has blown right up in your face and you never even saw it coming. It really is most worrying.
     \n\n
    Still, being posted to the State Department has reaped at least one benefit - you met Wilma. And you've fallen in love with her - which is unfortunate for your marriage. You managed to arrange this voyage alone with your trusty assistant (your wife would have hated it - she does get seasick so). However, you can't let anyone find out that you are having an affair with Wilma - the President would probably have to fire you.
     \n\n
    You have no idea what to do about the Germans and the war, and the murder. In fact it's all a bit much for you. You'd much rather retire to your cabin with Wilma, but you suppose that you have to show some kind of presence and wave the flag a bit. But maybe you had best leave as much of everything to Wilma. She seems to have a head for all this diplomacy business.
     \n\n
    You're not sure what to make of the murder, either. You did notice that Julia Morteblanca left the ballroom shortly after the lights finally came back on, and when she returned you saw her furtively putting something in her bag. You're not sure what it was, but it didn't look like a gun. Either way, you're sure she's up to no good. If you were holding an enquiry - that's where you would start. Still, it's not really your business.
     \n\n
    However one thing is certain: the boat must keep going to Southampton, because that's where  it was supposed to be going.
     \n\n
    When you came aboard you were delighted to see that Clark Ridgeway was also aboard. Clark is your godson - you spent a few years in England last century and you became close friends with his parents. You haven't seen young Clark since you returned to America in 1892, but you remember him being an adorable little scamp and you spoiled him rotten."},
      {user_id: 20, char_story: "You are Wilma Drew and you are Gilbert Ryce's assistant. Gilbert is the American Secretary of State and the reason that you are such a fast rising star is due entirely to him. Gilbert is a personal friend of the President, and that's the only reason he got the position - it certainly wasn't due to any talent of his. Luckily, you've been able to cover for him.
     \n\n
    He took a shine to you when you entered the department 10 years ago - in more ways than one, and you've been having an affair with him. However, your secret must remain that - secret. Gilbert has a wife and the scandal would do nothing for either of your careers. But as Gilbert's wife is in the US, you have been making the most of the opportunity.
     \n\n
    This morning you and Ryce were summoned, along with the Germans, to the Captain's private lunch. There, the Captain told you about war breaking out. Naturally you have suspected it for months, but Ryce was completely thrown.
     \n\n
    Now is the chance to make some good European allies for the US and some cash for yourself. As long as you support the winning side (Germany if they're fast enough, France and Britain if the war goes on past Christmas) then it's to America's advantage to stay neutral but supply arms. And as long as you get a cut, you can supply export licenses.
     \n\n
    Obviously it must have been the Germans who killed the Captain, because he told them that he was continuing to Southampton and that's the last thing that they'd want, but is it worth making an incident over it?
     \n\n
    The only other thing to be careful of is that no-one finds out about your little smuggling racket with Whitworth and the Canters. This would be the last run anyway, your contacts in New York who buy the stuff (at almost double what you tell the others you're getting) have become a bit edgy. They are afraid of getting caught and even think that there might be a spy on board this ship.
     \n\n
    With a war on, quality American weapons will be in demand - and anyone wanting to export them will need an export licence. By chance, you have four arms export licences with you. Anyone planning on exporting weapons out of the USA will need those licences. You must get Gilbert Ryce to sign them (but that shouldn't be too hard)."},
      {user_id: 21, char_story: "You are Sir Ranulph Royston, the British Minister of War. You are travelling back to London. You have your bumbling assistant, Albert, with you, as well as your silly daughter, Elizabeth. In fact, Elizabeth is proving to be a bit of a trial - and rather too free with your money as well.
     \n\n
    You go to all that effort to get Elizabeth married off, and what happens? As soon as your wife is killed in that tragic 'riding accident' (which you arranged) the silly bint decides that you need looking after and comes back to live with you, leaving her husband to look after their house in London! He then goes and has an affair but is too stupid to hide it, and when Elizabeth finds out she uses your money to hire some astonishingly expensive lawyers to file for divorce. And she's still with you!
     \n\n
    How can you go around womanising and gallivanting and drinking with a slip of girl tucking a blanket round you all the time?
     \n\n
    You thought that a trip to New York would make her realise that you don't need looking after - and maybe she'd find a nice Yank to remarry. But no, the Americans aren't good enough for her! Confound it if you'll allow the blasted girl any more room to infest your life once this journey is finished. Somewhere on this ship there must be someone deranged or desperate enough to marry her - and by hook or by crook, whatever the fellow may want, you'll have her off your hands journey's end.
     \n\n
    Or perhaps there's some way that you could get rid of her (the way you did your wife) without attracting too much attention to yourself. That's how you've got so far in politics. Don't offend anyone, don't rock the boat, don't get caught putting the boot into someone else's reputation.
     \n\n
    At least you got rid of her last night. Wiggins, your assistant, somehow procured a knockout drug for you and you slipped it into your daughter's drink. She fell asleep, and when she awoke felt a bit woozy and spent the rest of the evening in her stateroom. You had a marvellous time drinking and socialising without her.
     \n\n
    And as for this war malarkey, pshaw! It'll all be over by Christmas. You should know - you're the British Minister of War. The Germans are perfectly civilised (not like the bloody garlic smelling Froggies) and really, the best solution for England would have been to steer clear of the whole bloody shooting match. That's what you'll be recommending the moment the boat arrives in Southampton.
     \n\n
    Unfortunately Wiggins isn't so sure about the whole thing as you and tends to get a bit excited. You should try to calm him down about the whole thing. It really is nothing to be worried about."},
      {user_id: 22, char_story: "You are Elizabeth James and you are accompanying your poor father back to London. He's very important as he's the British Minister of War, but he's also very sad as his wife, your mother, died six months ago in a riding accident. He and Mummy weren't getting on at all well, but he was so shocked by her death that he's been a virtual recluse ever since.
     \n\n
    Obviously you had to go and look after Daddy - but you didn't expect Charles (your husband) to immediately have an affair with another woman. When you found out of course you had to divorce him - luckily Daddy was able to hire some excellent lawyers. You're not fully divorced yet, but it won't be long.
     \n\n
    Meanwhile, you've been looking after Daddy. He's still upset and gets a bit grumpy sometimes. You like to make a fuss of him - just to show that you love him and that you care. You make sure that he doesn't get cold, that he's comfortable, and that he doesn't drink too much. Sometimes he seems happiest when he's sitting all alone - and that's not healthy.
     \n\n
    It is strange. Mummy was such a good rider, and for a couple of days after she died Daddy hid his sadness well. Within a week of you moving back to look after him, this terrible depression had settled upon him. It's a good job you returned when you did - you don't know how he would have coped had he been on his own.
     \n\n
    Anyway, at least you've found some of the places that he hides his money, so you can spend it on nice things to cheer him up. Only recently you bought a beautiful frock in New York for only $1,000 - you look so lovely that it would cheer anyone up! If only you could find someone nice and pretty for Daddy to marry.
     \n\n
    Daddy can be such a sweetie at times - he's so eager to see you happily married again. But that would mean you couldn't look after him any more, which would be terrible. You are very certain that you will only marry again if a tremendously special man comes along, someone of a bit more moral fibre than poor Charles.
     \n\n
    This voyage isn't quite what you thought it would be. You were hoping for a quiet relaxing cruise where Daddy could perhaps regain some of his vigour. Instead, last night you passed out (you're not sure why) and had to retire early, and tonight the Captain has been murdered and war has broken out! Shortly after the Captain was shot you picked up Isabelle Canter's bag by mistake. You noticed that her bag contained the Captain's Logbook - shouldn't that be with the Captain? You took the logbook and returned Isabelle's bag to where you found it."},
      {user_id: 23, char_story: "You are Maximilian von Grafenberg and you are the German Procurement Minister. And with the outbreak of war, you don't rate your chances of returning to Germany! The fools weren't supposed to start a war until October, when you would have taken delivery of enormous quantities of guns, ammunition, grenades, armoured cars and, most of all, aeroplanes. As German Procurement Minister, you've been buying them so that the Kaiser's troops can completely occupy France by Christmas.
     \n\n
    Still, on the plus side, it wasn't your money which was wasted. (The munitions are still in the US - and who will send a ship of arms across the Atlantic now?) Still, you're not looking forward to a spell in a British detention centre - you'd much rather go back to New York. No doubt the new Captain will understand.
     \n\n
    No doubt your appallingly efficient assistant Armin will want to return to Southampton. You worry sometimes about Armin - you're pretty sure that your position is under threat and should you eventually return to Berlin you might find your positions reversed. The thought of working for Armin fills you with dread - another good reason to return to New York. Still, Armin was very helpful when that awful memo was leaked that implicated you in a corruption and vice scandal a couple of years ago. You only just managed to hold on to your position - if Armin had really wanted your position surely that would have been a good time to strike?
     \n\n
    Whatever happens, you must ensure that Armin doesn't find out about the affair that you had about twenty years ago. That was during an Atlantic crossing as well - and luckily your wife (who has wisely chosen to remain in New York) never found out. It would ruin your marriage, and probably your career should anyone find out - particularly Armin!
     \n\n
    Also, someone has stolen your gun. You desperately hope that it wasn't used to kill the Captain as that sort of diplomatic incident would bring America into the war. You know that Germany could not hope to win the war with America against her.
     \n\n
    You heard the announcement about the war earlier than most of the other passengers as you lunched with Captain Bayard today. He told you, plus Gilbert Ryce and Wilma Drew. Marie Hati and the Second Officer, Whitworth, were also present. You noticed that the Captain and Whitworth were arguing about something, but you didn't hear what. Catherine, one of the stewardesses was nearby and might have overheard them."},
      {user_id: 24, char_story: "You are Armin Oberhausen and you are  Maximilian von Grafenberg's aide. He's the German Procurement Minister, and tonight could be the moment you've been waiting for.
     \n\n
    You have no idea who actually murdered Captain Bayard, but if you can blame it on von Grafenberg, so much the better. He may be the German Procurement Minister and your boss, but you've never really liked him - and you've always thought that you could do a better job. Not that you've ever made your feelings known; you've always kept your head down and played the able assistant with ruthless efficiency.
     \n\n
    You've just been biding your time. You thought you almost had Maximilian a couple of years ago when you leaked an unfortunately worded memo that implicated Maximilian in a corruption and vice scandal, but somehow the old man survived. You were in the perfect position to become the new Procurement Minister had he stepped down - and you're still in the perfect position. There must be some way to prove that Maximilian killed Captain Bayard.
     \n\n
    The new Captain must continue on to Southampton - you really must get back to Germany and help with the war effort. You have no doubt that there will be promotion opportunities aplenty during the times ahead. You'll have to convince the new Captain to go to Southampton - or make sure that he's replaced with someone who will.
     \n\n
    From what you can see, the war will be over by Christmas. If Sir Ranulph Royston is anything to go by the British don't have the stomach for a fight. You have more respect for his assistant, however; Albert Wiggins seems much sharper than his boss.
     \n\n
    When you were at lunch, Captain Bayard told you and the Americans that he would be announcing the outbreak of war to everyone else in the morning. You realised that this could be a potentially explosive situation, and stole Maximilian's revolver just in case you needed protection.
     \n\n
    Maximilian commented to you that after Captain Bayard made his announcement about the war over lunch, Gilbert Ryce seemed to hold Wilma Drew's hand in shock for ages. If you remember correctly, Ryce has a wife back in America. Can he be blackmailed?
     \n\n
    This may be key - as the one thing you fear is America entering the war against Germany. You know that with their industrial might they will be a fearsome enemy - but maybe you can arrange it so that they are allied with Germany."},
      {user_id: 25, char_story: "You are a Minister in the Russian government and have been trying to buy American technology for Mother Russia, to drag it into this new mechanised twentieth century. The trouble is that your country has been relying heavily upon the Reichsmark as its main foreign currency and you need to get other currencies now that Germany has started invading everywhere.
     \n\n
    You don't know who killed the Captain, but you're pretty sure that it isn't related to the current international situation. If the Germans tried to pull off something like this, then America would declare war on them as well. However, your distinctive Russian pistol, with your initials engraved on it in Cyrillic ('CAU'), has been stolen from your cabin and you are worried in case you don't get it back.
     \n\n
    You also must make sure that the ship gets to Southampton as quickly as possible, because your cargo in the hold of Maxim machine guns and ammunition is now needed more than ever on the Eastern Front.
     \n\n
    If you could prove that the Germans killed the Captain, then that would be marvellous. America would then enter the war and Russia would get to share in their new technology - such as aeroplanes and grenades.
     \n\n
    You also need to seek allies for Mother Russia in the coming conflict. One potential ally you have identified is Sir Rory Canter, who you believe may not be completely loyal to Britain. Perhaps you could approach him through his wife, Isabelle.
     \n\n
    You did notice that the ballroom lights have separate switches, so whoever turned the lights off was obviously familiar with the ship. It must have been one of the crew.
     \n\n
    You have also heard that the Libertania is involved in some kind of smuggling operation. (You've also heard that there are US agents aboard, trying to find the smugglers.) You don't know who's involved, or what is being smuggled, but they might be very useful people to know. You should try to find out who they are and whether they would be interested in working with you. (You should try not to let on that you can't offer much in the way of hard currency, of course.)"},
      {user_id: 26, char_story: "You are Eldon Dumlop II, heir to the Dumlop rubber fortune - you are frightfully rich. The Captain's murder is a bit of a shame, but you aren't going to let it affect you or your plans if possible.
     \n\n
    And your plans? Find some way to get rid of Candice, the ghastly little floozy of a wife you've picked up. All she seems to do is flirt with every other man going past. Maybe that's how you ended up marrying her?
     \n\n
    Ghastly mistake that - and you're still not sure quite how it happened. You woke up in a New Orleans hotel bedroom, with her, and a rented (rented, oh how ghastly) wedding dress over the bed-rest, and ghastly cheap ring on her finger.
     \n\n
    Your father has kept things quiet, and quickly packed you off on this ghastly boat to England to find some way of getting rid of her quietly and without any fuss. He has told you that divorces in England are quiet, secretive affairs, not some ghastly circus show like getting one in America would be. Candice doesn't know - she thinks that you're on honeymoon.
     \n\n
    You've not told anyone how miserable you are - you really don't want to be married to Candice and you can't imagine what you saw in her. You must have been really, really drunk.
     \n\n
    One person who does know is Cynthia Petal, one of the stewardesses. You were alone in your cabin, feeling very sorry for yourself, when she came in to deliver your laundry. She asked you what was the matter, and you couldn't help it, you told her the whole story. You felt a lot better for telling someone, and she promised not to tell anyone else. She also promised to think of a way of helping. You've decided that you want to repay her kindness.
     \n\n
    Perhaps you should have another drink with that charming bar manager while you try to work out what to do?
     \n\n
    If you were the sleuthing sort, you'd be tempted to try to solve the murder. A good place to start would be Isabelle Canter. You noticed that she left the ballroom during the confusion when the lights came back on, and when she returned you saw her furtively putting something in her bag. You're not sure what it was, but it didn't look like a gun. Either way, you're sure she's up to no good. Of course, it's really none of your business."},
      {user_id: 27, char_story: "You are Candice Dumlop, Eldon's new bride and you're on your honeymoon. Except that your real name isn't Candice, you're not Eldon's wife and you're certainly not 21!
     \n\n
    You are a very senior very secret agent, a master of disguise, working for the US State Department. With the aid of Eldon's father (a former aide of President Taft who is concerned about his friend Gilbert Ryce) you are perpetrating a swindle on Eldon. You are using him to get close to Ryce.
     \n\n
    State department agents got Eldon drunk in a New Orleans bar and then you conned him that you and he were married that night.* You are not really married at all - but he thinks that you are. Your cover story is that you and Eldon are on honeymoon - but he's been told by his father to go to England and quietly divorce you. The poor man is quite confused and miserable - when all this is over you'll have to make it up to him somehow.
     \n\n
    The reason for this charade is that your superiors suspect that Gilbert Ryce and his assistant Wilma Drew are concealing a terrible secret. The department's real fear is that they are German spies - particularly considering the events that have just unfolded.
     \n\n
    If they are spies, and war does break out, then they know enough to make sure that the US of A could never go to war with Germany. The entire US military would be too compromised.
     \n\n
    It would be almost worse if they were British or French spies - then the USA would be dragged into a war in Europe where it doesn't want to get involved.
     \n\n
    Apparently, there is another State Department agent aboard, a crew member. Find them and enlist their help.
     \n\n
    If Drew and Ryce are spies, your orders are to eliminate them quietly and dispose of their bodies.
     \n\n
    You have also been instructed to keep an eye on Sir Rory Canter, and his wife Isabelle. The department believes that Sir Rory may be a German sympathiser, and they would like confirmation either way if possible.
     \n\n
    Finally, you have to find a way to get Dumlop out of his ‘marriage' with you. Faking your own death would be a good way, but there might be better ones...
     \n\n
    * If this seems a little far-fetched, it's because that it's the only one in Murder at Sea based (albeit loosely) upon real people and real events!"},
      {user_id: 28, char_story: "You are Marie Hati, journalist for Le Monde. Well, you're more than that - you're also France's finest double agent. Both the Americans and the Germans think that you are spying for them while pretending to spy for the other. However, you are actually spying on them both for La Belle France!
     \n\n
    You know that the Germans are trying to keep the Americans out of the war, and that the British are trying to get them in! You obviously want what is best for France.
     \n\n
    You need to contact both the Germans (Maximilian von Grafenberg) and the Americans (Gilbert Ryce) and find out if you can help (and pass information back to France, of course).
     \n\n
    Your French masters have also suggested that you should get in touch with the British Minister of War, Sir Ranulph Royston and offer your services. You may learn something of great importance.
     \n\n
    You have no idea who killed the Captain or why, but if it's anything to do with the Germans, you'd better find out and fast - this could be the lever to force them to respect France's neutrality, instead of invading.
     \n\n
    You know that all of the crew seem to carry guns, as do some of the passengers. You were present at the Captain's private lunch when the Captain told Whitworth that he was going to get sacked. Ryce and the Germans were also present, but you don't think they overheard - unlike the stewardess, Catherine.
     \n\n
    The Captain also said he was going to get the chef sacked, because the food was awful. No disagreement there.
     \n\n
    As for your cover, there are a couple of stories you can pretend to investigate: there are rumours of smuggling aboard the Libertania, and you've heard that there's something suspicious about Eldon Dumlop's marriage."},
      {user_id: 29, char_story: "You are Aggie Marbles and you are travelling to London with your aunt and uncle, Rachel and Jeremiah Finkelstein. You moved to America from England when you were 15, and you are returning for the first time since then.
     \n\n
    Although you are relatively young, you are starting to develop a bit of a reputation as an amateur detective - although it's not your fault that people keep dying around you! You have already solved three murders and with Captain Byard's death perhaps you are about to get involved in a fourth.
     \n\n
    You need to be wary about treading on the toes of any official investigation, however. You've found that real detectives and policemen aren't always happy with an amateur interfering in their investigation, so it may be better to wait until you are asked to become involved.
     \n\n
    Still, until you are asked, there's no harm in asking around, is there?
     \n\n
    You know that the three key questions to answer in a murder case are:
     \n\n
     Motive, or why was Captain Byard murdered?
     \n\n
     Means, or how was Captain Byard murdered?
     \n\n
     Opportunity, or how did the murderer create the opportunity to kill Captain Bayard?
     \n\n
    As you already know that Captain Byard was shot, this case is clearly going to hinge on the motive and opportunity. For motive, you need to find out who had a reason to hate Captain Bayard enough to murder him. And as far as opportunity goes, clearly whoever shot him also switched off the lights, so you need to find out more about that.
     \n\n
    Your aunt and uncle are lovely, and you'd do anything for them. They're also very rich - Uncle Jeremiah owns Finkelstein Industries, a huge manufacturing company. With the outbreak of war you expect they will do very well selling munitions - although you know that Uncle Jeremiah wishes they'd never got into the munitions business as he doesn't think it's good for the soul. Aunt Rachel is much more ruthless than Uncle Jeremiah, and she's very happy with all the money they make!
     \n\n
    You sense there are other mysteries here aboard the Libertania. With the outbreak of war you wouldn't be surprised if spies are aboard, working for the major powers. It's possible that the war is even to blame for the Captain's murder - you have to keep an open mind."},
      ])

    # Goals
    goals = Goal.create([
      {user_id: 1, goal_objective: "aa", goal_details: "aa", goal_achieved: 0},
      {user_id: 2, goal_objective: "bb", goal_details: "bb", goal_achieved: 0},
      {user_id: 3, goal_objective: "Keep the ship running smoothly ", goal_details: "In particular you need to decide whether the ship turns back to New York or continues on to Southampton. (You have about an hour to decide.)  You must placate the passengers and convince them that there's no cause for alarm and that the ship is perfectly safe.", goal_achieved: 0},
      {user_id: 3, goal_objective: "Promote the right man (or woman) for the job of First Officer ", goal_details: "You have about an hour to do this (the Host will tell you when). You must draw everyone together and make an announcement so that everyone knows the chain of command. (The Host will need you to make a couple of other announcements during the game.)", goal_achieved: 0},
      {user_id: 3, goal_objective: "Find the Captain's effects ", goal_details: "Personnel log, revolver - and whatever else has been stolen from the safe.", goal_achieved: 0},
      {user_id: 3, goal_objective: "Make your personnel recommendations: You need to make personnel recommendations at the end of the voyage ", goal_details: "You can either base them on the Captain's log (if you find it) or you will have to make your own. You can choose to promote up to two crewmembers (or increase their salary) and discharge up to two crewmembers who are not performing (but you must have good reason). The Host will ask you at the end of the game.", goal_achieved: 0},
      {user_id: 3, goal_objective: "Murder ", goal_details: "Find out who killed the Captain. You should get the rest of the crew to help you in your investigations and if you find the murderer, throw him or her in the brig for trial.", goal_achieved: 0},
      {user_id: 4, goal_objective: "Be promoted to First Officer ", goal_details: "With Captain Bayard dead, Warren will be promoted to Captain and he will have to promote one of the officers to First Officer. You're the obvious choice, but he might promote Cawdra, Hammerstein or Gamble over you.", goal_achieved: 0},
      {user_id: 4, goal_objective: "Find the personnel log and remove all incriminating evidence about you ", goal_details: "", goal_achieved: 0},
      {user_id: 4, goal_objective: "Make Warren look bad ", goal_details: "Do what you can to make him look foolish in front of the passengers and crew - but ideally find the personnel log and add a few entries about him.", goal_achieved: 0},
      {user_id: 4, goal_objective: "Smuggling: Make sure that nobody finds out about your smuggling operation with the Canters and Wilma Drew ", goal_details: "", goal_achieved: 0},
      {user_id: 4, goal_objective: "Negotiate a better percentage cut with the Canters ", goal_details: "You currently get 10% from your smuggling operation - 15% or even 20% would be more appropriate considering that you take most of the risk.", goal_achieved: 0},
      {user_id: 4, goal_objective: "Find out who killed the Captain ", goal_details: "After all, you don't know why he was murdered - and you might be next!", goal_achieved: 0},
      {user_id: 5, goal_objective: "The Telegraph Office: Someone has sabotaged the telegraph office ", goal_details: "As there was some confusion when the lights came up and people were coming and going from the ballroom, you'd guess the sabotage was done then. From a quick inspection you can't fix it here - you need new parts that are only available in port. You'd best tell acting- Captain Warren.", goal_achieved: 0},
      {user_id: 5, goal_objective: "Help Captain Warren run the Libertania and keep control of everything ", goal_details: "", goal_achieved: 0},
      {user_id: 5, goal_objective: "Discover the Captain's killer and discover him (or her) first! You need to show that you're ready for promotion - and catching the killer before anyone else is just the way to do it ", goal_details: "", goal_achieved: 0},
      {user_id: 5, goal_objective: "Promote yourself and your career ", goal_details: "Do anything to further your career. You've got that goal of captaining a cruise liner - go for it. The person you now need to impress is the acting Captain.", goal_achieved: 0},
      {user_id: 5, goal_objective: "Get the job of First Officer ", goal_details: "Warren probably won't want to wait too long before making a decision, so you had best tell him about Whitworth and Hammerstein first - and encourage him to promote you instead.", goal_achieved: 0},
      {user_id: 5, goal_objective: "Keep your illegitimate child with von Grafenberg a secret ", goal_details: "If anyone found out the scandal could jeopardise your chances of promotion. You've set yourself a tough enough goal as it is - you don't want to make it any harder.", goal_achieved: 0},
      {user_id: 6, goal_objective: "Sign PJ Nichols ", goal_details: "You can afford about $1,500 per round trip (a trip lasts about two months), but obviously to please the bean counters you would want to negotiate a lower rate.", goal_achieved: 0},
      {user_id: 6, goal_objective: "Sign up other talent ", goal_details: "You're always on the lookout for other talent. You'd be particularly interested in the owner of that 'angel voice' you heard. You could offer an 'unknown' as much as $500 a trip (which is what you pay Jennifer).", goal_achieved: 0},
      {user_id: 6, goal_objective: "Get Warren to agree to not renewing Jennifer's contract and firing de Richelieu ", goal_details: "And if Julia doesn't measure up, get her fired too.", goal_achieved: 0},
      {user_id: 6, goal_objective: "Milk the Captain's death for publicity ", goal_details: "You're sure that calling this 'The Ship of Death' will go down a storm. Find out what the other passengers and crew think of the idea.", goal_achieved: 0},
      {user_id: 6, goal_objective: "Find out who killed the Captain ", goal_details: "After all, you don't know why he was murdered - and you might be next! You do know that only someone familiar with the workings of the ship could have arranged for the lights in the ballroom to be turned off.", goal_achieved: 0},
      {user_id: 7, goal_objective: "Discover who the smugglers are ", goal_details: "You have to make a report on your findings at the end of the voyage. However, ideally you will actually capture the smugglers and earn yourself a promotion. Your main suspects are the crew and anyone else who travels across the Atlantic on a regular basis.", goal_achieved: 0},
      {user_id: 7, goal_objective: "Keep an eye on the Finkelsteins ", goal_details: "Find out if they sign any contracts with foreign powers for exporting munitions.", goal_achieved: 0},
      {user_id: 7, goal_objective: "Further America's goals: You are a patriot and must watch out for anything that might affect America's security ", goal_details: "", goal_achieved: 0},
      {user_id: 7, goal_objective: "Find out who killed the Captain ", goal_details: "After all, you don't know why he was murdered - and you might be next!", goal_achieved: 0},
      {user_id: 7, goal_objective: "Don't blow your cover ", goal_details: "Don't let anyone discover that you're not the real de Richelieu.", goal_achieved: 0},
      {user_id: 8, goal_objective: "Recover the personnel log and make sure there's nothing incriminating about you in it ", goal_details: "", goal_achieved: 0},
      {user_id: 8, goal_objective: "Keep your book-cooking a secret ", goal_details: "Don't let anyone - especially the officers find out that you have been cooking the books!", goal_achieved: 0},
      {user_id: 8, goal_objective: "Don't let Hammerstein sack you ", goal_details: "You're sure that Hammerstein wants to sack you, so try and talk your way out of it. You report to the Chief Purser, Chris Gamble, so you should make sure that Chris is on your side.", goal_achieved: 0},
      {user_id: 8, goal_objective: "Make as much money as you can - if you can't avoid being sacked, then you need to make as much money as you can - $500 would be good ", goal_details: "", goal_achieved: 0},
      {user_id: 8, goal_objective: "Sell your Mickey Finns to the passengers, but don't let the officers find out ", goal_details: "The passengers are rich - $100 per Mickey is a good price.", goal_achieved: 0},
      {user_id: 8, goal_objective: "Find out who killed the Captain ", goal_details: "After all, you don't know why he was murdered - and someone might even try to frame you for it! You do know that only someone familiar with the workings of the ship could have arranged for all the lights in the ballroom to be turned off at once - but perhaps that means the murderer has an accomplice!", goal_achieved: 0},
      {user_id: 9, goal_objective: "Get David to fall in love with you ", goal_details: "If you could get David to fall in love with you and maybe even propose, it would be just perfect! However, you're not even sure that David has even noticed you - and you need to change that!", goal_achieved: 0},
      {user_id: 9, goal_objective: "Help Cynthia", goal_details: "She's your best friend and you'd do anything for her.", goal_achieved: 0},
      {user_id: 9, goal_objective: "Keep the Libertania running ", goal_details: "You're one of the unsung heroes, one of the crew who makes sure that even during a crisis the ship keeps going. Make sure that the passengers are comfortable and catered for, and prove yourself useful.", goal_achieved: 0},
      {user_id: 9, goal_objective: "Do not get caught ", goal_details: "Don't let anyone find out you're the murderer - and don't let anyone pin the blame on David either! See if there's someone else you can pin the blame on.", goal_achieved: 0},
      {user_id: 9, goal_objective: "Get David promoted ", goal_details: "Or at the very least make sure that David isn't sacked.", goal_achieved: 0},
      {user_id: 10, goal_objective: "Be a cabaret singer ", goal_details: "You know all the tunes. You've been practising. Now all you need to do is find someone who will give you an audition.", goal_achieved: 0},
      {user_id: 10, goal_objective: "Help Catherine - she's your best friend and you'd do anything for her ", goal_details: "You know she is infatuated with the Second Officer, David Whitworth.", goal_achieved: 0},
      {user_id: 10, goal_objective: "Find out who killed the Captain ", goal_details: "Captain Bayard was always good for you and you want to find his killer and bring them to justice.", goal_achieved: 0},
      {user_id: 10, goal_objective: "Keep the ship going ", goal_details: "You're one of the unsung heroes, one of the crew who makes sure that even during a crisis the ship keeps going.", goal_achieved: 0},
      {user_id: 10, goal_objective: "Secure a recommendation from the Captain ", goal_details: "Do what you have to to secure a recommendation from acting-Captain Warren.", goal_achieved: 0},
      {user_id: 10, goal_objective: "Find a way to help Eldon Dumlop", goal_details: "Maybe you can find out if there's anything else you can help him with.", goal_achieved: 0},
      {user_id: 11, goal_objective: "See if you can get promoted ", goal_details: "If you can show how useful you are, perhaps the new Captain or the Purser will promote you.", goal_achieved: 0},
      {user_id: 11, goal_objective: "Make sure that no-one links you with the lights ", goal_details: "If the officers found out that you were responsible for switching off the lights they might accuse you of being an accomplice and putting you under arrest.", goal_achieved: 0},
      {user_id: 11, goal_objective: "Find the note again ", goal_details: "If you can find the note then you can show that the Captain asked you to switch the lights off and you can then tell one of the officers.", goal_achieved: 0},
      {user_id: 11, goal_objective: "Help everyone whenever you can ", goal_details: "You became a trainee steward because you like helping people (and seeing the world on a cruise liner, of course). Make yourself useful.", goal_achieved: 0},
      {user_id: 11, goal_objective: "Find out who killed the Captain ", goal_details: "After all, you don't know why he was murdered - and you might be next!", goal_achieved: 0},
      {user_id: 12, goal_objective: "Get your contract renewed for another five years ", goal_details: "You are currently being paid $500 per round trip (a trip lasts for about two months) - you should try to double that at least. You must speak to Daniel Warren before Hammerstein has a chance to poison his mind.", goal_achieved: 0},
      {user_id: 12, goal_objective: "Discredit Marie Hati at every opportunity ", goal_details: "Keep an eye on Marie and make sure she doesn't get her claws into Daniel.", goal_achieved: 0},
      {user_id: 12, goal_objective: "Help your good friend Brynneth Cawdra, particularly in helping him secure a promotion, but also with any other problems he might have ", goal_details: "", goal_achieved: 0},
      {user_id: 12, goal_objective: "Have a discreet fling with one (or more) of the most eligible men on board ", goal_details: "", goal_achieved: 0},
      {user_id: 12, goal_objective: "Find out who killed the Captain ", goal_details: "After all, you don't know why he was murdered - and you might be next!", goal_achieved: 0},
      {user_id: 13, goal_objective: "Ensure that the Captain's death does not bring America into the war ", goal_details: "You must speak with Ryce and make sure he understands that England doesn't need any help.", goal_achieved: 0},
      {user_id: 13, goal_objective: "The boat must go to Southampton ", goal_details: "That way you can continue to spy. If it returns to New York you might never get back to London, and your use to Germany will be limited. You will have to speak to the new Captain.", goal_achieved: 0},
      {user_id: 13, goal_objective: "Don't let anyone find out that you sabotaged the telegraph ", goal_details: "", goal_achieved: 0},
      {user_id: 13, goal_objective: "Reveal yourself to Grafenberg and get his cooperation ", goal_details: "Between the two of you, you should be able to persuade the ship to go to Southampton. You should also find out if you can help him with anything.", goal_achieved: 0},
      {user_id: 13, goal_objective: "Find out who killed the Captain ", goal_details: "After all, you don't know why he was murdered - and you might be next!", goal_achieved: 0},
      {user_id: 14, goal_objective: "Get the logbook back ", goal_details: "It was in your bag - and now it's gone. Armin Oberhausen, Elizabeth James and Marie Hati were all nearby when you realised it had gone missing - perhaps one of them took it.", goal_achieved: 0},
      {user_id: 14, goal_objective: "Keep your smuggling operation secret ", goal_details: "You've heard a rumour that the Captain was thinking of getting rid of Whitworth. But you don't know why - you need to find out if it has anything to do with your smuggling operation. If it is, hopefully he will have taken the secret with him to his grave.", goal_achieved: 0},
      {user_id: 14, goal_objective: "Find out what Sir Rory is hiding:", goal_details: "You think your husband is hiding something - try and find out what it is, or confront him over it.", goal_achieved: 0},
      {user_id: 14, goal_objective: "Get more money ", goal_details: "Somehow, anyhow, you need more money. $1,000 would be a good start.", goal_achieved: 0},
      {user_id: 14, goal_objective: "Find out who killed the Captain ", goal_details: "After all, you don't know why he was murdered - and you might be next!", goal_achieved: 0},
      {user_id: 15, goal_objective: "Be a peacebroker ", goal_details: "You want a quiet life, you really do. You don't even like to see other people arguing - you prefer to step in and try to broker peace between them. It's so much less stressful if everyone just gets along.", goal_achieved: 0},
      {user_id: 15, goal_objective: "Persuade Warren to turn the ship about and go back to America ", goal_details: "With war breaking out Europe won't be safe, and you're too old for such excitement. It would be best if the Libertania returned to New York.", goal_achieved: 0},
      {user_id: 15, goal_objective: "Don't let Rachel find out about Jennifer ", goal_details: "Even though you were never actually unfaithful, in your heart you do feel as if you betrayed Rachel. It would be best if the two women didn't talk to each other.", goal_achieved: 0},
      {user_id: 15, goal_objective: "Help Aggie ", goal_details: "You are very fond of your niece - help her as best you can.", goal_achieved: 0},
      {user_id: 15, goal_objective: "Find out who killed the Captain ", goal_details: "After all, you don't know why he was murdered - and you might be next! Perhaps Aggie can help solve the murder.", goal_achieved: 0},
      {user_id: 16, goal_objective: "Persuade Jeremiah that selling munitions is good for business ", goal_details: "You don't mind who you sell them to (even the French or the Russians) - as long as they can pay. Your husband will have to sign the contract, however. You will also need an export licence - Ryce should have these. (One export licence will cover several arms contracts.)", goal_achieved: 0},
      {user_id: 16, goal_objective: "Come up with a plan to get the Germans off the ship at Southampton ", goal_details: "No doubt the British authorities will want to detain them, and that would be most awkward.", goal_achieved: 0},
      {user_id: 16, goal_objective: "Help Aggie find a husband ", goal_details: "If you see any potential bachelors you should direct them in Aggie's direction.", goal_achieved: 0},
      {user_id: 16, goal_objective: "Find out who killed the Captain ", goal_details: "After all, you don't know why he was murdered - and you might be next! Perhaps you should get Aggie to help you.", goal_achieved: 0},
      {user_id: 16, goal_objective: "Find out who is running the smuggling operation ", goal_details: "If you like the look of them, offer them a job.", goal_achieved: 0},
      {user_id: 17, goal_objective: "Try to get the boat returned to New York ", goal_details: "That would delay your arrival into London sufficient that the news of your failure in Hollywood won't be noticed by anyone. They'll all be reading about the war.", goal_achieved: 0},
      {user_id: 17, goal_objective: "Failing that, sign up with the boat for a short (6 month) contract ", goal_details: "You're pretty certain that someone of your talents would be a big draw on a ship like this. You should approach the new Captain - and maybe you had best do that directly rather than rely on your manager. You would settle for as little as $4,000 for the six months, but of course you'd rather do better than that.", goal_achieved: 0},
      {user_id: 17, goal_objective: "Make sure that Clark treats you properly ", goal_details: "Your manager has been useless these last couple of months - you deserve to be treated properly. Make sure he knows his place - and remember that his commission depends on your talent.", goal_achieved: 0},
      {user_id: 17, goal_objective: "Try to engineer a discreet shipboard romance ", goal_details: "But make sure it remains discreet - you'd prefer not to have your private life splashed across the papers.", goal_achieved: 0},
      {user_id: 17, goal_objective: "Find out who killed the Captain ", goal_details: "After all, you don't know why he was murdered - and you might be next!", goal_achieved: 0},
      {user_id: 18, goal_objective: "Get PJ to end the contract with you ", goal_details: "Then you'd be rid of the old has-been and can pursue some real talent.", goal_achieved: 0},
      {user_id: 18, goal_objective: "Try to sign up Jennifer ", goal_details: "She may be out of your league, but you don't know if you don't try. You know that you could get about $4,000 for Jennifer - and you'd take 10%, of course. (You could probably get about $2,000 for an 'unknown.')", goal_achieved: 0},
      {user_id: 18, goal_objective: "See if Isabelle is interested in returning to the stage ", goal_details: "She might still be game, but it's unlikely the Baronet is, so you'll have to be careful.", goal_achieved: 0},
      {user_id: 18, goal_objective: "Catch up with 'Uncle' Gilbert and find out if there's anything you can do to help him while you're aboard the ship ", goal_details: "", goal_achieved: 0},
      {user_id: 18, goal_objective: "Find out who killed the Captain ", goal_details: "After all, you don't know why he was murdered - and you might be next!", goal_achieved: 0},
      {user_id: 19, goal_objective: "Try to understand what is happening and don't let anyone confuse you ", goal_details: "If you do get confused, you should be able to get Wilma to help you.", goal_achieved: 0},
      {user_id: 19, goal_objective: "Don't let anyone find out that you are having an affair with Wilma ", goal_details: "Or if they do find out, make sure that it's someone who can keep a secret and won't go blabbing to the papers.", goal_achieved: 0},
      {user_id: 19, goal_objective: "Make sure that the boat goes to Southampton ", goal_details: "You were going to England and if there's one thing you're sure of, it's that it should continue to Southampton. If anyone raises a fuss, you'll just have to talk to that Warren fellow.", goal_achieved: 0},
      {user_id: 19, goal_objective: "Catch up with young Clark Ridgeway and see if you can help him with anything - he always was an adorable little rascal ", goal_details: "", goal_achieved: 0},
      {user_id: 19, goal_objective: "Find out who killed the Captain ", goal_details: "After all, you don't know why he was murdered - and you might be next!", goal_achieved: 0},
      {user_id: 20, goal_objective: "Promote America's neutrality ", goal_details: "The longer America stays neutral, the more chances for you to make some serious cash.", goal_achieved: 0},
      {user_id: 20, goal_objective: "Make some money yourself ", goal_details: "Your best bet for this is to sell your export licences.", goal_achieved: 0},
      {user_id: 20, goal_objective: "Don't let anyone find out that you're involved with the smuggling operation (wine and brandy to America, cigars to Europe) ", goal_details: "If anyone found out it would ruin your career.", goal_achieved: 0},
      {user_id: 20, goal_objective: "Decide which side America should support ", goal_details: "That's not a decision you'd want to leave to Ryce - and he would probably defer to you anyway.", goal_achieved: 0},
      {user_id: 20, goal_objective: "Keep your affair with Ryce secret ", goal_details: "It would ruin both of your careers if it were to get into the papers.", goal_achieved: 0},
      {user_id: 20, goal_objective: "Find out who killed the Captain ", goal_details: "After all, you don't know why he was murdered - and you might be next!", goal_achieved: 0},
      {user_id: 21, goal_objective: "Get rid of your pesky daughter if you can ", goal_details: "The divorce hasn't been settled yet, but you could certainly find someone for her to become engaged to. That would be ideal - and failing that perhaps she could just ‘disappear'.", goal_achieved: 0},
      {user_id: 21, goal_objective: "Make sure the boat goes to Southampton ", goal_details: "You need to try to re- establish English neutrality - it's the only safe way.", goal_achieved: 0},
      {user_id: 21, goal_objective: "Keep an eye on Wiggins: Your assistant is useful, but a bit too enthusiastic ", goal_details: "Make sure that he doesn't get carried away and try to interfere.", goal_achieved: 0},
      {user_id: 21, goal_objective: "Get another knockout drug: Get Wiggins to get you another knockout drug so that you can give it to Elizabeth and encourage her back to her stateroom ", goal_details: "", goal_achieved: 0},
      {user_id: 21, goal_objective: "Be a chauvinistic, xenophobic bore ", goal_details: "", goal_achieved: 0},
      {user_id: 21, goal_objective: "Find out who killed the Captain ", goal_details: "After all, you don't know why he was murdered - and you might be next!", goal_achieved: 0},
      {user_id: 22, goal_objective: "Look after Daddy and relentlessly cheer him up ", goal_details: "", goal_achieved: 0},
      {user_id: 22, goal_objective: "Make sure that you find Daddy a nice wife ", goal_details: "He's now a very eligible widower - you shouldn't have any difficulty finding suitable candidates.", goal_achieved: 0},
      {user_id: 22, goal_objective: "Decide what to do with the logbook ", goal_details: "You're sure that Isabelle Canter shouldn't have the logbook - but perhaps she was given for safe keeping it by the Captain because he knew that he was going to be murdered. It's so confusing! Perhaps you should ask your father.", goal_achieved: 0},
      {user_id: 22, goal_objective: "Find out who killed the Captain ", goal_details: "After all, you don't know why he was murdered - and Daddy might be next!", goal_achieved: 0},
      {user_id: 23, goal_objective: "Return to New York - you don't fancy spending time in a British detention centre and would rather ride out the war in peace ", goal_details: "Make sure the new Captain understands what may happen to you - and press upon him the importance of returning to New York.", goal_achieved: 0},
      {user_id: 23, goal_objective: "Recover your revolver ", goal_details: "Your revolver is quite distinctive - German made.", goal_achieved: 0},
      {user_id: 23, goal_objective: "Make sure that Christina doesn't make trouble for you ", goal_details: "She really was a delightful girl and you treasure your memories of your time with her, but you don't fancy reliving those memories. Not unless you can ensure that Armin doesn't find out.", goal_achieved: 0},
      {user_id: 23, goal_objective: "Make sure that the Captain's murder isn't blamed on Germany ", goal_details: "Your superiors back in Germany would not be pleased to find out that Germany had been blamed for the Captain's death!", goal_achieved: 0},
      {user_id: 24, goal_objective: "Implicate Maximilian in the murder of Captain Bayard and force him to step down from his position as German Procurement Minister ", goal_details: "As his assistant, you would automatically be promoted into the position.", goal_achieved: 0},
      {user_id: 24, goal_objective: "Further Germany's aims ", goal_details: "Germany has enemies aboard the Libertania. Recruit sympathetic allies and make sure Germany's enemies don't get the upper hand.", goal_achieved: 0},
      {user_id: 24, goal_objective: "Ensure that America doesn't enter the war - or if it does, then it enters on the German side ", goal_details: "", goal_achieved: 0},
      {user_id: 24, goal_objective: "Make sure that the boat goes to Southampton, by whatever mean necessary ", goal_details: "You're not worried about the British capturing you - you can just claim diplomatic immunity.", goal_achieved: 0},
      {user_id: 24, goal_objective: "Play the efficient assistant ", goal_details: "Don't let Maximilian know that you want his job!", goal_achieved: 0},
      {user_id: 25, goal_objective: "Find out who is smuggling aboard the Libertania and make some sort of deal with them ", goal_details: "", goal_achieved: 0},
      {user_id: 25, goal_objective: "Make sure the boat gets to Southampton as fast as possible ", goal_details: "You need to get your weapons to help with the war effort.", goal_achieved: 0},
      {user_id: 25, goal_objective: "Keep an eye on the Germans ", goal_details: "Make sure that they don't buy any weapons and make sure that they don't ally themselves with the Americans.", goal_achieved: 0},
      {user_id: 25, goal_objective: "Find allies: Mother Russia will need allies in the coming war - try to find them ", goal_details: "In particular, you believe that Sir Rory Canter may not be completely loyal to Britain.", goal_achieved: 0},
      {user_id: 25, goal_objective: "Get your revolver back ", goal_details: "It shouldn't be hard to spot as it has your initials carved on it in Cyrillic.", goal_achieved: 0},
      {user_id: 25, goal_objective: "See if you can implicate the Germans in the death of the Captain - and make sure that his death has no unfortunate consequences for your country ", goal_details: "", goal_achieved: 0},
      {user_id: 26, goal_objective: "Make sure the boat continues to England - that way you can get your quiet divorce ", goal_details: "If it returns to America everyone will know!", goal_achieved: 0},
      {user_id: 26, goal_objective: "Be Candice's quiet, attentive husband ", goal_details: "Until you can get divorced, you need to play the attentive husband. Find out if there's anything you can help your wife with.", goal_achieved: 0},
      {user_id: 26, goal_objective: "Find some way to repay Cynthia Petal for her kindness - perhaps you can get her a gift or help her somehow ", goal_details: "", goal_achieved: 0},
      {user_id: 26, goal_objective: "Don't let anyone find out that you're planning to divorce Candice ", goal_details: "Or if they do find out, find some way of making sure that they don't tell anyone else - especially Candice!", goal_achieved: 0},
      {user_id: 26, goal_objective: "Have another drink ", goal_details: "Or two… (It's all so ghastly after all!)", goal_achieved: 0},
      {user_id: 26, goal_objective: "Find out who killed the Captain ", goal_details: "After all, you don't know why he was murdered - and you might be next!", goal_achieved: 0},
      {user_id: 27, goal_objective: "Find out if Drew and Ryce are spies, and if they are, remove them ", goal_details: "You will need solid evidence if they are spies - you can't kill innocent people.", goal_achieved: 0},
      {user_id: 27, goal_objective: "Observe the Canters: You have also been briefed to keep an eye on Sir Rory Canter and his wife Isabelle ", goal_details: "He's suspected by the State Department of being a German sympathiser.", goal_achieved: 0},
      {user_id: 27, goal_objective: "Find out who is the other State Department agent ", goal_details: "You know that they are a crew member, and it seems likely that they are relatively new to the crew (rather than a long-time crew member). But other than that you have no idea.", goal_achieved: 0},
      {user_id: 27, goal_objective: "Get Dumlop out of his ‘marriage' with you ", goal_details: "Once you've got the information about Drew and Ryce, you need to somehow get out of your ‘marriage' with Eldon. It might be simplest if you simply disappear.", goal_achieved: 0},
      {user_id: 27, goal_objective: "Find out who killed the Captain ", goal_details: "After all, you don't know why he was murdered - and you might be next!", goal_achieved: 0},
      {user_id: 28, goal_objective: "Talk to the Americans and the Germans and offer to help them however you can ", goal_details: "Of course, you'll help them as far as you can, as long as it doesn't do anything that jeopardises French security.", goal_achieved: 0},
      {user_id: 28, goal_objective: "Approach Sir Ranulph Royston and offer your services to the British ", goal_details: "", goal_achieved: 0},
      {user_id: 28, goal_objective: "Find out as many secrets as possible ", goal_details: "Your French employers will be grateful for whatever information you can find out.", goal_achieved: 0},
      {user_id: 28, goal_objective: "Don't let anyone find out that you are a spy - at least not until you tell them ", goal_details: "As far as everyone on board is concerned, you are a reporter working for Le Monde. You should act the part.", goal_achieved: 0},
      {user_id: 28, goal_objective: "Do whatever is best for France ", goal_details: "", goal_achieved: 0},
      {user_id: 28, goal_objective: "Investigate the Captain's death ", goal_details: "Find out who murdered him, and whether you can use it as a lever against the Germans.", goal_achieved: 0},
      {user_id: 29, goal_objective: "Solve the murder ", goal_details: "It's becoming something of a habit, but you're an amateur detective and you can't abide an unsolved mystery.", goal_achieved: 0},
      {user_id: 29, goal_objective: "Offer your help to the officers: The officers probably have their hands full with running the ship and keeping control of the passengers to worry about who killed Captain Byard ", goal_details: "You should present yourself to one of the senior officers and offer your services.", goal_achieved: 0},
      {user_id: 29, goal_objective: "Help your aunt and uncle ", goal_details: "You're very grateful for the help they have given you and you'd like to repay them however you can.", goal_achieved: 0},
      {user_id: 29, goal_objective: "Solve other mysteries as you encounter them - keep your eyes and ears open ", goal_details: "", goal_achieved: 0},
      ])

    # Abilities
    abilities = Ability.create!([
      {user_id: 1, power_name: "aa", power_desc: "aa", quant_total: 1, quant_used: 0, quant_left: 1},
      {user_id: 2, power_name: "bb", power_desc: "bb", quant_total: 1, quant_used: 0, quant_left: 1},
      {user_id: 3, power_name: "Stewards", power_desc: "The stewards talk to you, and everyone talks in front of stewards. If you see a player talking to the Host you may play this card and the Host will tell you what they were talking about.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 3, power_name: "Scuttlebutt", power_desc: "Another player must first tell you who is listed in their Other People section, and then read out the details of a character of your choice. You must then tell them who is listed in your Other People section and read out the details of a character of their choice.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 3, power_name: "It’s only a flesh wound!", power_desc: "Use this after another player has defeated you in combat. The wound has no effect: you are not injured and may now take an action.", quant_total: 2, quant_used: 0, quant_left: 2},
      {user_id: 4, power_name: "Stewards", power_desc: "The stewards talk to you, and everyone talks in front of stewards. If you see a player talking to the Host you may play this card and the Host will tell you what they were talking about.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 4, power_name: "Sudden insight", power_desc: "After talking to another player, you realise that they have revealed more than they intended. They must must show you their Clue.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 4, power_name: "Not so fast!", power_desc: "An Ability played by another player has no effect! However, they must still check off a circle. You cannot use this Ability to cancel another Not so fast! ability. You may use this if you are being pickpocketed.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 5, power_name: "Let’s share what we know", power_desc: "After speaking with another player, show them your Clue. They must then show you their Clue.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 5, power_name: "Let’s gossip!", power_desc: "Another player must tell you who is listed in their Other People section, and then read out the details of a person of your choice. You must then tell them you is listed in your Other People section and read out the details of a person of their choice.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 5, power_name: "Quick thinking", power_desc: "You can think quickly on your feet. If someone plays an ability on you that forces you to reveal your Secret or any of your goals, it has no effect. However, you must reveal your Clue instead.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 6, power_name: "Stewards", power_desc: "The stewards talk to you, and everyone talks in front of stewards. If you see a player talking to the Host you may play this card and the Host will tell you what they were talking about.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 6, power_name: "Let’s share what we know", power_desc: "After speaking with another player, show them your Clue. They must then show you their Clue.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 6, power_name: "Scuttlebutt", power_desc: "Another player must first tell you who is listed in their Other People section, and then read out the details of a character of your choice. You must then tell them who is listed in your Other People section and read out the details of a character of their choice.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 7, power_name: "Sudden insight", power_desc: "After speaking briefly to another player, you realise that they have revealed more than they intended. They must must show you their Clue.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 7, power_name: "Flattery", power_desc: "If you flatter another person they must read out to you the first goal listed on their character sheet.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 7, power_name: "Tight-lipped", power_desc: "If another player plays an Ability on you that forces you to reveal your Secret or Clue or any of your goals, it has no effect. They must still check off one of their uses.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 8, power_name: "Let’s share what we know", power_desc: "After speaking with another player, show them your Clue. They must then show you their Clue.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 8, power_name: "Pickpocket", power_desc: "You are adept at sleight-of-hand tricks. Tell the Host what Item (or up to $100 in cash) you want to pickpocket from another player. If that player does not have what you seek, the Host will take something else at random.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 8, power_name: "Tight-lipped", power_desc: "If another player plays an Ability on you that forces you to reveal your Secret or Clue or any of your goals, it has no effect. They must still check off one of their uses.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 9, power_name: "Nobody notices a stewardess", power_desc: "When you see a conversation taking place that you'd like to secretly overhear, tell the Host, and they will listen in and report back to you what's being talked about. (Please do not play if the Host is busy!)", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 9, power_name: "Who do you know here?", power_desc: "Another player must tell you who is listed in their Other People section and then read out the details of a character of your choice.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 9, power_name: "Not so fast!", power_desc: "An Ability played by another player has no effect! However, they must still check off a circle. You cannot use this Ability to cancel another Not so fast! ability. You may use this if you are being pickpocketed.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 10, power_name: "Nobody notices a stewardess", power_desc: "When you see a conversation taking place that you'd like to secretly overhear, tell the Host, and they will listen in and report back to you what's being talked about. (Please do not play if the Host is busy!)", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 10, power_name: "Let’s share what we know", power_desc: "After speaking with another player, show them your Clue. They must then show you their Clue.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 10, power_name: "Who do you know here?", power_desc: "Another player must tell you who is listed in their Other People section and then read out the details of a character of your choice.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 11, power_name: "Nobody notices a steward", power_desc: "When you see a conversation taking place that you'd like to secretly overhear, tell the Host, and they will listen in and report back to you what's being talked about. (Please do not play if the Host is busy!)", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 11, power_name: "Scuttlebutt", power_desc: "Another player must first tell you who is listed in their Other People section, and then read out the details of a character of your choice. You must then tell them who is listed in your Other People section and read out the details of a character of their choice.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 11, power_name: "Flattery", power_desc: "If you flatter another player they must read out to you the first goal listed on their character sheet.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 12, power_name: "Let’s share goals", power_desc: "If you read out one of your goals to another player, they must read out two goals of their choice to you.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 12, power_name: "Let’s share what we know", power_desc: "After speaking with another player, show them your Clue. They must then show you their Clue.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 12, power_name: "I’ve bared my heart – you bare yours", power_desc: "Reveal your Secret to another player - they must reveal their Secret to you.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 13, power_name: "Flattery", power_desc: "If you flatter another person they must read out to you the first goal listed on their character sheet.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 13, power_name: "Sudden insight", power_desc: "After talking to another player, you realise that they have revealed more than they intended. They must show you their Clue.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 13, power_name: "Tight-lipped", power_desc: "If another player plays an Ability on you that forces you to reveal your Secret or Clue or any of your goals, it has no effect. They must still check off one of their uses.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 14, power_name: "Who do you know here?", power_desc: "Another player must tell you who is listed in their Other People section and then read out the details of a character of your choice.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 14, power_name: "Success!", power_desc: "You can make a failed or tied Rock-Paper-Scissors challenge succeed. It does not have to be a challenge that you are involved in.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 14, power_name: "Not so fast!", power_desc: "An Ability played by another player has no effect! However, they must still check off a circle. You cannot use this Ability to cancel another Not so fast! ability. You may use this if you are being pickpocketed.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 15, power_name: "Flattery", power_desc: "If you flatter another person they must read out to you the first goal listed on their character sheet.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 15, power_name: "Let’s share what we know", power_desc: "After speaking with another player, show them your Clue. They must then show you their Clue.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 15, power_name: "You’ve revealed more than you intended", power_desc: "Another player has revealed more than they intended and must reveal their Secret to you.", quant_total: 2, quant_used: 0, quant_left: 2},
      {user_id: 16, power_name: "Thorough appraisal", power_desc: "After talking to another player, they must show you all their Item cards and money. (Note that you can't take their Items or money - just look at them.)", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 16, power_name: "Let’s Gossip", power_desc: "Another player must first tell you who is listed in their Other People section, and then read out the details of a character of your choice. You must then tell them who is listed in your Other People section and read out the details of a character of their choice.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 16, power_name: "Success!", power_desc: "You can make a failed or tied Rock-Paper-Scissors challenge succeed. It does not have to be a challenge that you are involved in.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 17, power_name: "Flattery", power_desc: "If you flatter another person they must read out to you the first goal listed on their character sheet.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 17, power_name: "Let’s share what we know", power_desc: "After speaking with another player, show them your Clue. They must then show you their Clue.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 17, power_name: "Let’s Gossip", power_desc: "Another player must first tell you who is listed in their Other People section, and then read out the details of a character of your choice. You must then tell them who is listed in your Other People section and read out the details of a character of their choice.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 18, power_name: "Let’s Gossip", power_desc: "Another player must first tell you who is listed in their Other People section, and then read out the details of a character of your choice. You must then tell them who is listed in your Other People section and read out the details of a character of their choice.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 18, power_name: "Let’s share goals", power_desc: "If you read out one of your goals to another player, they must read out two goals of their choice to you.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 18, power_name: "Thorough appraisal", power_desc: "After talking to another player, they must show you all their Item cards and money. (Note that you can't take their Items or money - just look at them.)", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 19, power_name: "Let’s Gossip", power_desc: "Another player must first tell you who is listed in their Other People section, and then read out the details of a character of your choice. You must then tell them who is listed in your Other People section and read out the details of a character of their choice.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 19, power_name: "Flattery", power_desc: "If you flatter another person they must read out to you the first goal listed on their character sheet.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 19, power_name: "Let’s share what we know", power_desc: "After speaking with another player, show them your Clue. They must then show you their Clue.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 20, power_name: "Who do you know here?", power_desc: "Another player must tell you who is listed in their Other People section and then read out the details of a character of your choice.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 20, power_name: "Success!", power_desc: "You can make a failed or tied Rock-Paper-Scissors challenge succeed. It does not have to be a challenge that you are involved in.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 20, power_name: "Not so fast!", power_desc: "An Ability played by another player has no effect! However, they must still check off a circle. You cannot use this Ability to cancel another Not so fast! ability. You may use this if you are being pickpocketed.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 21, power_name: "Let’s share goals", power_desc: "If you read out one of your goals to another player, they must read out two goals of their choice to you.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 21, power_name: "Let’s share what we know", power_desc: "After speaking with another player, show them your Clue. They must then show you their Clue.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 21, power_name: "Tight-lipped", power_desc: "If another player plays an Ability on you that forces you to reveal your Secret or Clue or any of your goals, it has no effect. They must still check off one of their uses.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 22, power_name: "Let’s Gossip", power_desc: "Another player must first tell you who is listed in their Other People section, and then read out the details of a character of your choice. You must then tell them who is listed in your Other People section and read out the details of a character of their choice.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 22, power_name: "You’ve revealed more than you intended", power_desc: "Another player has revealed more than they intended and must reveal their Secret to you. You may not play this on your father, Sir Ranulph Royston.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 22, power_name: "I’ve told you what I want – now tell me what you want", power_desc: "If you read out one of your goals to another player, they must read out to you the first goal listed on their character sheet.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 23, power_name: "Let’s Gossip", power_desc: "Another player must first tell you who is listed in their Other People section, and then read out the details of a character of your choice. You must then tell them who is listed in your Other People section and read out the details of a character of their choice.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 23, power_name: "Flattery", power_desc: "If you flatter another person they must read out to you the first goal listed on their character sheet.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 23, power_name: "Let’s share what we know", power_desc: "After speaking with another player, show them your Clue. They must then show you their Clue.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 24, power_name: "Thorough appraisal", power_desc: "After talking to another player, they must show you all their Item cards and money. (Note that you can't take their Items or money - just look at them.)", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 24, power_name: "Let’s share what we know", power_desc: "After speaking with another player, show them your Clue. They must then show you their Clue.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 24, power_name: "Tight-lipped", power_desc: "If another player plays an Ability on you that forces you to reveal your Secret or Clue or any of your goals, it has no effect. They must still check off one of their uses.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 25, power_name: "I’ve bared my heart – you bare yours", power_desc: "Reveal your Secret to another player - they must reveal their Secret to you.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 25, power_name: "Let’s share what we know", power_desc: "After speaking with another player, show them your Clue. They must then show you their Clue.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 25, power_name: "Success!", power_desc: "You can make a failed or tied Rock-Paper-Scissors challenge succeed. It does not have to be a challenge that you are involved in.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 26, power_name: "I’ve bared my heart – you bare yours", power_desc: "Reveal your Secret to another player - they must reveal their Secret to you.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 26, power_name: "Who do you know here?", power_desc: "Another player must tell you who is listed in their Other People section and then read out the details of a character of your choice.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 26, power_name: "Let’s share goals", power_desc: "If you read out one of your goals to another player, they must read out two goals of their choice to you.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 27, power_name: "Let’s share what we know", power_desc: "After speaking with another player, show them your Clue. They must then show you their Clue.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 27, power_name: "Pickpocket", power_desc: "You are a trained pickpocket. Tell the Host what Item (or up to $100 in cash) you want to pickpocket from another player. If that player does not have what you seek, the Host will take something else at random.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 27, power_name: "Tight-lipped", power_desc: "If another player plays an Ability on you that forces you to reveal your Secret or Clue or any of your goals, it has no effect. They must still check off one of their uses.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 28, power_name: "Who do you know here?", power_desc: "Another player must tell you who is listed in their Other People section and then read out the details of a character of your choice.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 28, power_name: "Pickpocket", power_desc: "You are a trained pickpocket. Tell the Host what Item (or up to $100 in cash) you want to pickpocket from another player. If that player does not have what you seek, the Host will take something else at random.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 28, power_name: "Not so fast!", power_desc: "An Ability played by another player has no effect! However, they must still check off a circle. You cannot use this Ability to cancel another Not so fast! ability. You may use this if you are being pickpocketed.", quant_total: 3, quant_used: 0, quant_left: 3},
      {user_id: 29, power_name: "I’d like to ask you a few questions", power_desc: "Speak to another character and reveal that you are an amateur detective. They must reveal their Clue to you.", quant_total: 27, quant_used: 0, quant_left: 27},
      {user_id: 29, power_name: "Let’s Gossip", power_desc: "Another player must first tell you who is listed in their Other People section, and then read out the details of a character of your choice. You must then tell them who is listed in your Other People section and read out the details of a character of their choice.", quant_total: 4, quant_used: 0, quant_left: 4},
      {user_id: 29, power_name: "I’ve told you what I want – now tell me what you want", power_desc: "If you read out one of your goals to another player, they must read out to you the first goal listed on their character sheet.", quant_total: 4, quant_used: 0, quant_left: 4},
      ])

    # Create Character secrets
    char_secrets = CharSecret.create!([
      {user_id: 1, sec_desc: "aa"},
      {user_id: 2, sec_desc: "bb"},
      {user_id: 3, sec_desc: "You have no secrets."},
      {user_id: 4, sec_desc: "You help smuggle wine and brandy."},
      {user_id: 5, sec_desc: "You had Maximilian von Grafenberg's illegitimate child 20 years ago."},
      {user_id: 6, sec_desc: "You have lost your officer's revolver."},
      {user_id: 7, sec_desc: "You are really an American Internal Affairs agent."},
      {user_id: 8, sec_desc: "You fiddled the cocktail bar accounts for the last few voyages of the Libertania."},
      {user_id: 9, sec_desc: "You are deeply in love with David Whitworth."},
      {user_id: 10, sec_desc: "You have no secrets."},
      {user_id: 11, sec_desc: "You switched off  the ballroom lights just before the Captain was shot."},
      {user_id: 12, sec_desc: "You and Jeremiah Finkelstein became close a few years back."},
      {user_id: 13, sec_desc: "You spy on Britain for Germany. You destroyed the Libertania's telegraph."},
      {user_id: 14, sec_desc: "You are involved in a wine and brandy smuggling operation. You also stole the logbook from Captain Bayard's cabin. You were once an exotic fan dancer."},
      {user_id: 15, sec_desc: "You nearly had an affair with Jennifer Floreste some years ago."},
      {user_id: 16, sec_desc: "You have no secrets."},
      {user_id: 17, sec_desc: "You failed in Hollywood."},
      {user_id: 18, sec_desc: "You want to break your contract with PJ Nichols."},
      {user_id: 19, sec_desc: "You are having an affair with Wilma Drew."},
      {user_id: 20, sec_desc: "You are involved in a wine and brandy smuggling operation. You are having an affair with Gilbert Ryce."},
      {user_id: 21, sec_desc: "You arranged the 'riding accident' that killed your wife."},
      {user_id: 22, sec_desc: "You have no secrets."},
      {user_id: 23, sec_desc: "Twenty years ago you had an affair with Christina Younger."},
      {user_id: 24, sec_desc: "You have stolen Maximilian's revolver. You also tried to implicate Maximilian in a vice and corruption scandal a couple of years ago so that it would be forced to resign leaving you to be German Procurement Minister."},
      {user_id: 25, sec_desc: "You have lost your Russian revolver."},
      {user_id: 26, sec_desc: "You secretly married Candice whilst drink and your father has sent you to England to get a quiet divorce."},
      {user_id: 27, sec_desc: "You are an agent working for the US State Department."},
      {user_id: 28, sec_desc: "You are a double agent spying for America and Germany - but reporting ultimately to France."},
      {user_id: 29, sec_desc: "You have no secrets."},
      ])

    # Clues
    char_infos = CharInfo.create!([
      {user_id: 1, info_desc: "aa"},
      {user_id: 2, info_desc: "bb"},
      {user_id: 3, info_desc: "All Senior Officers on the Libertania carry a revolver. The Captain's is missing, however."},
      {user_id: 4, info_desc: "This morning the Captain had a private lunch with Gilbert Ryce, Wilma Drew, Maximilian von Grafenberg, Armin Oberhausen, Marie Hati and David Whitworth."},
      {user_id: 5, info_desc: "Captain Bayard planned to dismiss Whitworth and Hammerstein at the end of this voyage."},
      {user_id: 6, info_desc: "The Libertania is being used for smuggling - and the authorities have placed agents on board to find the smugglers."},
      {user_id: 7, info_desc: "Marie Hati is spying for the US government."},
      {user_id: 8, info_desc: "Lady Isabelle Canter was once an exotic fan dancer."},
      {user_id: 9, info_desc: "Wilma Drew isn't sleeping in her own bed."},
      {user_id: 10, info_desc: "Captain Bayard was going to recommend the dismissal of several crew members at the end of this cruise."},
      {user_id: 11, info_desc: "Sasha Alexandrovich Ilyatkin has a revolver in his cabin."},
      {user_id: 12, info_desc: "At the end of each trip, Captain Bayard used to recommend promotions or increases in salary for the best crewmembers, and discharges for the worst."},
      {user_id: 13, info_desc: "There was something very suspicious about the 'riding accident' that killed Sir Ranulph Royston's wife."},
      {user_id: 14, info_desc: "Mari Hati has a pistol in her handbag."},
      {user_id: 15, info_desc: "Eldon Dumlop II's father has sent him to England to quietly divorce his new wife."},
      {user_id: 16, info_desc: "When the lights came back on after the murder, Julia Morteblanca left the room. When she returned she had something hidden in her bag."},
      {user_id: 17, info_desc: "Maximilian von Grafenburg was accused of corruption a few years back."},
      {user_id: 18, info_desc: "Isabelle Canter used to be a fan-dancer."},
      {user_id: 19, info_desc: "David Whitworth and Marie Hati were both at Captain Bayard's private lunch when the Captain broke the news of the war to you and the Germans."},
      {user_id: 20, info_desc: "Marie Hati is a spy working for the US government."},
      {user_id: 21, info_desc: "Eldon Dumlop's father has sent him to England to get a quick divorce."},
      {user_id: 22, info_desc: "Catherine New is in love with David Whitworth."},
      {user_id: 23, info_desc: "Marie Hati is a spy working for the German government."},
      {user_id: 24, info_desc: "Gilbert Ryce and Wilma Drew may be having an affair."},
      {user_id: 25, info_desc: "Whoever turned off  the lights just before the Captain was murdered was obviously familiar with the ship."},
      {user_id: 26, info_desc: "Gilbert Ryce is the best Secretary of State that the USA has ever had."},
      {user_id: 27, info_desc: "There is a US State Department agent aboard the Libertania, posing as one of the crew."},
      {user_id: 28, info_desc: "Captain Bayard had told you that he was going to get the chef sacked, because the food is awful."},
      {user_id: 29, info_desc: "Christina Younger is a real inspiration to other women."},
      ])

    # Tips
    beginner_tips = BeginnerTip.create!([
      {user_id: 1, advice: "aa"},
      {user_id: 2, advice: "bb"},
      {user_id: 3, advice: "Talk to all of your senior officers and decide who to promote to First Officer."},
      {user_id: 3, advice: "Talk to the crew to find out if anyone saw anything that might lead to the arrest of Captain Bayard's killer."},
      {user_id: 4, advice: "Talk to Daniel Warren and get him to promote you to First Officer."},
      {user_id: 4, advice: "Talk to Isabelle Canter and try to renegotiate your percentage cut."},
      {user_id: 5, advice: "Talk to Daniel Warren and try to persuade him to promote you to First Officer."},
      {user_id: 5, advice: "Talk to Candice Dumlop and try to find out if she's as young as she seems."},
      {user_id: 6, advice: "Talk to Clarke Ridgeway about signing up PJ Nichols."},
      {user_id: 6, advice: "Talk to Daniel Warren about Jennifer Floreste and Blaise de Richelieu."},
      {user_id: 7, advice: "Talk to Mari Hati and try to sound her out."},
      {user_id: 7, advice: "Talk to Cynthia Petal and try to gain her confidence."},
      {user_id: 8, advice: "Talk to Sir Rory Canter and see if he knows if his wife was once an exotic dancer."},
      {user_id: 8, advice: "Talk to Daniel Warren and try to persuade him to promote you."},
      {user_id: 9, advice: "Talk to David Whitworth about, oh, anything really. Just find excuses to talk to him."},
      {user_id: 9, advice: "Talk to Cynthia Petal (she's the other Cabin Stewardess) to see if she has any theories about who might be the murderer."},
      {user_id: 10, advice: "Talk to Candice Dumlop and try to find out if she is really 21."},
      {user_id: 10, advice: "Talk to Catherine New (she's the other Cabin Stewardess) to see if she also saw Isabelle Canter when the lights came up."},
      {user_id: 11, advice: "Talk to Chris Gamble about a promotion."},
      {user_id: 11, advice: "Talk to Cynthia Petal and see if she knows anything about the Russian Minister's pistol."},
      {user_id: 12, advice: "Talk to Daniel Warren about getting your contract renewed."},
      {user_id: 12, advice: "Talk to Jeremiah Finkelstein and see if he remembers you."},
      {user_id: 13, advice: "Talk to Gilbert Ryce about the American position of the war."},
      {user_id: 13, advice: "Talk to Daniel Warren and ensure that the ship continues to Southampton."},
      {user_id: 14, advice: "Talk to PJ Nichols about working in Hollywood."},
      {user_id: 14, advice: "Talk to Sir Rory Canter and invite him for a romantic walk on deck."},
      {user_id: 15, advice: "Talk to Daniel Warren and persuade him to turn the ship back to New York."},
      {user_id: 15, advice: "Talk to Isabelle Canter about how she knows David Whitworth."},
      {user_id: 16, advice: "Talk to Ranulph Royston, the British Minister of War to determine what is to be done with the German officials when the ship arrives in Southampton."},
      {user_id: 16, advice: "Talk to Gilbert Ryce about export licences (but not while his assistant is nearby)."},
      {user_id: 17, advice: "Talk to one of the officers to see if they would be interested in signing you on the Libertania."},
      {user_id: 17, advice: "Talk to Clark Ridgeway and remind him that his commission depends on your talent."},
      {user_id: 18, advice: "Talk to Isabelle Canter and see if she is interested in returning to the stage."},
      {user_id: 18, advice: "Congratulate Eldon Dumlop II on his new marriage."},
      {user_id: 19, advice: "Talk to Daniel Warren and ensure that the Libertania continues to Southampton."},
      {user_id: 19, advice: "Complain to one of the officers about the chef's cooking."},
      {user_id: 20, advice: "Talk to Gilbert Ryce and make sure he doesn't do anything without your knowledge."},
      {user_id: 20, advice: "Talk to Marie Hati and find out if she has useful information you can use."},
      {user_id: 21, advice: "Talk to the officers and ensure that the ship continues to Southampton."},
      {user_id: 21, advice: "Talk to Daniel Warren or David Whitworth about the risks of promoting women. Wherever will it lead?"},
      {user_id: 22, advice: "Talk to PJ Nichols about what it was like to work in Hollywood."},
      {user_id: 22, advice: "Try to cheer up your father (Sir Ranulph Royston)."},
      {user_id: 23, advice: "Talk to the ship's officers and ensure that the Libertania returns to New York."},
      {user_id: 23, advice: "Talk to Marie Hati and find out if she has useful information you can use."},
      {user_id: 24, advice: "Talk to the ship's officers and ensure that the Libertania continues on to Southampton."},
      {user_id: 24, advice: "Talk to Gilbert Ryce and try to find out if he has a wife in the US."},
      {user_id: 25, advice: "Talk to the officers and ensure that the ship continues to Southampton."},
      {user_id: 25, advice: "Talk to Blaise de Richelieu and try to figure out if the cook is a spy."},
      {user_id: 26, advice: "Talk to Gilbert Ryce and see if he can help you escape your predicament."},
      {user_id: 26, advice: "Talk to the officers and make sure that the Libertania continues to Southampton."},
      {user_id: 27, advice: "Talk to Eldon Dumlop II and get him to introduce you to Gilbert Ryce."},
      {user_id: 27, advice: "Talk to the officers and try to work out which ones you can trust."},
      {user_id: 28, advice: "Talk to Sir Rory Canter about where he was going after the lights came up."},
      {user_id: 28, advice: "Talk to David Whitworth and try to find out how he knows Isabelle Canter."},
      {user_id: 29, advice: "Talk to PJ Nichols about what it was like to work in Hollywood."},
      {user_id: 29, advice: "Find out if there is anything you can help your Aunt, Rachel Finkelstein, with."},
      ])

    # Other People
    other_people = OtherPerson.create!([
      {user_id: 1, lead_name: "aa",lead_info: "a"},
      {user_id: 2, lead_name: "bb",lead_info: "b"},
      {user_id: 3, lead_name: "Blaise de Richelieu",lead_info: "While the new Master Chef's cooking doesn't seem to be anything to write home about, Blaise does wander around the ship rather more than previous chefs you've sailed with."},
      {user_id: 3, lead_name: "Jeremiah Finkelstein",lead_info: "Finkelstein is probably trying to sell some of his new aeroplanes or other weapons to either the British or the Germans - or maybe even both."},
      {user_id: 3, lead_name: "PJ Nichols",lead_info: "You had heard that PJ had gone to Hollywood to star in a movie. You're not sure which movie, though."},
      {user_id: 3, lead_name: "Gilbert Ryce",lead_info: "From the couple of conversations that you've had with him, you're not convinced that the Secretary of State has a firm grasp on matters. You're intrigued that he hasn't brought his wife with him this time."},
      {user_id: 3, lead_name: "The Stewards and Stewardesses",lead_info: "You know that the Stewards and Stewardesses know the passengers probably better than anyone else aboard. They also all have first aid kits."},
      {user_id: 4, lead_name: "First Officer David Warren",lead_info: "You should have been promoted to
     \n\n
    First Officer, not him. You're the one with the experience - Warren is just a young upstart."},
      {user_id: 4, lead_name: "The Canters",lead_info: "You've never really dealt with Sir Rory Canter - you've only dealt with his wife Isabelle as far as the smuggling operation goes. You're not even sure if he knows that he is financing the smuggling."},
      {user_id: 4, lead_name: "Sir Ranulph Royston",lead_info: "Sir Ranulph appears to be finding the attentions of his enthusiastic daughter somewhat demanding. You think he wants her re-married as soon as possible."},
      {user_id: 4, lead_name: "The Stewards and Stewardesses",lead_info: "You know that the Stewards and Stewardesses know the passengers probably better than anyone else aboard. They also all have first aid kits."},
      {user_id: 5, lead_name: "David Whitworth",lead_info: "You know that Captain Bayard was going to get rid of Whitworth, but you're not sure why. Perhaps the Captain's log book has more information."},
      {user_id: 5, lead_name: "Candice Dumlop",lead_info: "Candice claims to be 21, but she seems older than that to you."},
      {user_id: 5, lead_name: "Armin Oberhausen",lead_info: "You don't know what it is, but something tells you that Armin doesn't have von Grafenberg's best interests at heart."},
      {user_id: 5, lead_name: "Marie Hati",lead_info: "Something tells you that Marie is more than just a reporter - perhaps she's a spy?"},
      {user_id: 5, lead_name: "Julia Morteblanca",lead_info: "Julia is the Libertania's cocktail waitress and she's good enough at sleight-of-hand tricks that you think she could probably pick a pocket."},
      {user_id: 5, lead_name: "The Stewards and Stewardesses",lead_info: "You know that the Stewards and Stewardesses know the passengers probably better than anyone else aboard. They also all have first aid kits."},
      {user_id: 6, lead_name: "Jennifer Floreste",lead_info: "Jennifer had been very friendly with the Captain, before his death."},
      {user_id: 6, lead_name: "Clark Ridgeway",lead_info: "Clark is PJ's manager. You will no doubt have to deal with him with any contract with PJ - so be nice to him."},
      {user_id: 6, lead_name: "The Finkelsteins",lead_info: "While you expected Jeremiah to be the aggressive businessman, it appears that he just wants a quiet life while his wife, Rachel, is the real financial tigress and appears eager to sell munitions to either side."},
      {user_id: 6, lead_name: "Albert Wiggins",lead_info: "Albert is Sir Ranulph Royston's assistant. You saw him talking with Julia Morteblanca last night, and she looked a bit furtive. What was that about?"},
      {user_id: 6, lead_name: "The Stewards and Stewardesses",lead_info: "You know that the Stewards and Stewardesses know the passengers probably better than anyone else aboard. They also all have first aid kits."},
      {user_id: 7, lead_name: "Gilbert Ryce",lead_info: "You know that the American Secretary of State is a close personal friend of the President. However, from what you've seen on this voyage he really isn't up to the job. However, his assistant seems particularly sharp."},
      {user_id: 7, lead_name: "Marie Hati",lead_info: "You've been told by your department that Marie is more than just a reporter - she's a spy working for your government. You do wonder if there is more to her than that, however, as she seems to be ideally placed to manage the smuggling operation."},
      {user_id: 7, lead_name: "Julia Morteblanca",lead_info: "Julia is the Libertania's cocktail waitress and she's good enough at sleight-of-hand tricks to be pretty good at picking pockets."},
      {user_id: 7, lead_name: "Cynthia Petal",lead_info: "Cynthia always seems to know about people aboard the ship. She could be a useful source of information."},
      {user_id: 7, lead_name: "Elizabeth James",lead_info: "You've heard that Elizabeth hired some very expensive lawyers to arrange for her divorce - no doubt her father paid for them. Elizabeth is obviously enjoying looking after her father. The same can't be said for him, though."},
      {user_id: 8, lead_name: "Isabelle Canter",lead_info: "You vaguely remember hearing that Isabelle Canter was once an exotic fan dancer. Can that be true?"},
      {user_id: 8, lead_name: "PJ Nichols",lead_info: "From what you heard, every studio in Hollywood turned down PJ Nichols. That's the kind of thing that could end a career."},
      {user_id: 8, lead_name: "Wilma Drew",lead_info: "Unless you're very mistaken, Wilma has a real crush on her boss, Gilbert Ryce."},
      {user_id: 8, lead_name: "Maximilian von Grafenberg",lead_info: "You've heard the name before - ah yes. He must be that von Grafenberg, the one accused of corruption a couple of years ago. You're surprised he still has his job - how can anyone trust him now?"},
      {user_id: 8, lead_name: "Albert Wiggins",lead_info: "You sold one of your Mickey Finns to Albert Wiggins last night."},
      {user_id: 9, lead_name: "Wilma Drew",lead_info: "You know that Wilma Drew's bed hasn't been slept in once since she's been on board."},
      {user_id: 9, lead_name: "Christina Younger",lead_info: "You're not the greatest judge of people, but if you didn't know better you'd say that the Third Officer and Maximilian von Grafenberg know each other from before."},
      {user_id: 9, lead_name: "Chris Gamble",lead_info: "You're sure you saw the Chief Purser faint at the sight of the Captain's body."},
      {user_id: 9, lead_name: "David Whitworth",lead_info: "There's also something slightly odd about David's insistence on supervising the loading and unloading of the cargo. You're sure it's something he could delegate, but he always insists on doing it himself."},
      {user_id: 9, lead_name: "Julia Morteblanca",lead_info: "You know that Julia sells knockout drugs ('Mikey Finns') and she sold one last night to Albert Wiggins."},
      {user_id: 9, lead_name: "Albert Wiggins",lead_info: "To your eyes, Albert has more than a passing resemblance to Maximilian von Grafenberg."},
      {user_id: 10, lead_name: "Brynneth Cawdra",lead_info: "The Chief Engineer obviously doesn't like taking orders from officers younger than him. He's not pleased that Warren is now Captain."},
      {user_id: 10, lead_name: "Jennifer Floreste",lead_info: "You know that Jennifer had her beady eyes on the Captain, before his death. She'll no doubt be drawn to Daniel Warren next. She and Brynneth Cawdra are good friends."},
      {user_id: 10, lead_name: "Eric Lassiter",lead_info: "You should keep an eye on the trainee and make sure he doesn't upset any of the guests - he is a bit slow sometimes."},
      {user_id: 10, lead_name: "Candice Dumlop",lead_info: "Candice claims to be 21, but she seems older than that to you."},
      {user_id: 10, lead_name: "Marie Hati",lead_info: "You sense that there's a lot more to Marie Hati than appears at first glance. She's not just a reporter, you're sure of that."},
      {user_id: 11, lead_name: "Catherine New",lead_info: "Catherine is a cabin stewardess - she's slightly younger than you and this is her first voyage. You like her very much, although her affections appear to be elsewhere."},
      {user_id: 11, lead_name: "Cynthia Petal",lead_info: "The other cabin stewardess - and she seems to know lots about everyone, even the passengers."},
      {user_id: 11, lead_name: "Daniel Warren",lead_info: "The First Officer (and new Captain). Daniel seems very competent, even if he is quite young. You are very happy that he's the new Captain as you don't trust the other officers as much."},
      {user_id: 11, lead_name: "Sasha Alexandrovich Ilyatkin",lead_info: "You saw a revolver in the Russian Minister's cabin - it had some letters carved on it. Perhaps that's the murder weapon!"},
      {user_id: 11, lead_name: "Julia Morteblanca",lead_info: "You know that Julia sometimes sells knockout pills (she calls them 'Mickey Finns') to the passengers. You think she sold one to Abert Wiggins last night."},
      {user_id: 11, lead_name: "Albert Wiggins",lead_info: "To your eyes, Albert has more than a passing resemblance to Third Officer Christina Younger."},
      {user_id: 12, lead_name: "Isabelle Canter",lead_info: "You saw Isabelle leave the scene of the murder in a bit of a hurry after the lights came up."},
      {user_id: 12, lead_name: "Eldon Dumlop II",lead_info: "Rich and eligible - just how you like them. He's married to Candice, but obviously doesn't want to be so perhaps you could comfort him in his hour of need?"},
      {user_id: 12, lead_name: "Elizabeth James",lead_info: "Elizabeth appears to be desperately trying to cheer her father up, and he doesn't appear to want any of it."},
      {user_id: 12, lead_name: "Blaise de Richelieu",lead_info: "You don't think much of the new Master Chef's cooking. Hopefully Blaise will be replaced next voyage."},
      {user_id: 12, lead_name: "Aggie Marbles",lead_info: "You think you heard someone say that Aggie Marbles is something of an amateur detective."},
      {user_id: 13, lead_name: "Sasha Ilyatkin",lead_info: "You should keep a close eye on Sasha to make sure that Russia poses no threat to your German masters."},
      {user_id: 13, lead_name: "Gilbert Ryce",lead_info: "Ryce is a close friend of the American President and appears to have got his job on those grounds alone. He certainly doesn't appear to have any talent for diplomacy."},
      {user_id: 13, lead_name: "Sir Ranulph Royston",lead_info: "You know that there was something very suspicious about the 'riding accident' that killed his wife six months ago."},
      {user_id: 13, lead_name: "Albert Wiggins",lead_info: "To your eyes, Albert has more than a passing resemblance to Maximilian von Grafenberg."},
      {user_id: 14, lead_name: "PJ Nichols",lead_info: "You had heard that PJ had gone to Hollywood to star in a movie. You're not sure which movie, though."},
      {user_id: 14, lead_name: "Sir Ranulph Royston",lead_info: "You've heard your husband mention that there was something suspicious about the 'riding accident' that killed Sir Ranulph's wife six months ago."},
      {user_id: 14, lead_name: "Aggie Marbles",lead_info: "You recognise the name Aggie Marbles - wasn't she that amateur sleuth that solved a murder case? If so you're a bit surprised that she's so young."},
      {user_id: 14, lead_name: "Marie Hati",lead_info: "You  noticed that Marie Hati has a pistol in her handbag. Now what would a reporter want with one of those?"},
      {user_id: 14, lead_name: "Albert Wiggins",lead_info: "Albert is Sir Ranulph Royston's assistant. You saw him talking with Julia Morteblanca last night, and she looked a bit furtive. What was that about?"},
      {user_id: 15, lead_name: "David Whitworth and Isabelle Canter",lead_info: "You're a fairly astute judge of character, and judging by their body language you'd wager that Whitworth and Isabelle Canter have known each other for a while."},
      {user_id: 15, lead_name: "Gilbert Ryce and Wilma Drew",lead_info: "From what you can tell, Ryce is pretty clueless. It's lucky he has such an able assistant in Drew - and unless you're mistaken there's more to their relationship than meets the eye. Which is interesting, because if you remember correctly, Ryce is married."},
      {user_id: 15, lead_name: "Eldon Dumlop II",lead_info: "You've met Dumlop before, at a New York society function. You've heard on the grapevine that Dumlop's father has sent him to England to quietly divorce his new wife, Candice. Apparently the elder Dumlop doesn't approve."},
      {user_id: 15, lead_name: "Armin Oberhausen",lead_info: "You wouldn't want to be in von Grafenberg's shoes - you wouldn't trust an assistant like Armin one inch."},
      {user_id: 16, lead_name: "Chris Gamble",lead_info: "You're sure you saw the Chief Purser faint when the lights came on and revealed the Captain's body."},
      {user_id: 16, lead_name: "Isabelle Canter",lead_info: "You noticed that during the confusion, Isabelle left the ballroom when the lights came up - but she appeared shortly afterwards. She looked quite pleased with herself."},
      {user_id: 16, lead_name: "Wilma Drew",lead_info: "Wilma is Gilbert Ryce's assistant, and while Gilbert seems a bit dreamy, Wilma is obviously very sharp. If you are going to get Gilbert to sign any munitions export licences, it's probably best done out of Wilma's sight."},
      {user_id: 16, lead_name: "Elizabeth James",lead_info: "Elizabeth does not appear to have noticed that Sir Ranulph (her father) isn't at all pleased at the attention she gives him. You're sure that he'd much rather be left alone."},
      {user_id: 16, lead_name: "Sir Rory Canter",lead_info: "After the lights came up and you headed on to deck, you bumped into Sir Rory coming out of the telegraph office. He said that he had gone to send a telegraph but found it broken."},
      {user_id: 17, lead_name: "Chris Gamble",lead_info: "You're sure you saw the Chief Purser faint when the lights came on and revealed the Captain's body."},
      {user_id: 17, lead_name: "Sir Ranulph Royston",lead_info: "You've always thought that there was something suspicious about the 'riding accident' that killed Sir Ranulph's wife six months ago."},
      {user_id: 17, lead_name: "Wilma Drew",lead_info: "Unless you're very mistaken, Wilma has a real crush on her boss, Gilbert Ryce."},
      {user_id: 17, lead_name: "Maximilian von Grafenberg",lead_info: "You've heard the name before - ah yes. He must be the von Grafenberg one accused of corruption a couple of years ago. You're surprised he still has his job - how can anyone trust him now?"},
      {user_id: 17, lead_name: "Aggie Marbles",lead_info: "You recognise the name Aggie Marbles - wasn't she that amateur sleuth that solved a murder case? If so you're a bit surprised that she's so young."},
      {user_id: 18, lead_name: "Elizabeth James",lead_info: "You've heard that Elizabeth hired some very expensive lawyers to arrange for her divorce - no doubt her father paid for them. Elizabeth is obviously enjoying looking after her father. The same can't be said for him, though."},
      {user_id: 18, lead_name: "Eldon Dumlop II",lead_info: "You feel you should congratulate Eldon on his marriage and his delightful wife. You're a bit surprised that you didn't read anything about it in the papers, though. Is there some reason it's been kept quiet?"},
      {user_id: 18, lead_name: "Candice Dumlop",lead_info: "Candice claims to be 21, but she seems older than that to you."},
      {user_id: 18, lead_name: "Sasha Ilyatkin",lead_info: "The Russian minister has a gun! Earlier in the voyage you passed Sasha's cabin while the door was open and you noticed it beside the bed."},
      {user_id: 18, lead_name: "Vic Hammerstein",lead_info: "Vic is the Libertainia's Entertainments Officer - Vic might be a good person to talk to about Jennifer's contract."},
      {user_id: 19, lead_name: "Eldon Dumlop II",lead_info: "You know Eldon well - he's like a nephew to you. (You know his family.) You're not sure what he's doing here, though."},
      {user_id: 19, lead_name: "Blaise de Richelieu",lead_info: "One of the selling points of the Libertania was her new Master Chef. Well, de Richelieu's cooking certainly isn't anything to write home about - you hope they aren't paying very much."},
      {user_id: 19, lead_name: "Christina Younger",lead_info: "You're not the greatest judge of people, but if you didn't know better you'd say that the Third Officer and Maximilian von Grafenberg know each other from before. Perhaps she was involved in that vice scandal that von Grafenberg was mixed up in a couple of years ago."},
      {user_id: 19, lead_name: "Elizabeth James",lead_info: "Elizabeth does not appear to have noticed that Sir Ranulph (her father) isn't at all pleased at the attention she gives him. You're sure that he'd much rather be left alone."},
      {user_id: 19, lead_name: "David Whitworth and Marie Hati",lead_info: "Both were at Captain Bayard's private lunch when the Captain broke the news of the war to you and the Germans."},
      {user_id: 20, lead_name: "Chris Gamble",lead_info: "You're sure you saw the Chief Purser faint when the lights came on and revealed the Captain's body."},
      {user_id: 20, lead_name: "Christina Younger",lead_info: "You're pleased to see a woman in a senior position such as Third Officer. Perhaps with the Captain dead she will be promoted even higher."},
      {user_id: 20, lead_name: "Candice Dumlop",lead_info: "You've heard on the grapevine that Candice conned Eldon into marrying her so that she would have access to his wealth."},
      {user_id: 20, lead_name: "David Whitworth, Marie Hati and Catherine New",lead_info: "All were at Captain Bayard's private lunch when the Captain broke the news of the war to you and the Germans. David and Marie were eating, while Catherine was serving."},
      {user_id: 20, lead_name: "Marie Hati",lead_info: "You've been told that Marie is more than just a reporter - she's a spy working for your government. She may be able to help you."},
      {user_id: 21, lead_name: "Sir Rory Canter",lead_info: "You have been friends with Sir Rory for a while now (you go to the same London club). His wife is one of the fillies you'd like to gallivant about with - you remember seeing her as a fan dancer some years ago!"},
      {user_id: 21, lead_name: "Christina Younger",lead_info: "A woman Third Officer - how preposterous! Women aren't temperamentally suited for the responsibility of being an officer - you should make sure that the other officers are aware of the risks of promoting a woman."},
      {user_id: 21, lead_name: "Eldon Dumlop II",lead_info: "You've met Dumlop before, at a New York society function. You've heard on the grapevine that Dumlop's father has sent him to England to quietly divorce his new wife, Candice. Apparently the elder Dumlop doesn't approve."},
      {user_id: 21, lead_name: "Marie Hati",lead_info: "You vaguely remember coming across Marie's name somewhere in an intelligence briefing. But you can't remember in what context - perhaps Wiggins can remember?"},
      {user_id: 22, lead_name: "Albert Wiggins",lead_info: "Albert is your father's assistant and is very eager to please your father."},
      {user_id: 22, lead_name: "Eric Lassiter",lead_info: "The trainee steward seems a bit simple - or perhaps he's just slow. He seems keen to please, though."},
      {user_id: 22, lead_name: "Wilma Drew",lead_info: "Unless you're very mistaken, Wilma has a real crush on her boss, Gilbert Ryce."},
      {user_id: 22, lead_name: "PJ Nichols",lead_info: "You had heard that PJ had gone to Hollywood to star in a movie. You're not sure which movie, though."},
      {user_id: 22, lead_name: "Catherine New",lead_info: "You've seen Catherine New give David Whitworth longing looks - it looks to you like she's in love with him. He's a bit old for her, though."},
      {user_id: 22, lead_name: "Candice Dumlop",lead_info: "Candice claims to be 21, but she seems older than that to you."},
      {user_id: 23, lead_name: "Gilbert Ryce and Wilma Drew",lead_info: "At the Captain's private lunch, when the Captain announced that war had been declared, you noticed that Gilbert Ryce seem to hold Wilma Drew's hand in shock for far longer than was absolutely necessary! Isn't Ryce married?"},
      {user_id: 23, lead_name: "Christina Younger",lead_info: "What a coincidence! Christina, the young slip of a girl you had an affair with twenty years ago, is working aboard the Libertania! You'd better make sure that she doesn't make any trouble for you - not while Armin is here."},
      {user_id: 23, lead_name: "Sasha Ilyatkin",lead_info: "You should keep a close eye on Sasha to make sure that Russia poses no threat to Germany."},
      {user_id: 23, lead_name: "Marie Hati",lead_info: "You've been told that Marie is more than just a reporter - she's a spy working for your government. She may be able to help you."},
      {user_id: 23, lead_name: "Aggie Marbles",lead_info: "You recognise the name Aggie Marbles - wasn't she that amateur sleuth that solved a murder case? If so you're a bit surprised that she's so young."},
      {user_id: 24, lead_name: "Eldon Dumlop II",lead_info: "You've met Dumlop before, at a New York society function. You've heard on the grapevine that Dumlop's father has sent him to England to quietly divorce his new wife, Candice. Apparently the elder Dumlop doesn't approve."},
      {user_id: 24, lead_name: "Candice Dumlop",lead_info: "Candice claims to be 21, but she seems older than that to you."},
      {user_id: 24, lead_name: "David Whitworth and Marie Hati",lead_info: "Both were at Captain Bayard's private lunch when the Captain broke the news of the war to you and the Americans."},
      {user_id: 24, lead_name: "Marie Hati",lead_info: "You have been briefed that she is a spy working for Germany."},
      {user_id: 24, lead_name: "Reiner Tannhauser",lead_info: "Reiner is a member of the crew (an engineer you believe) and also a German national. He may make a useful ally on board - you should try to recruit him to help you further your goals."},
      {user_id: 25, lead_name: "Sir Ranulph Royston",lead_info: "You've heard a whisper that there might be something suspicious about the 'riding accident' that killed Sir Ranulph's wife six months ago."},
      {user_id: 25, lead_name: "Gilbert Ryce",lead_info: "From the conversations you've had with him, you're not convinced that the Secretary of State has a firm grasp on matters. You're intrigued that he hasn't brought his wife with him this time."},
      {user_id: 25, lead_name: "Blaise de Richelieu",lead_info: "You're pretty sure that the new 'Master Chef' is actually a spy. The cooking certainly isn't up to much."},
      {user_id: 25, lead_name: "Cynthia Petal",lead_info: "You've heard the stewardess sing as she goes about her duties. She has a lovely singing voice."},
      {user_id: 25, lead_name: "Marie Hati",lead_info: "You've been briefed that Marie is a French spy."},
      {user_id: 25, lead_name: "Albert Wiggins",lead_info: "To your eyes, Albert has more than a passing resemblance to Maximilian von Grafenberg."},
      {user_id: 26, lead_name: "Gilbert Ryce",lead_info: "You know Ryce from old - he's almost like an uncle to you. (He's an old family friend.) You can always turn to him in times of trouble. He's the best Secretary of State that your country has ever had."},
      {user_id: 26, lead_name: "Marie Hati",lead_info: "A French reporter for Le Monde. Best steer clear of her!"},
      {user_id: 26, lead_name: "Sir Ranulph Royston",lead_info: "You've met Royston previously, at a society do. You've not met his delightful daughter, Elizabeth, before."},
      {user_id: 26, lead_name: "Maximilian von Grafenberg",lead_info: "You've heard the name before - ah yes. He must be that von Grafenberg, the one accused of corruption a couple of years ago. You're surprised he still has his job - how can anyone trust him now?"},
      {user_id: 27, lead_name: "The Canters",lead_info: "Sir Rory is seriously rich. According to Agency reports his wife was an exotic fan dancer before meeting Sir Rory."},
      {user_id: 27, lead_name: "The Finkelsteins",lead_info: "You should keep an eye on the Finkelsteins as they will no doubt be selling their munitions to everyone. Still, they won't be able to export anything without a licence."},
      {user_id: 27, lead_name: "Daniel Warren",lead_info: "Warren seems like a reliable chap, perhaps he could help you. You don't think he's the agent, but it might be useful to have him on your side."},
      {user_id: 27, lead_name: "Marie Hati",lead_info: "You've been told that Marie is more than just a reporter - she's a spy working for your government. She may be able to help you."},
      {user_id: 28, lead_name: "The Finkelsteins",lead_info: "While you expected Jeremiah to be the aggressive businessman, it appears that he just wants a quiet life while his wife, Rachel, is the real financial tigress and appears eager to sell munitions to either side."},
      {user_id: 28, lead_name: "David Whitworth and Isobelle Canter",lead_info: "You're a fairly astute judge of character, and judging by their body language you'd wager that Whitworth and Isobelle Canter have known each other for a while."},
      {user_id: 28, lead_name: "Gilbert Ryce and Wilma Drew",lead_info: "From what you can tell, Ryce is pretty clueless. It's lucky he has such an able assistant in Drew - and unless you're mistaken there's more to their relationship than meets the eye. Which is interesting, because if you remember correctly, Ryce is married."},
      {user_id: 28, lead_name: "Sir Rory Canter",lead_info: "You saw Sir Rory head in the direction of the telegraph office shortly after the lights came up."},
      {user_id: 28, lead_name: "Albert Wiggins",lead_info: "Albert is Sir Ranulph Royston's assistant. You saw him with Julia Morteblanca last night, and she looked a bit furtive as she handed him something small."},
      {user_id: 29, lead_name: "Christina Younger",lead_info: "You're really pleased to see that Christina has risen to such a senior position aboard the Libertania - she's a real inspiration to other women."},
      {user_id: 29, lead_name: "Wilma Drew",lead_info: "Unless you're very mistaken, Wilma is having an affair with her boss, Gilbert Ryce."},
      {user_id: 29, lead_name: "PJ Nichols",lead_info: "You had heard that PJ had gone to Hollywood to star in a movie. You're not sure which movie, though."},
      {user_id: 29, lead_name: "Candice Dumlop",lead_info: "Candice claims to be 21, but she seems older than that to you."},
      {user_id: 29, lead_name: "Elizabeth James",lead_info: "You've heard that Elizabeth hired some very expensive lawyers to arrange for her divorce - no doubt her father paid for them. Elizabeth is obviously enjoying looking after her father. The same can't be said for him, though."},
      {user_id: 29, lead_name: "Blaise de Richelieu",lead_info: "The food on the Libertania hasn't been particularly good, and you expected more from the 'Master Chef'. Perhaps something is going on."},
      ])
