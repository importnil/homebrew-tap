cask "fluent" do
  version "2.3.5"
  sha256 "d3c344ea35db99022ce948f09bf8a8cadfbee88add3cb14fab934d53a66088f4"

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
