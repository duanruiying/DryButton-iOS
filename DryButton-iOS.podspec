#
# Be sure to run `pod lib lint DryButton-iOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
# 提交仓库:
# pod spec lint DryButton-iOS.podspec --allow-warnings
# pod trunk push DryButton-iOS.podspec --allow-warnings
#

Pod::Spec.new do |s|
  
  # Git
  s.name        = 'DryButton-iOS'
  s.version     = '0.0.1'
  s.summary     = 'DryButton-iOS'
  s.homepage    = 'https://github.com/duanruiying/DryButton-iOS'
  s.license     = { :type => 'MIT', :file => 'LICENSE' }
  s.author      = { 'duanruiying' => '2237840768@qq.com' }
  s.source      = { :git => 'https://github.com/duanruiying/DryButton-iOS.git', :tag => s.version.to_s }
  s.description = <<-DESC
  TODO: 简单UIButton封装.
  DESC
  
  # User
  s.swift_version         = '5.0'
  s.ios.deployment_target = '10.0'
  s.requires_arc          = true
  s.user_target_xcconfig  = {'OTHER_LDFLAGS' => ['-w']}
  
  # Pod
  #s.static_framework      = true
  s.pod_target_xcconfig   = {'OTHER_LDFLAGS' => ['-w']}
  
  # Code
  s.source_files          = 'DryButton-iOS/Classes/Code/**/*'
  #s.public_header_files   = 'DryButton-iOS/Classes/Code/Public/**/*.h'
  
  # System
  #s.libraries  = ''
  s.frameworks = 'UIKit', 'Foundation'
  
  # ThirdParty
  #s.vendored_libraries  = ''
  #s.vendored_frameworks = ''
  #s.dependency 'Alamofire', '5.0.0-beta.6'
  
end
