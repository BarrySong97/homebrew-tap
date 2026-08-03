cask "grove" do
  version "0.2.8"
  sha256 "624d6586f6e7773b8ea9b930a936f56967fc2c233c4a29e269b0a8e64449ab30"

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
