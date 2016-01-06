## WeChat SDK for iOS


        pod 'APIService-WeChatSDK'

+ https://open.weixin.qq.com

  [iOS接入指南](https://open.weixin.qq.com/cgi-bin/showdocument?action=dir_list&t=resource/res_list&verify=1&id=1417694084&token=&lang=zh_CN)

+ iOS 9系统策略更新，限制了http协议的访问，此外应用需要在“Info.plist”中将要使用的URL Schemes列为白名单，才可正常检查其他应用是否安装。
受此影响，当你的应用在iOS 9中需要使用微信SDK的相关能力（分享、收藏、支付、登录等）时，需要在“Info.plist”里增加如下代码：


        <key>LSApplicationQueriesSchemes</key>
        <array>
            <string>weixin</string>
        </array>
        <key>NSAppTransportSecurity</key>
        <dict>
            <key>NSAllowsArbitraryLoads</key>
            <true/>
        </dict>

+ SDK1.5 新增

        +(BOOL)sendAuthReq:(SendAuthReq *)req viewController:(UIViewController *)viewController delegate:(id<WXApiDelegate>)delegate;

  支持未安装微信情况下Auth,具体见WXApi.h接口描述
