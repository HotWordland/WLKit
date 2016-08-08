#
# Be sure to run `pod lib lint WLKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "WLKit"
  s.version          = "0.3.2"
  s.summary          = "Embed once to Quick Develop(一次集成 快速开发)"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "WL框架 - 包含 布局 网络请求 等一些常用扩展类 ... 不断更新 让项目一次集成常用框架 快速开发."

  s.homepage         = "https://github.com/HotWordland/WLKit"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "巫龙" => "454763196@qq.com" }
  s.source           = { :git => "https://github.com/HotWordland/WLKit.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'WLKit' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'JSONModel'
  s.dependency 'AFNetworking', '~> 3.0'
  s.dependency 'YYKit'

  s.library = 'sqlite3'
end
