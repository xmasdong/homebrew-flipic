cask "flipic-lens" do
  version "1.0.63"
  sha256 "04880752c78d4eb121e73089f377d621f9d8a69867117c79a63dbc0f0d5f2881"

  url "https://github.com/xmasdong/flipic/releases/download/v#{version}/Flipic.dmg"
  name "Flipic Lens"
  desc "Photo viewer and culling tool for photographers"
  homepage "https://flipic.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Flipic Lens.app"

  zap trash: [
    "~/Library/Application Support/Flipic",
    "~/Library/Caches/com.xmasdong.photoview",
    "~/Library/Caches/Flipic",
    "~/Library/Preferences/com.xmasdong.photoview.plist",
  ]
end
