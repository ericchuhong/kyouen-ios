platform :ios, '8.0'
use_frameworks!

target 'TumeKyouen' do
  pod 'Alamofire', '~> 4.0'
  pod 'OAuthCore', '~> 0.0.1'
  pod 'SVProgressHUD', '~> 2.1'
  pod 'Firebase'
  pod 'Firebase/AdMob'
  pod 'TwitterKit'
end

post_install do |installer|
    require 'fileutils'
    FileUtils.cp_r('Pods/Target Support Files/Pods-Tumekyouen/Pods-TumeKyouen-acknowledgements.plist', 'TumeKyouen/Resources/Settings.bundle/Acknowledgements.plist', :remove_destination => true)
end
