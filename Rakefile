require 'rubygems'  
require 'rake'  
require 'echoe'  
  
Echoe.new('banner_module', '0.1.0') do |p|  
  p.description     = "Ramdom banners"  
  p.url             = "http://github.com/ecauli/banner_module"  
  p.author          = "Eduardo Cauli"  
  p.email           = "ecauli@gmail.com"  
  p.ignore_pattern  = ["tmp/*", "script/*"]  
  p.development_dependencies = []  
end  
  
Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }  