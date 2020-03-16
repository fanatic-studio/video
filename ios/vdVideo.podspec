

Pod::Spec.new do |s|



  s.name         = "vdVideo"
  s.version      = "1.0.0"
  s.summary      = "vd plugin."
  s.description  = <<-DESC
                    vd plugin.
                   DESC

  s.homepage     = "https://vd.app"
  s.license      = "MIT"
  s.author             = { "ViewDesign" => "viewdesign@gmail.com" }
  s.source =  { :path => '.' }
  s.source_files  = "vdVideo", "**/**/*.{h,m,mm,c}"
  s.exclude_files = "Source/Exclude"
  s.resources = 'vdVideo/resources/**','vdVideo/SPVideoPlayer/*.bundle'
  s.platform     = :ios, "8.0"
  s.requires_arc = true
  s.frameworks = 'SystemConfiguration', 'CoreTelephony', 'UIKit', 'Foundation', 'CFNetwork','Security'
  s.libraries = "z", "sqlite3.0"

  s.dependency 'WeexSDK'
  s.dependency 'vd'
  s.dependency 'WeexPluginLoader', '~> 0.0.1.9.1'
  s.dependency 'Masonry'

end
