cask "fluent" do
  version "2.3.2"
  sha256 "a213badfe772994e0bbae7c71078c513d4fe32b8f6e0410d6c7b720f096e9a85"

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
