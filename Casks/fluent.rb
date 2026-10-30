cask "fluent" do
  version "2.3.2"
  sha256 "02a869c79ca4cc648dd9a7a62c962b0bc8d0ffe76f71160bc30a8126953bbf1b"

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
