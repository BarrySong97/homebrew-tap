cask "grove" do
  version "0.2.9"
  sha256 "3ad6e6093f5d535d9f6513424bb90945abf331564842efb2635aa5be9fbc90de"

  url "https://github.com/BarrySong97/grove/releases/download/v#{version}/Grove_#{version}_universal.dmg",
      verified: "github.com/BarrySong97/grove/"
  name "Grove"
  desc "Menu-bar git worktree manager"
  homepage "https://github.com/BarrySong97/grove"

  # Grove updates itself in-app via the Tauri updater.
  auto_updates true
  depends_on macos: :ventura

  app "Grove.app"

  zap trash: [
    "~/Library/Application Support/com.4real.grove",
    "~/Library/Caches/com.4real.grove",
    "~/Library/Preferences/com.4real.grove.plist",
    "~/Library/Saved Application State/com.4real.grove.savedState",
  ]
end
