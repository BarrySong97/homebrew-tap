cask "grove" do
  version "0.2.4"
  sha256 "301df30ddc4fb83e4f8c49272d0bfd69528ea6a01418c196e14dec896d17d2dc"

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
