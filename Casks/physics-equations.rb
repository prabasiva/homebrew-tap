cask "physics-equations" do
  version "1.0.0"
  sha256 "104030a016c37bc2bc4516ce6b9027cbeeb29c643f6ee5edce7118d79c594804"

  # The artifacts live on the tap's own releases rather than the project's,
  # because the project repository is private and Homebrew downloads
  # anonymously. `verified` is what tells the audit that this github.com path
  # is a trusted source for software whose homepage is on another domain.
  url "https://github.com/prabasiva/homebrew-tap/releases/download/v#{version}/PhysicsEquations-#{version}.zip",
      verified: "github.com/prabasiva/homebrew-tap/"
  name "Physics Equations"
  desc "Screen saver typesetting 160 physics and spacecraft engineering equations"
  homepage "https://prabasiva.ai/"

  livecheck do
    url "https://github.com/prabasiva/homebrew-tap/releases/latest"
    strategy :github_latest
  end

  # Homebrew's style cop requires this on a macOS-only cask. A minimum
  # version is not expressed here: Homebrew already supports only macOS
  # newer than the LSMinimumSystemVersion of 11.0 in Info.plist.
  depends_on :macos

  # Moves the bundle into ~/Library/Screen Savers, which needs no privileges
  # and affects only the account that ran brew.
  screen_saver "PhysicsEquations.saver"

  # Settings are written per-host by ScreenSaverDefaults, so the ByHost plist
  # carries a hardware UUID in its name.
  zap trash: [
    "~/Library/Preferences/ByHost/io.varaha.screensaver.PhysicsEquations.*.plist",
    "~/Library/Preferences/io.varaha.screensaver.PhysicsEquations.plist",
  ]

  caveats <<~EOS
    Choose the screen saver in System Settings > Screen Saver > Other >
    Physics Equations, then click Options to configure it.

    If it was already selected, macOS keeps the previous copy loaded. Run
    `killall legacyScreenSaver` for the new version to take effect.
  EOS
end
