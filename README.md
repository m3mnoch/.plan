# an awesome .plan

#### if you're looking for my previous days, check the archives.

---

so, yesterday, when talking with the community on our discord development channel, one of the things i mentioned about my little [test ping-pong cannon](https://youtu.be/x_D9XmFi8GY):

> that's what i mean.  lots of players attribute smarts where game devs just hacked something simple in.

tetepey was postulating around the kind of ai i dropped on the little boxes.

truth?

it's just random.

```
  public determineNextMove(frameTime: number) {
    // we're just randomly moving.  someday, we
    // should think a bit about where to go.
    this.moveTarget.x = randomInclusiveInteger(
      GameConfig.playBoundary.x[0],
      GameConfig.playBoundary.x[1]
    );
    this.moveTarget.z = randomInclusiveInteger(
      GameConfig.playBoundary.z[0],
      GameConfig.playBoundary.z[1]
    );

    // how long do we squat before we move again?
    this.activateTime =
      frameTime +
      randomInclusiveInteger(
        GameConfig.shuffleTimes[0],
        GameConfig.shuffleTimes[1]
      );
  }
```

and, while we're on the subject of truth, here's jennifer scheurle's excellent gdc session on how game designers fake everyone out all the time:  
[https://www.gdcvault.com/play/1024959/Good-Game-Design-is-like](https://www.gdcvault.com/play/1024959/Good-Game-Design-is-like)

---

folks seem to be asking how to get in on "the beta" and what-have-you.  our process and docs are kinda tucked away right now.  soon, we'll be sending broader messaging out to the community on how to get started.

in the meantime, tho:

1) we're on discord in the #development channel. https://discord.gg/k5ydeZp

2) there's a cli to install for tools.
https://docs.decentraland.org/docs

3) we've got a javascript api to program against.
https://decentraland.github.io/cli/index.html

4) there's some sample code on github.
https://github.com/decentraland/sample-scenes

give me a holler if you want more details!

---

oooh.  i found something cool!

context:  i'm digging into the best way to handle a `tick()` in javascript.  right now, we're doing it with setInterval().  with a variable frame execution time, i suspect that's not the best choice for a smooth framerate.

i was toying with using a promise for our framerate tick (and to let the thread breath), but all the code examples everywhere are creating new promises each time.  at 60 promises a second, that sounds . . . uh . . . like the garbage collector will HATE us.

i found this test runner out at jsperf.com:  [https://jsperf.com/test002/32](https://jsperf.com/test002/32)

it's given me an idea on how to reuse a single promise to build a solid framerate ticker.

---

well, that didn't work.

damn javascript and it's heavy-weight-only options for thread yielding.

on the brightside, i learned a lot about the guts of the various javascript timer events.

oh, and it looks like, with that knowledge, i just recovered about 15 additional frames per second.  granted, that's anecdotal and i'm setting up more objective tests, but it looks good.

---

nah.  measuring it apples-to-apples, there was barely a notice in performance difference.  within the realm of statistical variance.

since that's the case, the simpler version wins!

meaning, i think i finally have the recommended way to implement a game loop on the platform.

