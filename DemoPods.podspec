#
# Be sure to run `pod lib lint DemoPods.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DemoPods'
  s.version          = '0.1.1'
  s.summary          = 'A short of DemoPods.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: 測試做一個私人的DemoPods 然後給別人pod.
                       DESC

  s.homepage         = 'https://github.com/tommyz/DemoPods'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tommyz' => 'tommyz1981@gmail.com' }
  s.source           = { :git => 'https://github.com/tommyz/DemoPods.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.requires_arc = true
  s.source_files = 'DemoPods/Classes/**/*'
#  s.static_framework = true
#  s.ios.vendored_frameworks = 'ios/DemoPods.framework'
  # s.resource_bundles = {
  #   'DemoPods' => ['DemoPods/Assets/*.png']
  # }
   s.resource_bundles = {
     'DemoPods' => ['DemoPods/Assets/*.xcassets']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.public_header_files = 'DemoPods/Classes/Public/*.h'
  s.frameworks = 'MobileCoreServices', 'SystemConfiguration', 'UIKit'
  s.dependency 'AFNetworking'
  s.dependency 'Masonry', '~> 1.1.0'
end
