#
#  Be sure to run `pod spec lint HelperKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "HelperKit"
  spec.version      = "1.0.7"
  spec.summary      = "A small library with iOS tools"

  spec.description  = <<-DESC
  This is a small library with iOS tools.
                   DESC

  spec.homepage     = "https://appcoda.com"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author    = "YuliaN"
  spec.platform  = :ios, "11.0"
  spec.source = { :git => "https://github.com/Jiliann143/helperkit.git", :tag => "#{spec.version}" }
  spec.source_files  = "Source/**/*.swift"
  spec.swift_version = "5.0"
  
end
