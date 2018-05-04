# an awesome .plan

#### if you're looking for my previous days, check the archives.

---

i may have discovered a bug in our entity rendering system.  gotta work up an isolated test case around it.

yay for exercising the platform!

---

my blog post seems to be getting the good kind of traction.  that's cool.  i was worried about some of the negative connections some people have with games and loot crates.

like i mentioned to a person on reddit, if you think about it, mob stands for "mobile object" and is basically a name for a walking loot crate.

---

was fielding some questions about large textures and decentraland.  this is basically what i blurbed out as an answer:

> usually, the reason people want a single, giant texture is to build a huge texture atlas.  those work great for offline, single environment situations where you can preload the image.  for a streaming virtual world, with lots of crazy things possible on nearby parcels, it'll be a complete bogging down of memory and load times.
> 
> more about texture atlases here:  [https://www.gamasutra.com/view/feature/2530/practical_texture_atlases.php](https://www.gamasutra.com/view/feature/2530/practical_texture_atlases.php)
> 
> in fact, that article has a great quote:
>
> "The greatest problem with the described static texture atlases is that they don't easily combine with any kind of asset streaming, or on-demand loading with fine granularity."

also, today's lesson in textures for online, web-based games:

notice math says that a 512^2 texture is 1/64th the size of a massive 4096^2 texture.  4k textures are freaking ridiculous.  aka, 64mb uncompressed on the video card.  because i’m SURE you don't want to be hosting dxt/pvrtc/whatever compressed textures with their 4:1 compression ratios.  those would be crazy to download over a png or jpg.  like, at least an order of magnitude larger on disk.

so, basically, you want to look at the various tradeoffs between downloading file size and texture memory size when it comes to the network culling in an n-parcel radius.
