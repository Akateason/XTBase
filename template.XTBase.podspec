Pod::Spec.new do |s|
  s.name             = 'XTBase'
  s.version          = '0.1.0'
  s.summary          = 'A short description of XTBase.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
  s.homepage         = 'https://github.com/ripperhe/XTBase'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ripper' => 'ripperhe@qq.com' }
  s.source           = { :git => 'https://github.com/ripperhe/XTBase.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'XTBase/Classes/**/*'

  # s.resource_bundles = {
  #   'XTBase' => ['XTBase/Assets/*.png']
  # }

  #s.subspec 'XTBase' do | sm |
      #sm.source_files = 'XTBase/ZYSubModule/**/*'
      #sm.dependency 'AFNetworking', '~> 2.3'
  #end

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
