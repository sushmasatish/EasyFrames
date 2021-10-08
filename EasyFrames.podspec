Pod::Spec.new do |s|

  s.name         = "EasyFrames"
  s.version      = "1.2"
  s.summary      = "EasyFrames contains view helper categories which would ease out modifying view frames."

  s.homepage     = "http://www.appsify.org"
  s.license      = {:type => 'PRIVATE USE', :file => 'LICENSE.md' }
  s.author       = { "Sushma Satish" => "sushmasatish@gmail.com" }

  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/sushmasatish/EasyFrames.git", :branch => "master", :tag => "1.2"}

  s.source_files  = "**/*.{h,m}"
  s.public_header_files = "**/*.{h}"

  s.requires_arc = true

end
