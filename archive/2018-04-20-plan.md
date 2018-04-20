# an awesome .plan

#### if you're looking for my previous days, check the archives.

---

while i was taking my oldest to school this morning, on the drive home, i was running through a fun game idea for decentraland.  i wanted to take my supernatural steampunk mahjong-like game and push it into dcl.

it's very crypto-collectible friendly.  with chunky, 3d, physical pieces you stack to play with -- as opposed to something 2d like a card.  it should mix well.

the ip is fun.  it's got 4 tile factions (plus factionless equipment tiles) -- humans, werewolves, vampires, and zombies.  each with their own flavor and strengths.  werewolves are about buffs, vampires about control, zombies about debuffs.  and humans can do everything, but it's just more expensive.

in my head, the early game is about collecting and building tilesets.  practice and one-on-one battling other players.  late game becomes more faction-territory-focused -- rival gangs, strength in numbers (save those commons!), stuff like that.

i think it can be a pretty sweet game.  i'll have to keep it top of mind.

![grigori stones gameboard](https://m3mnoch.com/static/images/grigori-stones/presskit/sss_gameboard_detail.png)

---

now, i can't get my mind out of the design mode.  i finished deploying the air-swimming shark to my parcel, built out the partner content application form, and now i'm totally sitting here dreaming up ways to abstract game content.

meaning, i think i want to make blank-canvas crypto-game assets.

lemme explain.

the other day, i wrote up a bit of description around how i suspected a "[game asset interchange](https://github.com/m3mnoch/.plan/blob/master/archive/2018-04-15-plan.md)" format would look.  this kind of riffs on that -- by actually creating some starter assets and character creation features.

it started when i was thinking about how i'd reuse my cryptokitties in a different game.  like, how i'd map all their cattributes to things like `speed` or `constitution` or stuff like that.  then, i was all, "wait a minute!  why not design an asset with those attributes, but taking the same abstraction concept i was thinking about for the item interchange format.  then, i can just define a generic play asset and it can be mapped across different games.

but, without being in a game of its own first.

for example, why not have an asset like this:

```
{
    "attributes": {
        "size": 94,
        "faction": 52,
        "colors": {
            "primary": "green",
            "secondary": "brown"
        },
        "narrative": ["gentle", "wanderer", "earth"],
        "pools": {
            "vitality": 85,
            "mana": 21,
            "absorbtion": 63
        },
        "traits": {
            "reputation": 19,
            "escape": 21,
            "fortitude": 92,
            "willpower": 28
        },
        "stats": {
            "str": 88,
            "dex": 21,
            "con": 60,
            "int": 21,
            "wis": 33,
            "cha": 28
        }
    },
    "abilities": {
        "martial": {
            "slashing-weapons": {
                "stat": "str",
                "opposed": "dodge",
                "value": 39
            },
            "dodge": {
                "stat": "dex",
                "opposed": "dodge",
                "value": 27
            },
            "unarmed-combat": {
                "stat": "str",
                "opposed": "unarmed-combat",
                "value": 67
            },
            [. . . etc.]
        },
        "performance": {
            "acting": {
                "stat": "cha",
                "opposed": "willpower",
                "value": 22
            },
            "instruments": {
                "stat": "dex",
                "opposed": "willpower",
                "value": 24
            },
            "storytelling": {
                "stat": "cha",
                "opposed": "willpower",
                "value": 15
            },
            [. . . etc.]
        },
        [. . . etc.]
    }
}
```

NOTE:  all numbers are percentages.  representing values from the weakest/smallest in your game, all the way to the max value.  these would represent the asset's default inclinations.  beyond that, you can add/subtract whatever based on your game's needs.

kk.  i gotta run now, but i'm feelin' this now.  if i can get what's in my head out on the page, i think this could be super, super cool.
