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
  {email: "u@email.com", password: "VsVri2w1", faction_id: "2", role: "member", character: "", title: "Maximilian’s assistant, 39.", tagline: "Armin is ambitious and some say fancies the Maximilian’s job."},
  {email: "v@email.com", password: "woWcpXUb", faction_id: "2", role: "member", character: "Sasha Alexanderovich Ilyatkin", title: "Russian Minister, 45", tagline: "Sasha was in New York to sign trade agreements with the American Government."},
  {email: "w@email.com", password: "39tlUhD6", faction_id: "2", role: "member", character: "Eldon Dumlop II", title: "American socialite, 47", tagline: "Rich American heir to the Dumlop rubber fortune."},
  {email: "x@email.com", password: "5cyD4sR9", faction_id: "2", role: "member", character: "Candice Dumlop", title: "American socialite and Eldon’s wife, 21", tagline: "Very glamorous and flirtatious rich American."},
  {email: "y@email.com", password: "t7j05zfr", faction_id: "2", role: "member", character: "Marie Hati", title: "French journalist, 40", tagline: "Writes passionate columnes for Le Monde, demanding equal rights for women, and increased spending on hospitals."},
  {email: "z@email.com", password: "1ullA682", faction_id: "2", role: "member", character: "Aggie Marbles", title: "American, 26", tagline: "Aggie is travelling with the Finkelsteins. She has made a name for herself as an amateur sleuth."},
  ])
