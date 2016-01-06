Pod::Spec.new do |s|
  s.name              = "APIService-WeChatSDK"
  s.version           = "1.6.2"
  s.summary           = "WeChat SDK for iOS."
  s.license           = 'MIT'
  s.homepage          = "https://github.com/APIService/WeChatSDK"
  s.authors           = { "Elf Sundae" => "http://0x123.com", "WeChat" => "https://open.weixin.qq.com" }
  s.source            = { :git => "https://github.com/APIService/WeChatSDK.git", :tag => s.version, :submodules => true }
  s.social_media_url  = "https://twitter.com/ElfSundae"

  s.platform          = :ios
  s.ios.deployment_target = "7.0"
  s.requires_arc      = true
  s.frameworks        = "SystemConfiguration", "CoreTelephony"
  s.libraries         = "z", "sqlite3.0", "c++"
  s.public_header_files = "WeChatSDK/*.h"
  s.source_files      = "WeChatSDK/*.h"
  s.vendored_libraries = "WeChatSDK/libWeChatSDK.a"
end
