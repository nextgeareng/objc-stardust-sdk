#
# Be sure to run `pod lib lint StardustClientSdk.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "StardustClientSdk"
    s.version          = "0.9.6.10"

    s.summary          = "Stardust API"
    s.description      = <<-DESC
                         Stardust is the supporting API for the ProAssist app
                         DESC

    s.platform     = :ios, '9.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'

    s.homepage     = "https://github.com/swagger-api/swagger-codegen"
    s.license      = "Proprietary"
    s.source       = { :git => "https://github.com/swagger-api/swagger-codegen.git", :tag => "#{s.version}" }
    s.author       = { "Next Gear Solutions, Inc" => "support@nextgearsolutions.com" }

    s.source_files = 'StardustClientSdk/**/*.{m,h}'
    s.public_header_files = 'StardustClientSdk/**/*.h'


    s.dependency 'AFNetworking', '~> 3'
    s.dependency 'JSONModel', '~> 1.2'
    s.dependency 'ISO8601', '~> 0.6'
end

