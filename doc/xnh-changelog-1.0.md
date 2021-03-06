## xNetHack 1.0 Changelog

This is the first version of xNetHack, forked off the NetHack 3.6.1
development version. See doc/fixes36.1 for the devteam's changes.

The xNetHack page at the NetHackWiki, https://nethackwiki.com/wiki/XNetHack,
attempts to describe these changes in a way that's better formatted and more
friendly to players. However, it might be out of date; in case of conflicting
information, this changelog is more up-to-date than the wiki page, and the
commit messages are more up-to-date than this changelog.

On top of any changes made by the NetHack devteam on 3.6.1, xNetHack 1.0
contains the following changes:

### Gameplay changes

- Add "artifactless" conduct: never touch an artifact (14th bit of xlogfile
  conduct).
- Add "petless" conduct: zero tame monsters the whole game (13th bit of
  xlogfile conduct).
- Change magic traps' taming effect to pacification.
- Bribing demons demand 50d500 gold, regardless of what the hero is carrying,
  and may be successfully shortchanged depending on the hero's Charisma.
- 7% of objects in hardware stones are touchstones.
- Exploding bag of holding scatters 12/13 of its contents instead of destroying
  them outright.
- Generate a lot more monsters when a level is created, and slow down the
  normal generation rates.
- Add a barricaded shop with an alive shopkeeper to Orcish Town, and scatter
  around a lot of gear that should be dropped by the dead denizens.
- Drop the XL threshold for the Quest to 10.
- Wielding a mirror confers a 50% chance of reflecting any reflectable attack.
- Add the Gnomish Sewer Mines' End (dark twisty water level with many rings).
- Remove random chance of extra-powerful poison (instadeath in vanilla) from
  all poison sources.
- Scroll of light now gives 11 radius when uncursed and lights up the entire
  level when blessed.
- Scroll of teleport now gives a controlled teleport when blessed.
- Make scroll of remove curse type-IDed when one successfully changes the
  beatitude of items in inventory.
- Green slimes have an engulfing attack that starts sliming.
- Candle light radius is now sqrt(x)+1 instead of log_7(x)+1.
- Non-spiked pits occasionally generate in graveyards, and they are flavored as
  open graves.
- Remove the mysterious force.
- Blessed scroll of destroy armor asks the player which piece of armor to
  destroy.
- You can rub rocks together or on touchstones to break them, occasionally
  producing flint stones.
- Flint stones' weight is reduced to 1 aum.
- Orc-captains are considered a lord to their kind, and their speed is
  increased from 5 to 9.
- The wand of speed monster on the player gives temporary very fast speed but
  not intrinsic speed.
- The potion of speed gives intrinsic speed and a short duration of very fast
  speed.
- Remove spell failure; instead, Pw cost is divided by what the success rate
  would have been.
- Wielding a spellbook cuts the Pw cost of casting its spell in half.
- The amulet of life saving does not work if the player is polymorphed into a
  nonliving form.
- Occasionally when you die to vampires, green slimes, mummies, or anything
  else that would have made you arise from the grave, you turn into that
  monster but retain your sanity, and continue playing with permanent intrinsic
  unchanging.
- The player can now displace peaceful monsters (with a few small exceptions:
  Oracle, shopkeepers, priests, quest leader).
- Add thiefstones, a gray stone which steals magic items and treasure back to a
  location on the level it generates. If the player tracks it down and removes
  its curse, they can use it to their own benefit.
- Unicorn horn is a poorer weapon (1d8/1d10), and no longer restores lost
  ability points, but is made one-handed and applies itself passively if
  wielded in the bare main hand.
- Potions may be #dipped in sinks to pour them down the drain, causing the hero
  to suffer its vapor effects.
- Add vapor effects for all potions, and make most of them unambiguously
  identify the potion.
- Rebalance spellbook failure effects; notably a failure causes confusion
  instead of paralysis, and paralysis only happens as a side effect of level 5+
  books. The steal gold effect is also replaced with the book biting you. A new
  level 1+ effect is the book dropping one level in BUC.
- Spellbooks disintegrate if and only if they are already cursed.
- Blessed and cursed spellbooks act as +/- 10 Int, instead of guaranteeing
  success and failure.
