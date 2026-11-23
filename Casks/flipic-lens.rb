cask "flipic-lens" do
  version "1.0.61"
  sha256 "5ea77a3b6f185ab20d8e330bb527d8f36f24074038daab51618592d0271e16c1"

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
