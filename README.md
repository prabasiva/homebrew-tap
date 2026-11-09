# prabasiva/homebrew-tap

Homebrew casks for software from [prabasiva.ai](https://prabasiva.ai/).

## physics-equations

A macOS screen saver that typesets a hundred and sixty equations: ten fields
of physics and six sections of spacecraft engineering. Written in Rust.

```bash
brew install --cask prabasiva/tap/physics-equations
```

That one line is enough: it taps this repository and installs the cask.
Homebrew 6 and newer requires third-party taps to be trusted, and installing
by the fully qualified name grants trust to this one cask and nothing else.

Then open **System Settings > Screen Saver**, scroll to **Other**, and choose
**Physics Equations**. Click **Options...** to configure which sections it
draws from, the seconds per equation, the size, the colour scheme, the
transition, and which labels to show.

### What it shows

Ten fields of physics: Classical Mechanics, Electromagnetism, Thermodynamics
and Statistical Mechanics, Special Relativity, General Relativity, Quantum
Mechanics, Quantum Field Theory, Particle Physics, Nuclear Physics, and
Astrophysics and Cosmology.

Six engineering sections: Theory of Communication, Spacecraft Thermal
Engineering, Spacecraft Dynamics, Celestial Mechanics, Spacecraft Mechanics,
and Spacecraft Electromagnetics. Every equation in these carries a footnote
explaining each symbol, with units and the constants worth knowing: the solar
constant, Earth's J2, a typical factor of safety, the Boltzmann constant.

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

### Using the short name

To refer to the cask without the `prabasiva/tap/` prefix, trust it once:

```bash
brew trust --cask prabasiva/tap/physics-equations
brew install --cask physics-equations
```

`brew trust prabasiva/tap` would trust this whole repository, including
anything added to it later. Trusting the single cask is the narrower and
better choice.

## Why the downloads are attached to this repository

The screen saver's source repository is private. Homebrew downloads release
assets anonymously, so the signed and notarised artifacts are published as
releases here, where `brew` can reach them.