- Ghosts of Dudley can now be encountered.
- Magic lamps can be wished for.
- Throw out the complicated spellbook delay formula; all spellbook delays are
  now 10\*level.
- Chargeable rings will never generate at +0.
- "Klunk!" from kicking a sink is less likely.
- "Flupp!" effect from kicking a sink will dislodge and spit up one ring buried
  under the sink.
- All sinks on non-special levels now generate with one ring buried beneath them
- Dropping a ring down a sink has an 80% chance of being buried beneath it,
  rather than 20%.
- Confused scroll of light will conjure several tame cancelled lights, which
  cannot explode but are useful as a light source. Will be yellow lights if
  non-cursed and black lights if cursed.
- Treasure zoos generate only animal monsters.
- Wielding a quarterstaff or wand of nothing reduces the Pw cost of a spell
  just like a robe would do, and not stacking with it. Wielding a wand that
  corresponds to a certain spell (e.g. wand of death for the finger of death
  spell) does the same thing, but for that spell only.
- All roles now have a standardized "cutoff level" of 12 for maxHP and maxPw
  gains.
- Scrolls of identify always identify 7/4/1 items for B/U/C; full inventory ID
  is no longer possible from scroll.
- Throne insight always gives a full inventory identify.
- Spell of identify is removed.
- Replace the KABOOM!! door trap with several different interesting traps that
  scale with dungeon level: screeching hinges, self-locking mechanisms,
  statically charged doorknob, falling bucket of water, removed hinges, boulder
  dropping out of the ceiling, hot doorknob, and fiery explosion.
- Hitting a gremlin with light will anger it.
- Add ring of carrying: chargeable 200zm ring that increases or decreases
  carrying capacity by 5% per enchantment.
- Change can of grease material to plastic and color it bright blue.
- Change hexagonal wand material to quartz (gemstone).
- Potions of oil cannot be diluted.
- Uncursed food no longer gives "Blecch! Rotten food!"; cram and lembas never
  do even when cursed.
- Spellbooks of cure blindness, invisibility, and detect food no longer
  randomly generate (can still be wished for or written).
- Change some spell levels:
  - Dig: 5 -> 3
  - Detect monsters: 1 -> 3
  - Clairvoyance: 3 -> 2
  - Charm monster: 3 -> 6
  - Detect unseen: 3 -> 2
  - Turn undead: 6 -> 2
  - Jumping: 1 -> 2
- Dwarvish and Uruk-hai shields count as bulky.
- Replace old spell formula with a more straightforward one; see the xNetHack
  wiki page for details.
- Upper Mines levels are always lit; Lower Mines levels are always dark.
- Use a new, more continuous, Pw regeneration formula from FIQHack (see commit
  56c5bbbb).
- Wizards get four spellbooks in starting inventory (force bolt, magic missile,
  and two random). This replaces the scrolls, potions, rings and wand they
  previously started with.
- Shriekers will spawn a baby purple worm if regular purple worms are too hard.
- Scalpels do 1d5 damage versus small and 1d7 versus large monsters.
- Land mine weight is reduced to 40; beartrap weight is reduced to 50.
- Rangers start the game with two beartraps.
- 1/40 of random non-artifact weapons generate erodeproof.
- The player does not trigger rolling boulder traps unless on the ground.
- Add iron doors: they mostly act like normal doors, able to be opened, closed,
  locked, unlocked, and untrapped like wooden doors, but they cannot be
  destroyed by brute force. They render as cyan instead of brown, and random
  doors on filler levels with higher than 10 difficulty may be generated as
  iron.
- Convert several Castle doors to iron.
- Certain appropriate kinds of traps (those that can be triggered by closing as
  well as opening) can generate on doors that generate in the "open" state.
- Pets may no longer be displaced (and untamed) out of traps.
- Pets now refuse to be displaced into bad terrain (a trap that harms them, or
  liquid).
- Hitting a gold golem with a blessed thiefstone (only if thrown due to a bug)
  will teleport that golem to the keyed location. Works on players polyselfed
  into gold golems. Does not work on a monster carrying the Amulet.
- Rare candy from Pokemon; when you eat a candy bar there is a 1% chance of
  gaining a level.
