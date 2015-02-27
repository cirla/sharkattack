# Shark Attack
#### _Live Dangerously_

Tired of running boring commands? Spice up your day with the added danger of a potential shark attack.

## 1. Demo

`plain` mode

![Plain Mode Demo](https://raw.githubusercontent.com/cirla/sharkattack/master/demo/plain.gif)

`color` mode

<img src="https://raw.githubusercontent.com/cirla/sharkattack/master/demo/color.png" alt="Color Mode Demo" width="300px">

`curses` mode

![Curses Mode Demo](https://raw.githubusercontent.com/cirla/sharkattack/master/demo/curses.gif)

## 2. Installation
### 2.1 Prerequisites
* [python](https://www.python.org/)
* [bash](https://www.gnu.org/software/bash/) (probably)
* galeophobia of some degree

### 2.2 sharkattack
**TODO:** `make install`

1. Put [sharkattack](https://raw.githubusercontent.com/cirla/sharkattack/master/bin/sharkattack) somewhere in your
   `$PATH`.
2. Put the `sharks` folder somewhere (like `/var/lib/sharkattack`).
3. Put [sharkattack.sh](https://raw.githubusercontent.com/cirla/sharkattack/master/sharkattack.sh) somewhere and source
   it in your `.bash_profile`.
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

## 4. License
This software is distributed under the [MIT License](https://raw.githubusercontent.com/cirla/sharkattack/master/LICENSE).

## 5. Testimonials
Pull requests welcome.

