require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package["name"]
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                    react-native-qq-lib
                   DESC
  s.homepage     = package["homepage"]
  # brief license entry:
  s.license      = package["license"]
  s.authors      = package["author"]
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/LiuIos/react-native-qq-lib.git", :tag => "#{s.version}" }
  
  # s.resource = "ios/TYRZResource.bundle"

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true
  
  s.vendored_frameworks = [
    'ios/**/*.framework'
  ]

  s.dependency "React"
  # ...
  # s.dependency "..."
end

