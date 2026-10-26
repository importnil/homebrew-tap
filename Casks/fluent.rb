cask "fluent" do
  version "2.3.1"
  sha256 "c539a76a6c3d8ccd294c5cb4ada0b06beb1964872059b8395179029dd34a8aa9"

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
