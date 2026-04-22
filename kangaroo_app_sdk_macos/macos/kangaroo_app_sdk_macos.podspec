#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint kangaroo_app_sdk_macos.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'kangaroo_app_sdk_macos'
  s.version          = '0.0.1'
  s.summary          = 'Kangaroo App SDK Flutter plugin macOS module.'
  s.description      = <<-DESC
Kangaroo App SDK Flutter plugin macOS module.
                       DESC
  s.homepage         = 'https://kangaroorewards.com/'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Kangaroo Rewards' => 'support@kangaroorewards.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'FlutterMacOS'
  s.platform = :osx, '10.15'

  s.preserve_paths = 'KangarooAppSdkCustomer.xcframework/**/*'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework KangarooAppSdkCustomer' }
  s.vendored_frameworks = 'KangarooAppSdkCustomer.xcframework'

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
