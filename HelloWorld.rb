require "rubygems"
require "rack"


#class HelloWorld
#  def call(env)
#    puts env.each{|x| puts x.inspect}
#    [200, {"content-type" => "text/html"}, "Hello Rack"]
#  end
#end

#Rack::Handler::Thin.run HelloWorld.new, :Port => 9292


Rack::Handler::Thin.run Proc.new{|env| [200, {"content-type" => "text/html"}, "Hello Rack, I'm a Proc"]}, :Port => 9292