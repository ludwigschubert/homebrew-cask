cask 'coconutbattery' do
  if MacOS.release <= :tiger
    version '2.6.6'
    sha256 '8d235b237e42754ceda26af2babc160fd23f890d0fe6d7780b86a8e9c6effe42'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
  elsif MacOS.release <= :snow_leopard
    version '2.8'
    sha256 'fcfc81214ff26afff9f5c6c7cdc455b23ac898b6918f864b641a9e31526692d4'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version}.zip"
  else
    version '3.3'
    sha256 'fcd0639ac855791f2bdabdbcffa530a255144eb67cc386faabc9872f06ccc158'
    url "https://www.coconut-flavour.com/downloads/coconutBattery_#{version.dots_to_underscores}.zip"
    appcast 'http://updates.coconut-flavour.com/coconutBatteryIntel.xml',
            checkpoint: 'b98bb720b1ec131325b7ecb062524dfe5a25e1f5bf779b78105f169ee42130bb'
  end

  name 'coconutBattery'
  homepage 'https://www.coconut-flavour.com/coconutbattery/'
  license :bsd

  app 'coconutBattery.app'

  zap delete: [
                '~/Library/Application Support/coconutBattery',
                '~/Library/Caches/com.coconut-flavour.coconutBattery',
                '~/Library/Preferences/com.coconut-flavour.coconutBattery.plist',
                '~/Library/Saved Application State/com.coconut-flavour.coconutBattery.savedState',
              ]
end
