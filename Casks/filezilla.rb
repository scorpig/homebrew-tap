cask "filezilla" do
  version "3.67.1"
  sha256 "e6cf011347d76d0e228cf0ff73c94b317f51775e33bbee76276303cf3ce60b34"

  url "https://download.filezilla-project.org/client/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  name "FileZilla"
  homepage "https://filezilla-project.org/"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :high_sierra"

  app "FileZilla.app"

  zap trash: [
    "~/.config/filezilla",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.filezilla.sfl*",
    "~/Library/Preferences/de.filezilla.plist",
    "~/Library/Saved Application State/de.filezilla.savedState",
  ]
end
