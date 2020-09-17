#
# Be sure to run `pod lib lint ApplicationEntry.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ApplicationEntry'
  s.version          = '1.0.3'
  s.summary          = '在系统UITabBarController和UINavigationController基础上，搭建常见的NavigationBar/TabBar样式'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    TODO: 在系统UITabBarController和UINavigationController基础上，搭建常见的NavigationBar/TabBar样式。
                       DESC

  s.homepage         = 'https://github.com/Kalanhall'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kalanhall@163.com' => 'wujm002@galanz.com' }
  s.source           = { :git => 'https://github.com/Kalanhall/ApplicationEntry.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'ApplicationEntry/Classes/**/*'
  
  s.subspec 'Category' do |ss|
    ss.source_files = 'ApplicationEntry/Classes/Category/*'
  end

  s.subspec 'FlashyTabBar' do |ss|
    ss.source_files = 'ApplicationEntry/Classes/FlashyTabBar/*'
  end
  
  # s.resource_bundles = {
  #   'ApplicationEntry' => ['ApplicationEntry/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
