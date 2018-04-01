# an awesome .plan

so, this morning i was thinking more about how i want to try consensus-based, world state authority by [rafting](https://raft.github.io/) clients together.  because, not having a runtime server for an virtual world is a sticky problem to solve.

which means i'm puttering around, digging for inspiration, and i found a new, sweet-looking mmo architecture book!  it's called [Development and Deployment of Multiplayer Online Games, Vol. I: Gdd, Authoritative Servers, Communications (Development and Deployment of Multiplayer Games) ](https://smile.amazon.com/gp/product/3903213063/ref=pe_354120_277987370_em_1p_2_ti) -- obvs, a freaking mouthful but whatever.

digging through the tables of contents, it actually looks really good.  it seems like it's got a well-enumerated list of commonly-known-but-rarely-documented tribal knowledge.  i'm actually pretty excited about it.  mostly because a) there's strong confirmation bias of how my mmo mental model works after all these years, and b) it's a documented list of stuff that i always forget until the subject comes up.  "oh yeah, that doesn't actually work like that.  it should be done like this.  sorry, i totally should have mentioned that!  oops!"

man, sometimes having a shitty memory sucks.

---

also, during my digging, i found a presentation for c4 -- i'd heard of it, but haven't ever taken the time to dig in.  might be useful for wrapping vocabulary around difficult-to-explain concepts.

there's a youtube of [simon brown talking about it](https://www.youtube.com/watch?v=m76bR16EhrU).

seemed useful.

---

while we're on the subject of inspiration, i just found a pretty nifty blog called [engines of delight](https://gameserverarchitecture.com/) with -- again -- lots of confirmation bias.  probably because it looks like mathew walker has worked in a lot of the same places with the people who taught me much of what i know about virtual world architecture.  cool.

---

man.  so, yesterday, i ran into a signal-processing bug with my little starter experience example.  the gobs (game objects) are recieving and processing the `setup` signal, but when they throw their animations on the stack, the animation system isn't processing them for some reason.  it looks like i've got to walk through all the async code to find the bug.

which explains why i'm watching videos about documenting software architecture instead, eh?  heh.

