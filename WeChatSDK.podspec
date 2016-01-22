Pod::Spec.new do |s|
  s.name              = "WeChatSDK"
  s.version           = "1.6.2"
  s.summary           = "WeChat SDK for iOS."
  s.license           = 'MIT'
  s.homepage          = "https://github.com/APIService/WeChatSDK"
  s.authors           = {"WeChat" => "https://open.weixin.qq.com" }
  s.source            = { :git => "https://github.com/bessonzhao/WeChatSDK.git", :tag => s.version, :submodules => true }

  s.platform          = :ios
  s.ios.deployment_target = "7.0"
  s.requires_arc      = true
  s.frameworks        = "SystemConfiguration", "CoreTelephony"
  s.libraries         = "z", "sqlite3.0", "c++"
  s.public_header_files = "WeChatSDK/*.h"
  s.source_files      = "WeChatSDK/*.h"
  s.vendored_libraries = "WeChatSDK/libWeChatSDK.a"
end
