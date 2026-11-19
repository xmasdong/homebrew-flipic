cask "flipic-lens" do
  version "1.0.56"
  sha256 "af18b266c970271eb5ab7b0f882e970a1a8577d63115652f92c163ba0d2b2502"

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
