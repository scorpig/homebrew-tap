cask "filezilla" do
  version "3.62.2"
  sha256 "75a683af3338cc7ade56ddf865049c02f985c786b48bbd7a8616466c5cc3e6a6"

  url "https://download.filezilla-project.org/client/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  appcast "https://filezilla-project.org/versions.php?type=client"
  name "FileZilla"
  homepage "https://filezilla-project.org/"

  depends_on macos: ">= :high_sierra"

  app "FileZilla.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.filezilla.sfl*",
    "~/Library/Saved Application State/de.filezilla.savedState",
    "~/Library/Preferences/de.filezilla.plist",
    "~/.config/filezilla",
  ]
end
