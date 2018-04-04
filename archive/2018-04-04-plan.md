# an awesome .plan

going through my list of stuff i accomplished this past week for a project update.

at first, i felt like i didn't get much done.  dude.  duuuuuude. looking back at my notes, and the amount of stuff i've built feels like i crammed about a month into a week.  srsly, time-dilation is happening.

my list:

- based on a large team tech review, developed a plan for a game starter kit.
- built out a "product fit" spreadsheet which is leading to a blog post.
- built a bunch of game shims to wrap the core api.  these aren't things we want to necessarily build into the platform since there will be MANY non-game scenes out there.
- recreated the "color-rotating cube moves in a square" scene, but as a snap-on ai component you can attach to any object.
- designed a simple game-like experience -- cannon popping a cannonball at some autonomous, roaming targets limited to a specific play space.
- got the experience finished off but for the cannonball animation.
- wrote some management shell scripts for this badass .plan thing!  complete with tweeting it out when i rotate!

---

oh, hey.  i was talking a bit about the fast, squared distance check i'm using for speedy collition checking in this scripting game starter kit.  here's blob of code i just wrote to handle it:

```
private checkFastCollision(targetPosition:any, cannonballPosition:any):boolean {
    // using squared distance for SPEED!
    // handle x,y plane
    let dd1:number = Math.pow(targetPosition.x - cannonballPosition.x, 2) + Math.pow(targetPosition.y - cannonballPosition.y, 2);
    if (dd1 > this.approximateCollisionRadius) return false;

    // handle x,z plane
    let dd2:number = Math.pow(targetPosition.x - cannonballPosition.x, 2) + Math.pow(targetPosition.z - cannonballPosition.z, 2);
    if (dd2 > this.approximateCollisionRadius) return false;

    return true;
}
```

---

goodness.  it's hard to transition from `programming brain` to `strategy brain`.  i'll have to find a way to deal with that if there's going to be so much muxing.

maybe block off my entire calendar for a coding day or something.

---

omfg.  finally fixed a wicked bug i've been working on all day.  deep in some framework code i'd written, i was only meaning to set the `y` value, but accidentally ended up setting `y=[value]`, and `x=null`, and `z=null` instead.

cut to me:  "where the hell are my location values going?!?!?"

---

wow.  now that i got to feature-complete state with the game starter kit, i just pulled the new sdk version.  it's soooooooooo cool.  lots more performance.  lots more features.  all kinds of asks i wanted are included.

it's **awesome**.

now, i just have to refactor the beejebus out of the game starter kit.  heh.

_TO THE CODEZ!!_