- Spiders have a small probability of spinning a web with each step they take.
  This chance is doubled if it is in a doorway. If you observe this happen, the
  web is identified.
- Stinking clouds expand to fit their terrain rather than using a rhombus
  shape. Be careful with them in confined spaces.
- If the player has followed petless conduct, the guardian angel on Astral will
  spawn peaceful rather than tame.
- The Astral Plane is fully lit.
- Rogues start with thiefstones identified (but they don't get one in
  inventory).
- Allow tins to be read (you read the label). On 1/5 of labeled tins it tells
  you the contents honestly, otherwise it will give a random false label. Tins
  made by the player are not labeled.
- Rebalance some starting attributes and distributions. Healers have higher
  Int, lower Wis, and lower Cha, Monks have higher Wis, and Priests have higher
  Int. Priests' Int and Wis distributions are now equal.
- Polymorph traps disappear whenever they polymorph anything, not just the
  player.
- Random doors are secret less of the time. No doors on the first three levels
  will be secret, and the chance of secret doors remains well below vanilla
  levels for most of the Dungeons of Doom.

### Interface changes

- Using the open command to target "." (self) is an alias for #loot.
- When you ascend with a non-starting alignment, the end-of-game reason is
  "ascended (in dishonor)".
- The Ranger pantheon changes Mercury (lawful) to Apollo and Venus (neutral) to
  Diana.
- Sinks render as blue \, drawbridges as orange +.
- Recolor royal jelly to magenta.
- Whenever monsters polymorph in sight of the hero, print a message saying what
  they turned into.
- After sacrificing the Amulet to Moloch, you get flavor text of an invisible
  choir chanting in Latin and being bathed in darkness.
- Correct "Thou cannot escape my wrath, mortal!" to "canst not".
- Priests will give you bitcoins for an ale while hallucinating.
- After being crowned, thrones give you the "very comfortable here" message.
- Paying exactly 1/10 of your gold to a priest will "pay your tithe".
- Port monster lookup from FIQHack: when you are looking up a specific monster
  in the encyclopedia, a full description of its stats, abilities, and attacks
  will be shown above the encyclopedia entry.
- The Candelabrum reads (n/7 candles attached) to make explicit that it holds 7
  candles.
- Gravestone color is now white; this probably doesn't matter for a lot of
  fonts.
- Implement object lookup: when you are looking up a specific object in the
  encyclopedia, a full description of its stats and other properties will be
  shown above the encyclopedia entry.
- Bones levels now have a level sound: the same "eerie feeling" as in walking
  into an abandoned temple.
- Move the entire ":" monster class, lizards, to "l" (leprechauns are displaced
  to green "i").
- Move the entire " " monster class, ghosts, to "W".
- Move bugbears from the "h" monster class to the "o" monster class.
- Recolor many monsters:
  - Werejackals are green, wererats are yellow, and werewolves are orange, in
    both their human and were forms.
  - Wolves are recolored from brown to gray.
  - Wargs are recolored from brown to black.
  - Floating eyes are recolored from blue to cyan, and there was much
    rejoicing.
  - Mind flayers are recolored from magenta to cyan.
  - Master mind flayers are recolored from magenta to bright cyan.
  - Kobolds (and mummies and zombies thereof) are recolored from brown to gray.
  - Titanotheres are recolored from gray to yellow.
  - Baluchitheria are recolored from gray to orange.
  - Giant rats are recolored from brown to red.
  - Rabid rats are recolored from brown to green.
  - Aleaxes are recolored from yellow to gray.
  - Shriekers are recolored from magenta to bright magenta.
  - Minotaurs are recolored from brown to orange.
  - Arch-liches are recolored from magenta to bright magenta.
  - Gnome mummies are recolored from red to brown.
  - Orc mummies (and orc zombies and the "orc" monster) are recolored from gray
    to blue.
  - Mordor orcs are recolored to red.
  - Human mummies are recolored from gray to white.
  - Ettins, ettin mummies, and ettin zombies are recolored from brown to
    yellow.
  - Cobras are recolored from blue to bright blue.
  - Owlbears are recolored from brown to orange.
  - Sasquatches are moved from gray to red.
  - "Boss" monsters (Wizard of Yendor, all demon lords, and the Riders) are
    recolored from magenta to bright magenta.
  - Imps are recolored from red to orange.
  - Kops are recolored according to their equivalent Yendorian Army ranks.
  - Erinyes are recolored from red to green.
  - Barbed devils are recolored from red to cyan.
  - Mariliths are recolored from red to bright cyan.
  - Vrocks are recolored from red to orange.
  - Nalfeshnees are recolored from red to bright blue.
  - Pit fiends are recolored from red to black.
  - Piranhas are recolored from red to orange.
  - Geckos are recolored from green to bright green.
  - Crocodiles and baby crocodiles are recolored from brown to red.
  - Chameleons (in their default form) are recolored from brown to gray.
  - Fiery monsters (fire giants, fire vortices, fire elementals) are changed
    from yellow to red.
  - Ghosts are recolored from nothing to white.
  - Shades are recolored from nothing to black.
  - Wraiths are recolored from black to gray.
  - Barrow wights are recolored from gray to bright blue.
  - Acid blobs are recolored to bright green.
