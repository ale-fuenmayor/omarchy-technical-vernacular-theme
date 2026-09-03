# Technical Vernacular

An [Omarchy](https://omarchy.org/) theme. Ink on paper, one vermillion accent.

Derived from the AF-BG-001 personal brand system (rev 1.0), built on Omarchy's
stock "White" theme. It is a **light** theme: warm paper ground, near-black ink
that is never pure black, and a single accent used only for emphasis.

![preview](preview.png)

## Palette

| Role | Hex | Notes |
|------|-----|-------|
| Paper | `#F2ECE0` | terminal ground |
| Paper-alt | `#E8E1D2` | secondary surface |
| Ink | `#1A1712` | body text, active borders |
| Ink-faint | `#8F887B` | muted text, inactive borders |
| Accent | `#B8471C` | vermillion — emphasis only |
| Stamp | `#A03A18` | error text (5.73:1 on paper) |

ANSI slots map to the brand guide's data-viz extension (SERIES 01–06). Every
slot measures at least 4.5:1 against Paper.

## Design rules encoded here

- **Rule 02, earn every mark.** A line either separates two things or it should
  not be there. Window gaps are 2 in / 6 out.
- **Focus is value, not hue.** Active vs. inactive borders differ by Ink vs.
  Ink-faint, so the distinction survives greyscale and never becomes a second
  accent colour.
- **One accent, one job.** Vermillion marks the focused lock field and nothing
  else on that surface.

## Install

```bash
omarchy theme install https://github.com/ale-fuenmayor/omarchy-technical-vernacular-theme
omarchy theme set technical-vernacular
```

Update later with:

```bash
omarchy theme update
```

## Files

| File | Purpose |
|------|---------|
| `colors.toml` | core palette consumed by Omarchy's theme engine |
| `hyprland.lua` | window chrome — border colours, gaps, groupbar |
| `shell.lock.toml` | lock screen surface |
| `btop.theme`, `chromium.theme`, `icons.theme` | app theming |
| `backgrounds/` | paper, blueprint and survey wallpapers |

## Gotcha

Keep comments in `colors.toml` on their **own lines**. A trailing `#` comment
after a colour value (`accent = "#B8471C"  # vermillion`) breaks downstream
parsers that read this file — Omacalc renders a black window rather than
failing loudly. `shell.lock.toml` is read by a different parser and tolerates
trailing comments, which is why it uses them.
