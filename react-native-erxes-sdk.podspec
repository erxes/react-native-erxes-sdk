require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-erxes-sdk"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-erxes-sdk
                   DESC
  s.homepage     = "https://github.com/github_account/react-native-erxes-sdk"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Your Name" => "yourname@email.com" }
  s.platforms    = { :ios => "11.0" }
  s.source       = { :git => "https://github.com/github_account/react-native-erxes-sdk.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.requires_arc = true
  s.swift_version = "4.2"

  # s.static_framework = true
  s.dependency "React"
  s.dependency "ErxesSDK", "~> 0.20.4"
  # ...
  # s.dependency "..."
end

