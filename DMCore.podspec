Pod::Spec.new do |s|
  s.name             = "DMCore"
  s.version          = "0.1.0"
  s.summary          = "A collection of classes and categories to make development simpler"
  s.description      = <<-DESC
						A collection of classes and categories to make development simpler.
						Instead of having to remember the best practice to shuffle
						an array, you can now call `[myArray dm_Shuffle]`. Want
						the MD5 of a string? `[myString dm_MD5Hash]`
                       DESC
  s.homepage         = "https://github.com/Vel0x/DMCore"
  s.license          = 'MIT'
  s.author           = { "Vel0x" => "DaleMyers19@gmail.com" }
  s.source           = { :git => "https://github.com/Vel0x/DMCore.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/Vel0x'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.public_header_files = 'Pod/Classes/**/*.h'

  s.frameworks = 'UIKit', 'Foundation'
end
