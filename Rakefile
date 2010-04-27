require 'rubygems'  
require 'rake'  
require 'echoe'  
  
Echoe.new('background', '0.1.0') do |p|  
  p.description     = "Ramdom background"  
  p.url             = "http://github.com/ecauli/background"  
  p.author          = "Eduardo Cauli"  
  p.email           = "ecauli@gmail.com"  
  p.ignore_pattern  = ["tmp/*", "script/*"]  
  p.development_dependencies = []  
end  
  
Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }  