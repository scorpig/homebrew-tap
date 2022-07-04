cask "easy-connect" do
  version "7.6.7.4"
  sha256 "d2c113c6b4786887cc3a4e5f0e493aa96af448840914db6cf899c51501090bd0"

  url "http://download.sangfor.com.cn/download/product/sslvpn/pkg/mac_#{version.tr(".", "")[0, 3]}/EasyConnect_#{version.tr(".", "_")}.dmg"
  name "EasyConnect"
  homepage "https://sangfor.com/"

  depends_on macos: ">= :el_capitan"

  pkg "Install EasyConnect.pkg"

  uninstall quit:    "com.sangfor.EasyConnect",
            script:  {
              executable: "/Applications/EasyConnect.app/Contents/Resources/shell/uninstall_easyconnect.sh",
              sudo:       true,
            },
            pkgutil: "com.sangfor.EasyConnect"

  zap trash: [
    "~/Library/Application Support/EasyConnect",
    "~/Library/Saved Application State/com.sangfor.Easyconnect.savedState",
    "~/Library/Preferences/com.sangfor.Easyconnect.plist",
    "~/Library/Preferences/com.sangfor.Easyconnect.helper.plist",
    "~/Library/Preferences/com.sangfor.CSClient.plist",
    "~/Library/Logs/EasyConnect",
    "/Library/Logs/Sangfor/EasyConnect",
  ]
end
