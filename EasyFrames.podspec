Pod::Spec.new do |s|

  s.name         = "EasyFrames"
  s.version      = "1.0"
  s.summary      = "EasyFrames contains view helper categories which would ease out modifying view frames."

  s.homepage     = "http://www.appsify.org"
  s.license      = {:type => 'PRIVATE USE', :file => 'LICENSE.md' }
  s.author       = { "Appsify Support" => "support@appsify.org" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "git@bitbucket.org:appsifylimited/moneysage-service-for-ios.git", :branch => "master"}

  s.source_files  = "EasyFrames/**/*.{h,m}"
  s.public_header_files = "EasyFrames/**/*.{h}"

  s.requires_arc = true

end
