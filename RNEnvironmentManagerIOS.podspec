  
require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNEnvironmentManagerIOS"
  s.version      = package["version"]
  s.summary      = package["description"]

  s.homepage     = "https://github.com/debitoor/react-native-env"

  s.license      = "MIT"
  s.author      = "Joe Ferraro"
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/debitoor/react-native-env.git" }
  s.source_files  = "RNEnvironmentManagerIOS/*.{h,m}"

  s.dependency 'React'
end
