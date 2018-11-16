Pod::Spec.new do |s|
  
  s.name         = "XTBase"
  s.version      = "0.0.2"
  s.summary      = "base of XTBase"
  s.description  = "iOS rapid utils from XTlib."                   
  s.homepage     = "https://github.com/Akateason/XTBase"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "teason" => "akateason@hotmail.com" }  
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/Akateason/XTlib.git", :tag => s.version }


  s.source_files = "XTBase/**/**/**/*.{h,m}","XTBase/**/*.{h,m}","XTBase/**/**/*.{h,m}"
  s.public_header_files = "XTBase/**/**/**/*.h","XTBase/**/**/*.h","XTBase/**/*.h"
  
  s.dependency "ReactiveObjC"
  s.dependency "Masonry"
  s.dependency "SDWebImage"
  s.dependency "SSZipArchive"
  s.dependency "MJRefresh"
  s.dependency "Valet", "2.4.2"
  s.dependency "RxWebViewController"
  s.dependency "CYLTableViewPlaceHolder"
  s.dependency "FTPopOverMenu"
  s.dependency "YYModel"
  s.dependency "SVProgressHUD"
  s.dependency "UITableView+FDTemplateLayoutCell"

end
