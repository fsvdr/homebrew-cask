cask "kubernetic" do
  version "2.12.0"
  sha256 "fc46760581d57ed0401a2d6273edaaa55fd9c97451424c2373f61ed29c50ba25"

  # kubernetic.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://kubernetic.s3.amazonaws.com/Kubernetic-#{version}.dmg"
  appcast "https://kubernetic.s3.amazonaws.com/latest-mac.yml"
  name "Kubernetic"
  homepage "https://kubernetic.com/"

  app "Kubernetic.app"

  uninstall signal: [
    ["TERM", "com.kubernetic.desktop.helper"],
    ["TERM", "com.kubernetic.desktop"],
  ]

  zap trash: [
    "~/.kubernetic",
    "~/Library/Application Support/Kubernetic",
    "~/Library/Logs/Kubernetic",
    "~/Library/Preferences/com.kubernetic.desktop.*",
    "~/Library/Saved Application State/com.kubernetic.desktop.*",
  ]
end
