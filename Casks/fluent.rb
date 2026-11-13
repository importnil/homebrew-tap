cask "fluent" do
  version "2.3.8"
  sha256 "19beb333388c0b96dd23922b549181987c23bf75b51ce1737b1d39f4026e4eec"

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
