# an awesome .plan

#### if you're looking for my previous days, check the archives.

---

omg!  agus hooked me up with a badass framework to bootstrap all my content!  that dude is so smart and he just devours any little game dev anecdotes i can produce.

_AND_, he's a great "chris interpreter" in that he can explain in rigid, technical terms all of my hand-waving, squishy thoughts.

love that guy.

---

oh, and speaking of my non-standard communication methods, guess who gets to write a blog post for the main decentraland site?  and guess who asked "can i do it in my own voice?"

HA!  ERIC SAID YES!!

so, coming soon to a decentraland blog near you, _chris thoughts!_

---

lots of meetings today around product and partners.  about driving our company objectives through the rest of the year.

man, i know from the outside, it seems like we're moving at a glacial pace, but i promise -- we're not.  this is breakneck speed folks.  it just feels slow because the project is so large in scope.  even after we've cut back the scope and focused more heavily on priorities.  come to find out, launching a decentralized virtual world has a TON of dependencies.

dependencies that _must_ be done right the first time because they're going to forge all the precidents down the road.  vocabulary, best practices, directory structures -- all kinds of seemingly innocuous things.

---

so, carl asked:

> Question: what are the pros and cons of  
> 1. Constructing the entire scene as one gltf with many models in it and having just one a-model entity in a scene,  
> vs.  
> 2. Having multiple a-model entities in the markup, representing smaller portions of a scene.  (Like one a-model per tree or structural component?)

many of the answers fall, really, on the same sides of the fence that most similar questions about tight-coupling in software vs. loose-coupling.

pro of #1:  you have a single, smooth pipeline to get your art into the world.  straight from your 3d software to your parcel.

con of #1:  the opportunity to use the decentraland scripting sdk are pretty limited.  your scene will basically be static.  and, in the future, if you wanted to add interactivity to it, chopping it up is painstaking and blows up your export pipeline.

pro of #2:  you can interact with the different parts through scripting, giving each piece its own behavior.  it adds flexibility to your scene, enabling rich animation and interactivity.

con of #2:  it's a lot of work to build, integrate, and manage all of the pieces.

---

hrm.  i just remembered one of the popular parts of the professional services program i ran at disney:  _chris's office hours_.

basically, i scheduled an open conference line once a week for an hour, free-form, anyone could jump in and ask questions about what part of their game they were struggling with or strategies they were thinking about.  it ended up being really collaborative and other teams were able to provide as much help as i was.

but i got to take all the credit!  woot!

heh.

seriously tho, it was really helpful and provoked a lot of good dialog around using the metaplace tools.  i suspect i'll want to do a similar thing with decentraland after we launch the sdk.
