# Omarchy Eva-01 Theme

An *Evangelion* TV series inspired theme for [Omarchy](https://omarchy.org), the opinionated Arch Linux distribution by DHH. Experience what it's like to be part of the Third Impact.

## Preview

![preview image 1](https://i.imgur.com/nFbxOPZ.png)
![preview image 2](https://i.imgur.com/mzEXOLA.png)


## Installation

To install the theme, follow the [official manual](https://learn.omacom.io/2/the-omarchy-manual/90/extra-themes) or run the command:

```bash
omarchy-theme-install https://github.com/Ludurn/omarchy-eva01-theme.git
```

## Logo Configuration

To install custom logos for the screensaver and the "About" window, run:

```bash
./install-logo.sh
```

To apply the NERV logo on Waybar, open your Waybar configuration file and change the font in:

```json
"format": "<span font='omarchy'>\ue900</span>",

```
to:

```json
"format": "<span font='nerv'>\ue900</span>",
```

To remove the logos, run:

```bash
./remove-logo.sh

```
> **Note:** Some changes may require reboot to take effect.

## Usage

Once installed, press <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Super</kbd>+<kbd>Space</kbd>, select **Eva01** or check the [official manual](https://learn.omacom.io/2/the-omarchy-manual/52/themes)
