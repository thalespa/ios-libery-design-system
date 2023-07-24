Pod::Spec.new do |spec|
  spec.name         = 'libery'
  spec.version      = '1.0.0'
  spec.summary      = 'Uma descrição breve do seu design system.'
  spec.description  =  ''
  spec.homepage     = 'https://github.com/thalespa/ios-libery-design-system'
  spec.license      = 'MIT'
  spec.author       = { 'Seu Nome' => 'thalespinhoandrade@hotmail.com' }
  spec.platforms    = { :ios => '10.0' }
  spec.source       = { :git => 'git@github.com:thalespa/ios-libery-design-system.git', :tag => spec.version.to_s }

  spec.source_files  = 'libery/**/*.{h,m,swift}'
  
end

