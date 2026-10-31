cask "fluent" do
  version "2.3.3"
  sha256 "ff5882871d2c21ba582efc6fdba44bbb11736a697ac71853d026c90a2124280f"

  url "https://fluentmac.app/download/Fluent-#{version}.dmg"
  name "Fluent"
  desc "AI assistant that works in every app"
  homepage "https://fluentmac.app/"

  livecheck do
    url "https://fluentmac.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Fluent.app"
end
