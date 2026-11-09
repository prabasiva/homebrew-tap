# prabasiva/homebrew-tap

Homebrew casks for software from [prabasiva.ai](https://prabasiva.ai/).

```bash
brew tap prabasiva/tap
```

## physics-equations

A macOS screen saver that typesets a hundred and sixty equations: ten fields
of physics and six sections of spacecraft engineering. Written in Rust.

```bash
brew install --cask prabasiva/tap/physics-equations
```

Then open **System Settings > Screen Saver**, scroll to **Other**, and choose
**Physics Equations**. Click **Options...** to configure which sections it
draws from, the seconds per equation, the size, the colour scheme, the
transition, and which labels to show.

Ten fields of physics: Classical Mechanics, Electromagnetism, Thermodynamics
and Statistical Mechanics, Special Relativity, General Relativity, Quantum
Mechanics, Quantum Field Theory, Particle Physics, Nuclear Physics, and
Astrophysics and Cosmology.

Six engineering sections: Theory of Communication, Spacecraft Thermal
Engineering, Spacecraft Dynamics, Celestial Mechanics, Spacecraft Mechanics,
and Spacecraft Electromagnetics. Every equation in these carries a footnote
explaining each symbol, with units and the constants worth knowing.

Requires macOS 11 or newer. The bundle is universal, so it runs on both Apple
silicon and Intel.

### Upgrading and removing

```bash
brew upgrade --cask physics-equations
brew uninstall --cask physics-equations          # keeps your settings
brew uninstall --cask --zap physics-equations    # removes them too
```

If the screen saver was already selected, macOS keeps the previous copy loaded
in its host process. Run `killall legacyScreenSaver` for a new version to take
effect without logging out.

## Why the downloads are attached to this repository

The screen saver's source repository is private. Homebrew downloads release
assets anonymously, so the signed and notarised artifacts are published as
releases here, where `brew` can reach them.
