# Shark Attack
#### _Live Dangerously_

Tired of running boring terminal commands from the safety of dry land? Spice up your day with the pervasive danger of a shark attack.

## 1. Demo

`plain` mode, for those who like to keep it simple. VT100 compatible.

![Plain Mode Demo](https://raw.githubusercontent.com/cirla/sharkattack/master/demo/plain.gif)

State of the art `color` mode for VGA displays.

<img src="https://raw.githubusercontent.com/cirla/sharkattack/master/demo/color.png" alt="Color Mode Demo" width="300px">

Terrifyingly realistic `curses` mode for the true thrillseeker.

![Curses Mode Demo](https://raw.githubusercontent.com/cirla/sharkattack/master/demo/curses.gif)

## 2. Installation
### 2.1 Prerequisites
* [Python](https://www.python.org/) 2
* Galeophobia of some degree

### 2.2 sharkattack
1. Put [sharkattack](https://raw.githubusercontent.com/cirla/sharkattack/master/bin/sharkattack) somewhere in your
   `$PATH`.
2. Put the `sharks` folder somewhere. `/var/lib/sharkattack` will do nicely.
3. Put [sharkattack.sh](https://raw.githubusercontent.com/cirla/sharkattack/master/sharkattack.sh) somewhere else. Source it in your `.bash_profile`.
4. Use `shark_alias` instead of boring old `alias` to add a little danger to your life.

```bash
. /path/to/sharkattack.sh
shark_alias ls 'ls -GFh' 2 # 2% chance of sharkattack
shark_alias ll 'ls -GFhAlp' 2
shark_alias cointoss "echo 'SAFE.'" 50 # 50% chance of sharkattack
```

## 3. Configuration
You can override the following env variables:
* `SHARK_ATTACK_DATA`: Where the important data (`sharks` folder) lives. **Default:** `/var/lib/sharkattack`
* `SHARK_ATTACK_MODE`: How realistic do you want your sharks? (`plain`, `color`, or `curses`) **Default:** `curses`

If you want to live **really** dangerously, why not combine Shark Attack with a healthy sprinkling of `shopt -s expand_aliases` in your production scripts? (*Warning:* this will almost certainly get you fired. [Hooray!](http://www.yellow5.com/pokey/archive/index86.html))

## 4. Cat Mode
Terrified of sharks? Obsessed with cats? Live luxuriously with sharkattack: Cat Mode!
* Follow the same configuration steps as above, but copy the very important `cats` folder into your data destination.
* Use `cat_alias` instead of boring old `shark_alias` to add a little cat action to your life.g

## 5. License
This software is distributed under the [MIT License](https://raw.githubusercontent.com/cirla/sharkattack/master/LICENSE).
