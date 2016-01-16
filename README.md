A patch for Brutal Doom v20b by Sergeant_Mark_IV and contributors to make destroyable corpses from single-player work in multiplayer. Please report bugs via GitHub issues; pull requests are more than welcome, and don't forget to credit yourself in README.md and DECORATE.

## Why does this patch exist?
As you may know, Sergeant_Mark_IV intentionally hardcoded some of the mod's logic to work only in single-player to benefit server-side performance. Because of that, one of the most antisipated features of v20b — the return of destroyable corpses — doesn't work in multiplayer. I felt like the multiplayer experience lacked in comparison to single-player, and that it was unfair to those of us who could afford running v20b servers in all of its glory, so I decided to patch it.

## How to use it?
Download it either from [ModDB](http://www.moddb.com/mods/brutal-doom/addons/brutalv20b-m), or here (you'll have to compile it to a *.pk3 in that case, though), then run on your server after the original v20b. You'll encounter a lot of warnings in the console from Zandronum — it's alright, ignore them.

The patch is quick and dirty, but it works. I spent quite some time exploring, trying to find a better way of doing it, but in the end the best solution was to meticulously override everything, because it simply didn't work otherwise: classes with `+CLIENTSIDEONLY` flag, classes that inherited from them, every single occurance of `A_SpawnItem()` and `A_CustomMissile()` that spawned instances of those classes — it was just too much work for a questionable benefit, considering the fact that Sergeant_Mark_IV already said he was planning to fix it himself for the next release.

The goal was to create a lightweight add-on, so that people could still use the original v20b file they already downloaded in the past, and immediately get the patch from Wadseeker upon connecting to a server that supported the feature; that goal was achieved, so I don't think it matters at all how the patch was implemented.

## How to compile?
1. Clone the repository or download the latest release as a *.zip file;
2. open [CLI](https://en.wikipedia.org/wiki/Command-line_interface) in the directory where `compile.bat` file is located;
3. run `compile.bat src` command inside of a CLI to get a `brutalv20b-m-v*.pk3` that you can run with Zandronum.

## Contributors
Many thanks to communities from Zandronum and ZDoom forums for pointing in the right direction.
