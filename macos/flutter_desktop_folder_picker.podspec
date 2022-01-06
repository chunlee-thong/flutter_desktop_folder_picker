#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_desktop_folder_picker.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_desktop_folder_picker'
  s.version          = '0.0.1'
  s.summary          = 'Flutter folde picker plugin'
  s.description      = <<-DESC
  A Flutter plugin for picking folder in Desktop (Window and MacOS).
                       DESC
  s.homepage         = 'http://chunleethong.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Chunlee Thong' => 'hi@chunleethong.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
