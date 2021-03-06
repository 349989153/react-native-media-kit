package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package["description"]
  s.license      = package['license']
  s.homepage     = package['homepage']
  s.requires_arc = true
  s.authors      = package['author']
  s.source       = { :git => "https://github.com/kpReactComponent/react-native-media-kit.git", :tag => "v#{s.version}"}
  s.source_files = 'ios/react-native-media-kit/**/*.{h,m}'
  s.platform     = :ios, "9.0"
  s.dependency 'React-Core'
end
