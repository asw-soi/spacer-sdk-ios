
Pod::Spec.new do |spec|
  spec.name         = "SOILockerSDK"
  spec.version      = "0.1.1"
  spec.summary      = "Provides operation using spacers."
  spec.homepage     = "https://github.com/asw-soi/spacer-sdk-ios"
  spec.license      = "MIT"
  spec.author       = "takehito soui"
  spec.platform     = :ios, "10.2"
  spec.source       = { :git => "https://github.com/asw-soi/spacer-sdk-ios.git", :tag => "#{spec.version}" }
  spec.dependency 'Alamofire', '~> 5.4.1'
  spec.source_files  = "Sources/**/*.{swift}"
  spec.swift_version = "5.0"
end
