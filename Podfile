# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'MedlabMovieIOSInterview' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for MedlabMovieIOSInterview

pod 'RxSwift', '~> 3.0.0.alpha.1'
    pod 'RxCocoa', '~> 3.0.0.alpha.1'
    pod 'Alamofire'
    pod 'SwiftyJSON', git: 'https://github.com/BaiduHiDeviOS/SwiftyJSON.git', branch: 'swift3'
    pod 'SDWebImage'
    pod 'RxDataSources', '~> 1.0.0-beta.2'
    pod 'DateTools'

end
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
            config.build_settings['MACOSX_DEPLOYMENT_TARGET'] = '10.10'
        end
    end
end