- It is now impossible to enter water or lava unless you are impaired, know you
  are safe, or use the 'm' command.
- Add "swim" to the list of paranoid_confirmation options. When enabled, you
  will be prompted before unsafely entering water when you try to move there
  with the 'm' command.
- Add "trap" to the list of paranoid_confirmation options, and always prompt
  before stepping onto a trap, unless impaired, or unless the player is
  obviously immune to the trap's effects.
- Merge FIQ's getobj patch: more developer-customizable prompts for objects,
  and these prompts also accept , representing "object or dungeon feature on
  the floor".
- Water walking boots self-identify if they obviously prevent you from entering
  water. If they prevent you from entering lava, their fireproofness is also
  identified.
- Branch stairs are colored yellow.
- Engravings display visibly on the floor when you are able to see them. The
  default symbol is " but it may be set manually via S_engraving. A new
  engraving tile is also added to the default tileset.
- Add some thiefstone-related true and false rumors.
- Reference the famous Monty Hall Problem on the two dud Sokoban engravings.
- Pressing Escape while being held or engulfed by a monster gives "You cannot
  escape from the monster!" YAFM.
- Death rises from a "short nap" instead of "the dead" when reincarnating.
- The invisible choir is "visible" if you ascend while seeing invisible.

### Architectural changes

- Priest quest and Castle use FLAGS:graveyard instead of hardcoding in source.
- Object probabilities no longer have to add up to 1000 for each object class.
- Add two new coordinates to struct obj (to allow thiefstones to migrate to a
  certain spot).
- Touchstones are no longer a magical item.
- Valley entrance message is moved into gehennom.des instead of hardcoding.
- Move most paralysis sources into a new make_paralyzed function.
- Refactor testing for whether an object has a specific randomized description
  into a new function objdescr_is().
- Rename cost() to ink_cost().
- Remove enermod() function since it was only being called in one place.
- Comprehensive doors overhaul: "locked" and "trapped" are no longer separate
  states, but simply flags; actual state of a door (none, broken, open, closed)
  are reduced to 2 bits, freeing up one bit for later use.
- The b_trapped and mb_trapped are removed; the new door traps make them
  unused.
- Import livelogging, dgamelaunch simplemail, and dgamelaunch extrainfo.
- impossible() now asks the player to report the message to the developer.
- Add immune_to_trap() function which works symmetrically on monsters and
  players. Currently used only in conjunction with paranoid trap mechanics, but
  intended to be used for monster AI in the future.
- Merge a lot of (is_floater() || is_flyer() || is_clinger()) logic into a new
  !grounded() macro, which cleans up some edge cases that weren't previously
  covered.
- Add incomplete "material" field to the wish parser. Predecessor of object
  materials, perhaps?.
- Create coord_hash function for deterministic hashing of xyz coordinates.
- Allow engravings in des files to specify random instead of a literal string;
  this will generate regular random engraving text.
- Allow get_rnd_text to choose a specific byte offset in the file.
- Add up_all_words() as a library function: it turns "string-thing like this"
  into "String-thing Like This".
- Create hash1() function: same logic as coord_hash, but only 1 parameter
  instead of 3.
- Full documentation of all level generation code except for sp_lev.c.

