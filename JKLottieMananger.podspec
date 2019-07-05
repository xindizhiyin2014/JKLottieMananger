#
# Be sure to run `pod lib lint JKLottieMananger.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JKLottieMananger'
  s.version          = '0.1.2'
  s.summary          = 'this is a tool to help developer to use lottie in oc project.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
this is a tool to help developer to use lottie in oc project. it will update with the need
                       DESC

  s.homepage         = 'https://github.com/xindizhiyin2014/JKLottieMananger'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xindizhiyin2014' => '929097264@qq.com' }
  s.source           = { :git => 'https://github.com/xindizhiyin2014/JKLottieMananger.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_version = '5'

  s.source_files = 'JKLottieMananger/Classes/**/*'
  
  # s.resource_bundles = {
  #   'JKLottieMananger' => ['JKLottieMananger/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'lottie-ios'
end
