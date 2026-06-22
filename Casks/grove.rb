cask "grove" do
  version "0.2.1"
  sha256 "0c382795a51445e70a6fc80575c8cf702815a37e4641a379d9f6c4d71a468fd6"

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
