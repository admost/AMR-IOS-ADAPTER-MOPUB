Pod::Spec.new do |s|
  s.name             = 'AMRAdapterMopub'
  s.version          = '5.18.0.0'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited.
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Mopub adapter for AMR SDK.'
  s.description      = 'AMR Mopub adapter allows publishers to mediate Mopub banner, native, interstitial and video ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-MOPUB.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '10.0'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  s.vendored_libraries = 'AMRAdapterMopub/Libs/libAMRAdapterMopub.a'
  s.dependency 'AMRSDK', '~> 1.4.81'
  s.dependency 'mopub-ios-sdk/Core', '5.18.0'
  s.dependency 'mopub-ios-sdk/NativeAds', '5.18.0'
end
