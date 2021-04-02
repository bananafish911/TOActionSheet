Pod::Spec.new do |s|
  s.name     = 'ArrowWordsActionSheet'
  s.version  = '1.0.4'
  s.license  =  { :type => 'MIT', :file => 'LICENSE' }
  s.summary  = 'A modal prompt UI control, similar to UIActionSheet.'
  s.homepage = 'https://github.com/TimOliver/TOActionSheet'
  s.author   = 'Tim Oliver'
  s.source   = { :git => 'https://github.com/bananafish911/TOActionSheet.git', :branch => 'fork_customization' }
  s.platform = :ios, '7.0'

  s.source_files = 'TOActionSheet/**/*.{h,m}'
  s.resources = 'TOActionSheet/**/*.lproj'
  s.requires_arc = true
end



