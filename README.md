# an awesome .plan

#### if you're looking for my previous days, check the archives.

---

so, i was talking to my friend [andi](https://www.linkedin.com/in/andismithers/) and two interesting things came out of it.

1) he helped me with advice on how to optimize that distance check yesterday.

> hey chris.. I think you'll find that doing vector operations and not reducing them into individuals.. t = targetPosition - cannonballPosition; if (t.dot(t) < radius*radius) would actually work better. as a vector.. even then t.x*t.x + t.y*t.y+t.z*t.z < radius*radius as individual..

which is great.  i should have used vectors, but i was just splatting stuff down.  besides, in all my javascript years (going back to the late 90s), i've never actually used vectors with javascript, much less typescript.

c#?  check.

as?  check.

haxe?  check.

js?  nope.

anyway . . . i digress.

2) it made me think about the crazy nature of today's big blockchain projects (for example, the [proof-of-work](https://proofofwork.substack.com/) list) and their open source nature.  

in the old days, open source software was written by volunteers, so they were begging for time and visibility.  with the ico phenomenon, we've now got a few projects that are basically like oss that's had a super-successful kickstarter.

which means, radical transparency is important for the ico investors' mental health.  heh.

---

this new sdk drop -- a closer version to what we're releasing soon -- is so awesome.  it's got jsx-style pieces that i'm working into my starter game framework.  i'll probably drop in an interactive item example, too.

you can see the old ones here: https://github.com/decentraland/sample-scenes

---

heh.  i just noticed.  i've got slack, discord, whatsapp, telegram, and a google hangouts window -- all open.

---

we had web 1.0 -- look!  hotmetal wizards!

we had web 2.0 -- look!  fancy personalization!

welcome to web 3.0 -- look!  decentralized infrastructure!

https://hackernoon.com/crossing-over-to-web3-an-introduction-to-decentralised-development-5eb09e95edb0

---

bleagh.  i'm digging into the guts of [how react thinks](https://reactjs.org/docs/state-and-lifecycle.html) right now.  and how to bend it into something to build a component-based game around.

---

example dev scenarios we're thinking about targeting:

- fully static scene of primitives and gltf models
- animated by object translation (a object moves through space)
- interactive scene with a click event handler
- skeletal animation scene
- video playback scene
- starter game framework
- experimental multi-user scene

so, in theory, we'll have all seven sample scenes up and documented on github when our sdk launches.  looks like i've got a ton of work ahead of me, eh?
