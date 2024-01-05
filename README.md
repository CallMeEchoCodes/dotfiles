# Echo's Dotfiles
> 🏠 There's no place like ~/

[![License](https://img.shields.io/github/license/CallMeEchoCodes/dotfiles)](https://github.com/CallMeEchoCodes/dotfiles/blob/master/LICENSE)
[![PRs welcome](https://img.shields.io/badge/PRs-welcome-ff69b4.svg)](https://github.com/CallMeEchoCodes/dotfiles/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22)

## 🔧 Installing
### Dependencies
### Required
**DISCLAIMER:** I made these dotfiles over the course of a few months. I probably forgot something that is required at some point. Please make an issue if that is the case.
| Name                                                                   | Description                                                                                   | Where/why is it needed?                |
| ---------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | -------------------------------------- |
| [dossier](https://github.com/CallMeEchoCodes/dossier)                  | A lightweight dotfile bootstrapper!                                                           | Installs dotfiles (and maybe more soon)|
| [Hyprland](https://github.com/hyprwm/Hyprland)                         | A highly customizable dynamic tiling Wayland compositor that doesn't sacrifice on its looks.  | Window Manager/Compositor              |
| [Inter Font](https://github.com/rsms/inter)                            | A typeface carefully crafted & designed for computer screens                                  | System Font                            |
| [eww](https://github.com/elkowar/eww)                                  | A standalone widget system made in Rust that allows you to implement your own, custom widgets.| Top Bar                                |
| [socat](http://www.dest-unreach.org/socat)                             | Multipurpose relay (SOcket CAT)                                                               | Used in the EWW Workspaces script      |
| [rofi](https://github.com/davatorium/rofi)                             | A window switcher, Application launcher and dmenu replacement.                                | App launcher                           |
| [dunst](https://dunst-project.org)                                     | A lightweight replacement for the notification daemons provided by most desktop environments. | Notification Daemon                    |
| [swaybg](https://github.com/swaywm/swaybg)                             | A wallpaper utility for Wayland compositors.                                                  | Wallpaper Daemon                       |
| [pipewire](https://pipewire.org)                                       | A project that aims to greatly improve handling of audio and video under Linux.               | Audio (replaces pulseaudio)            |
| [pipewire-pulse](https://pipewire.org)                                 | A relatively small server that converts the PulseAudio native protocol to PipeWire protocol.  | Fully replace pulseaudio with pipewire |
| [wireplumber](https://gitlab.freedesktop.org/pipewire/wireplumber)     | Session / policy manager implementation for PipeWire                                          | Fix a ton of audio and video stuff     |

### Optional
| Name                                                                   | Description                                                                                   | Where/why is it needed?                |
| ---------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | -------------------------------------- |
| [WezTerm](https://wezfurlong.org/wezterm/)                             | A powerful cross-platform terminal emulator and multiplexer                                   | Terminal Emulator                      |
| [XDPH](https://github.com/hyprwm/xdg-desktop-portal-hyprland)          | A typeface carefully crafted & designed for computer screens                                  | Fixes screensharing                    |
| [fish](https://fishshell.com/)                                         | A smart and user-friendly command line shell for Linux, macOS, and the rest of the family.    | Shell                                  |
| [fisher](https://github.com/jorgebucaran/fisher)                       | A plugin manager for Fish                                                                     | Fish plugins                           |
| [Starship](https://starship.rs)                                        | The minimal, blazing-fast, and infinitely customizable prompt for any shell!                  | Shell prompt                           |
| [slurp](https://github.com/emersion/slurp)                             | Select a region in a Wayland compositor                                                       | Screenshot script (1/3)                |
| [grim](https://sr.ht/~emersion/grim/)                                  | Grab images from a Wayland compositor.                                                        | Screenshot script (2/3)                |
| [hyprpicker](https://github.com/hyprwm/hyprpicker)                     | A wlroots-compatible Wayland color picker that does not suck.                                 | Colorpicker and Screenshot script (3/3)|
| [swaylock](https://github.com/swaywm/swaylock)                         | A screen locking utility for Wayland compositors.                                             | Screen lock                            |
| [swayidle](https://github.com/swaywm/swayidle)                         | Idle management daemon for Wayland                                                            | Auto screen lock                       |

### Installation
1. Install all required dependencies
2. Clone this repo into `~/.dotfiles`
```bash
git clone https://github.com/CallMeEchoCodes/dotfiles ~/.dotfiles
```
3. Delete or move any existing configuration files you might have
4. Install the dotfiles
```bash
cd ~/.dotfiles
dossier install
```
5. Edit the settings <br/>
I tried not to hardcode personal stuff but it was kinda required in places. I'll note those here:
* `hyprland/settings.conf` contains monitor config and personal settings (explained in comments)
* `eww/scripts/workspaces` contains more monitor config
* `fish/config.fish` currently contains some stuff that requires my personal sysfetch. I'll move that to `personal.fish` soon.
* `fontconfig/fonts.conf` contains fonts to change
* `rofi/theme.rasi` contains another font to change
* `wezterm/wezterm.lua` guess what? more fonts.
I think thats all of them but I might have missed some and I would recommend just going through everything to tweak it to your preferences. If you find any hardcoded stuff specific to my system make an issue.
6. Run `dbus-run-session Hyprland` from a TTY to open Hyprland!

## Mappings
`MOD1` = SUPER
`MOD2` = SHIFT

* `MOD1` + `1-9` = Change workspace
* `MOD1` + `MOD2` + `1-9` = Move focused window to another workspace
* `MOD1` + `Q` = Close focused window
* `MOD1` + `F` = Fullscreen focused window
* `MOD1` + `V` = Toggle the focused window between floating and not floating
* `MOD1` + `Hold LMB` + `Drag` = Move window
* `MOD1` + `Hold RMB` + `Drag` = Resize window
* `MOD1` + `ENTER` = Open WezTerm
* `MOD1` + `R` = Open rofi
* `MOD1` + `MOD2` + `M` = Exit Hyprland
* `MOD1` + `MOD2` + `S` = Start screenshot (clipping tool)
* `MOD1` + `MOD2` + `C` = Start hyprpicker
* `MOD1` + `MOD2` + `L` = Lock

## Screenshots
<img src="https://raw.githubusercontent.com/CallMeEchoCodes/dotfiles/main/assets/singlewindow.png" />
<img src="https://raw.githubusercontent.com/CallMeEchoCodes/dotfiles/main/assets/multiwindow.png" />
