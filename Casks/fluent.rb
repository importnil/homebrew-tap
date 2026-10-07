cask "fluent" do
  version "2.1.1"
  sha256 "c3fb8b7b9d29cb2fee86ed774d8ce1723da292733798fda5176a0a42a1acf65d"

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
