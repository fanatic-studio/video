

Pod::Spec.new do |s|



  s.name         = "ecoVideo"
  s.version      = "1.0.0"
  s.summary      = "eco plugin."
  s.description  = <<-DESC
                    eco plugin.
                   DESC

  s.homepage     = "https://eco.app"
  s.license      = "MIT"
  s.author             = { "kjeco" => "kjeco@kjeco.com" }
  s.source =  { :path => '.' }
  s.source_files  = "ecoVideo", "**/**/*.{h,m,mm,c}"
  s.exclude_files = "Source/Exclude"
  s.resources = 'ecoVideo/resources/**','ecoVideo/SPVideoPlayer/*.bundle'
  s.platform     = :ios, "8.0"
  s.requires_arc = true
  s.frameworks = 'SystemConfiguration', 'CoreTelephony', 'UIKit', 'Foundation', 'CFNetwork','Security'
  s.libraries = "z", "sqlite3.0"

  s.dependency 'WeexSDK'
  s.dependency 'eco'
  s.dependency 'WeexPluginLoader', '~> 0.0.1.9.1'
  s.dependency 'Masonry'

end
